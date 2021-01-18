class('FunBotServer')
require('__shared/config')
local BotManager = require('botManager')
local TraceManager = require('traceManager')
local BotSpawner = require('botSpawner')
local WeaponModification = require('__shared/weaponModification')
local FunBotUIServer = require('UIServer')

function FunBotServer:__init()
    Events:Subscribe('Level:Loaded', self, self._onLevelLoaded)
    Events:Subscribe('Player:Chat', self, self._onChat)
    Events:Subscribe('Extension:Unloading', self, self._onExtensionUnload)
    Events:Subscribe('Extension:Loaded', self, self._onExtensionLoaded)
end

function FunBotServer:_onExtensionUnload()
    BotManager:destroyAllBots()
    TraceManager:onUnload()
end

function FunBotServer:_onExtensionLoaded()
    local fullLevelPath = SharedUtils:GetLevelName()
    if fullLevelPath ~= nil then
        fullLevelPath = fullLevelPath:split('/')
        local level = fullLevelPath[#fullLevelPath]
        local gameMode = SharedUtils:GetCurrentGameMode()
        print(level.."_"..gameMode.." reloaded")
        if level ~= nil and gameMode~= nil then
            self:_onLevelLoaded(level, gameMode)
        end
    end
end

function FunBotServer:_onLevelLoaded(levelName, gameMode)
    self:_modifyWeapons(Config.botAimWorsening)
    print("level "..levelName.." loaded...")
    TraceManager:onLevelLoaded(levelName, gameMode)
    BotSpawner:onLevelLoaded()
end

function FunBotServer:_modifyWeapons(botAimWorsening)
    NetEvents:BroadcastLocal('ModifyAllWeapons', botAimWorsening)
    WeaponModification:ModifyAllWeapons(botAimWorsening)
end

function FunBotServer:_onChat(player, recipientMask, message)

    if player == nil or Config.disableChatCommands == true then
        return
    end

    local parts = string.lower(message):split(' ')

    if parts[1] == '!row' then
        if tonumber(parts[2]) == nil then
            return
        end
        local length = tonumber(parts[2])
        local spacing = tonumber(parts[3]) or 2
        BotSpawner:spawnBotRow(player, length, spacing)

    elseif parts[1] == '!tower' then
        if tonumber(parts[2]) == nil then
            return
        end
        local height = tonumber(parts[2])
        BotSpawner:spawnBotTower(player, height)

    elseif parts[1] == '!grid' then
        if tonumber(parts[2]) == nil then
            return
        end
        local rows = tonumber(parts[2])
        local columns = tonumber(parts[3]) or tonumber(parts[2])
        local spacing = tonumber(parts[4]) or 2
        BotSpawner:spawnBotGrid(player, rows, columns, spacing)

    -- static mode commands
    elseif parts[1] == '!mimic' then
        BotManager:setStaticOption(player, "mode", 3)

    elseif parts[1] == '!mirror' then
        BotManager:setStaticOption(player, "mode", 4)

    elseif parts[1] == '!static' then
        BotManager:setStaticOption(player, "mode", 0)

    -- moving bots spawning
    elseif parts[1] == '!spawnline' then
        if tonumber(parts[2]) == nil then
            return
        end
        local amount = tonumber(parts[2])
        local spacing = tonumber(parts[3]) or 2
        BotSpawner:spawnLineBots(player, amount, spacing)

    elseif parts[1] == '!spawnway' then
        if tonumber(parts[2]) == nil then
            return
        end
        local activeWayIndex = tonumber(parts[3]) or 1
        if activeWayIndex > Config.maxTraceNumber or activeWayIndex < 1 then
            activeWayIndex = 1
        end
        local amount = tonumber(parts[2])
        BotSpawner:spawnWayBots(player, amount, false, activeWayIndex)

    elseif parts[1] == "!spawnbots" then
        if tonumber(parts[2]) == nil then
            return
        end
        local amount = tonumber(parts[2])
        BotSpawner:spawnWayBots(player, amount, true)

    -- respawn moving bots
    elseif parts[1] == '!respawn' then
        local respawning = true
        if tonumber(parts[2]) == 0 then
            respawning = false
        end
        Config.respawnWayBots = respawning
        BotManager:setOptionForAll("respawn", respawning)

    elseif parts[1] == '!shoot' then
        local shooting = true
        if tonumber(parts[2]) == 0 then
            shooting = false
        end
        BotManager:setOptionForAll("shoot", shooting)

    -- spawn team settings
    elseif parts[1] == '!spawnsameteam' then
        Config.spawnInSameTeam = true
        if tonumber(parts[2]) == 0 then
            Config.spawnInSameTeam = false
        end

    elseif parts[1] == '!setbotkit' then
        local kitNumber = tonumber(parts[2]) or 1
        if kitNumber <= 4 and kitNumber >= 0 then
            Config.botKit = Kits[kitNumber]
        end

    elseif parts[1] == '!setbotcolor' then
        local botColor = tonumber(parts[2]) or 1
        if botColor <= #Colors and botColor >= 0 then
            Config.botColor = Colors[botColor]
        end

    elseif parts[1] == '!setaim' then
        Config.botAimWorsening = tonumber(parts[2]) or 0.5
        --self:_modifyWeapons(Config.botAimWorsening)  --causes lag. Instead restart round
        print("difficulty set to "..Config.botAimWorsening..". Please restart round or level to take effect")
    elseif parts[1] == '!bullet' then
        Config.bulletDamageBot = tonumber(parts[2]) or 1
    elseif parts[1] == '!sniper' then
        Config.bulletDamageBotSniper = tonumber(parts[2]) or 1
    elseif parts[1] == '!melee' then
        Config.meleeDamageBot = tonumber(parts[2]) or 1
    elseif parts[1] == '!shootback' then
        if tonumber(parts[2]) == 0 then
            Config.shootBackIfHit = false
        else
            Config.shootBackIfHit = true
        end
    elseif parts[1] == '!attackmelee' then
        if tonumber(parts[2]) == 0 then
            Config.meleeAttackIfClose = false
        else
            Config.meleeAttackIfClose = true
        end

    -- reset everything
    elseif parts[1] == '!stopall' then
        BotManager:setOptionForAll("shoot", false)
        BotManager:setOptionForAll("respawning", false)
        BotManager:setOptionForAll("moveMode", 0)

    elseif parts[1] == '!stop' then
        BotManager:setOptionForPlayer(player, "shoot", false)
        BotManager:setOptionForPlayer(player, "respawning", false)
        BotManager:setOptionForPlayer(player, "moveMode", 0)

    elseif parts[1] == '!kickplayer' then
        BotManager:destroyPlayerBots(player)

    elseif parts[1] == '!kick' then
        local amount = tonumber(parts[2]) or 1
        BotManager:destroyAmount(amount)

    elseif parts[1] == '!kickteam' then
        local teamToKick = tonumber(parts[2]) or 1
        if teamToKick < 1 or teamToKick > 2 then
            return
        end
        local teamId = teamToKick == 1 and TeamId.Team1 or TeamId.Team2
        BotManager:destroyTeam(teamId)

    elseif parts[1] == '!kickall' then
        BotManager:destroyAllBots()

    elseif parts[1] == '!kill' then
        BotManager:killPlayerBots(player)

    elseif parts[1] == '!killall' then
        BotManager:killAll()

    -- waypoint stuff
    elseif parts[1] == '!trace' then
        local traceIndex = tonumber(parts[2]) or 0
        TraceManager:startTrace(player, traceIndex)

    elseif parts[1] == '!tracedone' then
        TraceManager:endTrace(player)

    elseif parts[1] == '!setpoint' then
        local traceIndex = tonumber(parts[2]) or 1
        TraceManager:setPoint(player, traceIndex)

    elseif parts[1] == '!cleartrace' then
        local traceIndex = tonumber(parts[2]) or 1
        TraceManager:clearTrace(traceIndex)

    elseif parts[1] == '!clearalltraces' then
		TraceManager:clearAllTraces()

    elseif parts[1] == '!printtrans' then
		print("!printtrans")
		ChatManager:Yell("!printtrans check server console", 2.5)
        print(player.soldier.worldTransform)
        print(player.soldier.worldTransform.trans.x)
        print(player.soldier.worldTransform.trans.y)
        print(player.soldier.worldTransform.trans.z)

    elseif parts[1] == '!savepaths' then
        TraceManager:savePaths()
    end
end


function string:split(sep)
    local sep, fields = sep or ":", {}
    local pattern = string.format("([^%s]+)", sep)
    self:gsub(pattern, function(c) fields[#fields + 1] = c end)
    return fields
end


-- Singleton.
if g_FunBotServer == nil then
	g_FunBotServer = FunBotServer()
end

return g_FunBotServer