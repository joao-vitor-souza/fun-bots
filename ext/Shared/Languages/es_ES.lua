local code = 'es_ES' -- Add/replace the xx_XX here with your language code (like de_DE, en_US, or other)!

--GENERAL
Language:add(code, "Bot Weapon", "Armas del Bot")
Language:add(code, "Select the weapon the bots use", "Selecciona las armas que los bots utilizarán")
Language:add(code, "Bot Kit", "Kit del Bot")
Language:add(code, "The Kit of the Bots", "Los Kits de los Bots")
Language:add(code, "Bot Color", "Color del Bot")
Language:add(code, "The Color of the Bots", "El Color de los Bots")
Language:add(code, "Zombie Mode", "Modo Zombie")
Language:add(code, "Zombie Bot Mode", "Modo de Bots Zombies")

--DIFFICULTY
Language:add(code, "Bot Aim Worsening", "Empeoramiento del Apuntado")
Language:add(code, "Make bots aim worse: for difficulty: 0 = no offset (hard), 1 or even greater = more sway (easy).",
	"Empeorar el Apuntado: Dificultades: 0 = Sin empeoramiento (Difícil), 1 ó un valor mayor = Mayor desvío (Fácil)")
Language:add(code, "Bot Aim Worsening of Snipers", "Empeoramiento del Apuntado de los Francotiradores")
Language:add(code, "See botAimWorsening, only for Sniper-rifles",
	"Véase Empeoramiento del Apuntado, solo para Rifles de Francotirador")
Language:add(code, "Bot Aim Worsening of Support", "Empeoramiento del Apuntado del Support")
Language:add(code, "See botAimWorsening, only for LMGs", "Véase Empeoramiento del Apuntado, solo para las LMGs")
Language:add(code, "Bot Worsening Skill", "Empeoramiento de las Habilidades de los Bots")
Language:add(code,
	"Variation of the skill of a single bot. the higher, the worse the bots can get compared to the original settings",
	"A más alto el valor, peor serán los bots en comparación al valor original")
Language:add(code, "Bot Sniper Worsening Skill", "Empeoramiento del Apuntado de los Bots Sniper")
Language:add(code, "See BotWorseningSkill - only for BOTs using sniper bolt-action rifles.",
	"Véase Empeoramiento del Apuntado, sólo afectará a los bots que utilicen rifles de francotirador")
Language:add(code, "Damage Factor Assault", "Valor del Daño del Assault")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor Carabine", "Valor del Daño de las Carabinas")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor LMG", "Valor del Daño de las LMG")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor PDW", "Valor del Daño de las PDW")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor Sniper", "Valor del Daño de los Sniper")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor Shotgun", "Valor del daño de las escopetas")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor Pistol", "Valor del daño de las pistolas")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")
Language:add(code, "Damage Factor Knife", "Valor del daño del cuchillo")
Language:add(code, "Original Damage from bots gets multiplied by this",
	"El daño que realicen los bots será multiplicado por esto")

--SPAWN
Language:add(code, "Spawn Mode", "Modo de Spawneo")
Language:add(code, "Mode the bots spawn with", "Modo en el que los bots spawnearan")
Language:add(code, "Team Switch Mode", "Modo de Cambio de Equipos")
Language:add(code, "Mode to switch the team", "Modo para Cambiar los Equipos")
Language:add(code, "Spawn Bots in all teams", "Spawnear Bots en todos los equipos")
Language:add(code, "Bots spawn in both teams", "Los Bots aparecerán en ambos equipos")
Language:add(code, "Start Number of Bots", "Número Inicial de Bots")
Language:add(code, "Bots for spawnmode", "Bots para el modo de Spawneo")
Language:add(code, "New Bots per Player", "Número de Bots añadido por Jugador")
Language:add(code, "Number to increase Bots by when new players join",
	"Valor utilizado para aumentar el número de bots cada vez que un nuevo jugador se une a la partida")
Language:add(code, "Factor Player Team Count", "Valor del Conteo de Jugadores por equipo")
Language:add(code, "Reduce playerteam in balanced_teams or fixed_number mode",
	"Reduce el valor de Jugadores por equipo en el balanceo de los equipos o el modo de ajuste en números")
Language:add(code, "Team of the Bots", "Equipos de los Bots")
Language:add(code, "Default bot team (0 = neutral / auto, 1 = US, 2 = RU) TeamId.Team2",
	"Equipos que seleccionarán los bots por defecto (0 = neutral / automático, 1 = US, 2 = RU")
Language:add(code, "New Loadout on Spawn", "Nuevos Kits de Armas al Spawnear")
Language:add(code, "Bots get a new kit and color, if they respawn",
	"Los Bots obtienen un nuevo Kit y color al reaparecer")
Language:add(code, "Max Assault Bots", "Número Máximo de Bots Assault")
Language:add(code, "Maximum number of Bots with Assault Kit. -1 = no limit",
	" número máximo de bots Assault permitidos. -1 = sin límites")
Language:add(code, "Max Engineer Bots", "Número Máximo de Bots Engineer")
Language:add(code, "Maximum number of Bots with Engineer Kit. -1 = no limit",
	"número máximo de Bots Engineers permitido. -1 = sin límites")
Language:add(code, "Max Support Bots", "Número Máximo de Bots Support")
Language:add(code, "Maximum number of Bots with Support Kit. -1 = no limit",
	"número máximo de Bots Support permitido. -1 = sin límites")
Language:add(code, "Max Recon Bots", "Número Máximo de Bots Recon")
Language:add(code, "Maximum number of Bots with Recon Kit. -1 = no limit",
	"número máximo de Bots Recon permitido. -1 = sin límites")
Language:add(code, "Additional Spawn Delay", "Demora de Spawneo")
Language:add(code, "Additional time a bot waits to respawn", "tiempo adicional que los bots esperan al reaparecer")
Language:add(code, "Bot Health at spawn", "Vida de los Bots al aparecer")
Language:add(code, "Max health of bot (default 100.0)", "vida máxima de los bots (por defecto 100.0)")

--SPAWNLIMITS
Language:add(code, "Max Bots Per Team (default)", "Número Máximo de Bots por equipo (por defecto)")
Language:add(code, "Max number of bots in one team, if no other mode fits",
	"número máximo de bots que aparecerán por equipo si no se ha seleccionado algún modo")
Language:add(code, "Max Bots Per Team (TDM)", "Número Máximo de Bots por equipo (TCT: EQUIPO)")
Language:add(code, "Max number of bots in one team for TDM", "número máximo de bots por equipo en TCT: EQUIPO")
Language:add(code, "Max Bots Per Team (TDM-CQ)", "Número Máximo de Bots por Equipo (TCT-CQ)")
Language:add(code, "Max number of bots in one team for TDM-CQ", "El número máximo de bots por equipo en TCT-CQ")
Language:add(code, "Max Bots Per Team (Squad-DM)", "Número Máximo de Bots por Equipo (TCT: PATRULLA)")
Language:add(code, "Max number of bots in one team for Squad-DM", "El número máximo de bots por equipo en TCT: PATRULLA")
Language:add(code, "Max Bots Per Team (CQ-Large)", "Número Máximo de Bots por Equipo (Conquista-G)")
Language:add(code, "Max number of bots in one team for CQ-Large", "El número máximo de bots por equipo en Conquista-G")
Language:add(code, "Max Bots Per Team (CQ-Small)", "Número Máximo de Bots por Equipo (Conquista-P)")
Language:add(code, "Max number of bots in one team for CQ-Small", "El número máximo de bots por equipo en Conquista-P")
Language:add(code, "Max Bots Per Team (CQ-Assault-Large)", "Número Máximo de Bots por Equipo (Asalto Conquista-G)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Large",
	"El número máximo de bots por equipo en Asalto Conquista-G")
Language:add(code, "Max Bots Per Team (CQ-Assault-Small)", "Número Máximo de Bots por Equipo (Asalto Conquista-P)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Small",
	"El número máximo de bots por equipo en Asalto Conquista-P")
Language:add(code, "Max Bots Per Team (Rush)", "Número Máximo de Bots por Equipo (Asalto)")
Language:add(code, "Max number of bots in one team for Rush", "El número máximo de bots por equipo en Asalto")
Language:add(code, "Max Bots Per Team (CTF)", "Número Máximo de Bots por Equipo (Captura la Bandera)")
Language:add(code, "Max number of bots in one team for CTF", "El número máximo de bots por equipo en Captura la Bandera")
Language:add(code, "Max Bots Per Team (Domination)", "Número Máximo de Bots por Equipo (Dominación)")
Language:add(code, "Max number of bots in one team for Domination",
	"El número máximo de bots por equipo en Dominación de Conquista")
Language:add(code, "Max Bots Per Team (Gunmaster)", "Número Máximo de Bots por Equipo (Maestro Armero)")
Language:add(code, "Max number of bots in one team for Gunmaster",
	"El número máximo de bots por equipo en Maestro Armero")
Language:add(code, "Max Bots Per Team (Scavenger)", "Número Máximo de Bots por Equipo (Carroñero)")
Language:add(code, "Max number of bots in one team for Scavenger", "El número máximo de bots por equipo en Carroñero")

--BEHAVIOUR
Language:add(code, "FOV of Bots", "Punto de Vista de los Bots")
Language:add(code, "Degrees of FOV of Bot", "Grados del Punto de Vista de los Bots")
Language:add(code, "FOV of Bots Verticle", "Punto de Vista del Verticle de los Bots")
Language:add(code, "Degrees of FOV of Bot in vertical direction",
	"Grados del Punto de Vista del Bot en la dirección del Verticle")
Language:add(code, "Meters before bots will start shooting at players",
	"Proximidad Máxima del Ataque de los Bots al Jugador")
Language:add(code, "Max Shoot-Distance No Sniper", "Distancia Máxima de ataque (No Snipers)")
Language:add(code, "Meters before bots (not sniper) will start shooting at players",
	"Distancia máxima en la cual los bots (excluyendo a los francotiradores) atacan a los jugadores")
Language:add(code, "Max Shoot-Distance Pistol", "Distancia Máxima de ataques con pistola")
Language:add(code, "The distance before a bot switches to pistol if his magazine is empty (Only in auto-weapon-mode)",
	"Solo en modo de arma automática, distancia en la cuál un bot cambiará a su pistola si se le acaba la munición")
Language:add(code, "Bot Attack Mode", "Modo de Ataque de los Bot")
Language:add(code, "Mode the Bots attack with. Random, Crouch or Stand",
	"Modos en los que los Bots atacan. Al azar, Agachados o De pié")
Language:add(code, "Shoot Back if Hit", "Disparar si se es Atacado")
Language:add(code, "Bot shoots back if hit", "Bot ataca si es atacado")
Language:add(code, "Bots Attack Bots", "Bots atacan a los Bots")
Language:add(code, "Bots attack bots from other team", "Bots atacan a los Bots del otro equipo")
Language:add(code, "Melee Attack If Close", "Ataques cuerpo a cuerpo (Cuchillo)")
Language:add(code, "Bot attacks with melee if close", "los Bots atacarán con el cuchillo al estar cerca")
Language:add(code, "Bots can kill themself", "Los Bots pueden Suicidarse")
Language:add(code, "Bot takes falldamage or explosion-damage from own frags",
	"los Bots tomarán daño de las caídas y/o daño de las explosiones de sus propias granadas")
Language:add(code, "Bots teleport them when stuck", "Bots se teletransportarán al atorarze")
Language:add(code, "Bot teleport to their target if they are stuck",
	"los Bots se teletransportarán al objetivo si se atoran")
Language:add(code, "Bots revive players", "Bots reviven a los jugadores")
Language:add(code, "Bots revive other players", "Los bots revivirán a los jugadores")
Language:add(code, "Bots throw grenades", "Bots lanzan granadas")
Language:add(code, "Bots deploy bags", "Bots sueltan maletines")
Language:add(code, "Bots deploy ammo and medkits", "Los bots soltarán maletines médicos o cajas de munición")
Language:add(code, "Deploy Cycle", "Ciclo de la Entrega")
Language:add(code, "Time between deployment of bots in seconds", "Tiempo en segundos entre cada entrega de los maletines")
Language:add(code, "Move Sidewards", "Moverse a los Lados")
Language:add(code, "Bots move sidewards", "Los Bots caminarán hacia los lados")
Language:add(code, "Max straight Cycle", "Máximo Ciclo en Línea Recta")
Language:add(code, "Max time bots move straight, before sidewards-movement (in sec)",
	"el tiempo máximo en el cual los bots caminarán en línea recta antes de tomar otras direcciones (en segundos)")
Language:add(code, "Max Side Cycle", "Máximo Ciclo a los Lados")
Language:add(code, "Max time bots move sidewards, before straight-movement (in sec)",
	"el tiempo máximo en el cual los bots se moverán de lado antes de cambiar de dirección (en segundos)")
Language:add(code, "Min Move Cycle", "Ciclo Mínimo de Movimiento")
Language:add(code, "Min time bots move sidewards or staight before switching (in sec)",
	"el tiempo mínimo en el cual los bots se mueven de una u otra manera antes de cambiar de dirección (en segundos)")

--VEHICLE
Language:add(code, "Use vehicles", "Usar vehículos")
Language:add(code, "Bots can use vehicles", "Los Bots utilizarán los vehículos")
Language:add(code, "FOV of Vehicles", "Punto de Vista (FOV) de los Vehículos")
Language:add(code, "Degrees of FOV of Non AA - Vehicles", "Grados del Campo de Visión (FOV) de los Vehículos-NON AA")
Language:add(code, "FOV of Vehicles Verticle", "Verticle del POV de los Vehículos")
Language:add(code, "FOV of Chopper Verticle", "FOV de la Verticle de los Helicópteros")
Language:add(code, "Degrees of pitch a chopper attacks", "Grados de inclinación en los cuales un helicóptero atacará")
Language:add(code, "FOV of AA-Vehicles", "FOV de los Vehículos AA")
Language:add(code, "Degrees of FOV of AA - Vehicles", "Grados de la FOV de los Vehículos AA")
Language:add(code, "FOV of AA-Vehicles Verticle", "FOV de la Verticle de los Vehículos AA")
Language:add(code, "Max Raycast Distance for Vehicles", "Distancia Máxima del Raycast para los Vehículos")
Language:add(code, "Meters bots in Vehicles start shooting at players",
	"distancia en la cuál los bots atacarán al jugador desde los vehículos")
Language:add(code, "Max Shoot-Distance No Anti Air", "Máxima Distancia de Disparo excluyendo a los Anti Aéreos")
Language:add(code, "Meters bots in vehicle (no Anti-Air) starts shooting at players",
	"metros en los cuales (excluyendo a los anti aéreos) un vehículo empezará a atacar a los jugadores")
Language:add(code, "Time a vehicle driver waits for passengers", "Tiempo de espera para pasajeros")
Language:add(code, "Seconds to wait for other passengers",
	"tiempo en segundos en los que un bot esperará por otros pasajeros")
Language:add(code, "Choppers Attack", "Ataque de Helicópteros")
Language:add(code, "If false choppers only attack without gunner on board",
	"si se desactiva está opción, los helicópteros dejarán de atacar directamente")
Language:add(code, "Activate Auto-AA", "Activar el Mod Auto-AA")
Language:add(code, "Enable Auto-AA by NyScorpy", "Activa el mod --Auto-AA-- creado por NyScorpY")
Language:add(code, "Max Distance Auto-AA", "Máxima Distancia del Mod Auto-AA")
Language:add(code, "Max Range of Stationary AA", "Rango Máximo de las Armas Estacionarias")

--WEAPONS
Language:add(code, "Random Weapon usage", "Uso al azar de las armas")
Language:add(code, "Use a random weapon out of the weaponset", "Usa un arma al azar del kit actual.")
Language:add(code, "Weapon Set Assault", "Kit de Armas del Assault")
Language:add(code, "Weaponset of Assault class. Custom uses the Shared/WeaponLists",
	"Kit de Armas del Assault. Personalizable através de Shared/WeaponLists")
Language:add(code, "Weapon Set Engineer", "Kit de Armas del Engineer")
Language:add(code, "Weaponset of Engineer class. Custom uses the Shared/WeaponLists",
	"Kit de Armas del Engineer. Personalizable através de Shared/WeaponLists")
Language:add(code, "Weapon Set Support", "Kit de Armas del Support")
Language:add(code, "Weaponset of Support class. Custom uses the Shared/WeaponLists",
	"Kit de Armas del Support. Personalizable através de Shared/WeaponLists")
Language:add(code, "Weapon Set Recon", "Kit de Armas del Recon")
Language:add(code, "Weaponset of Recon class. Custom uses the Shared/WeaponLists",
	"Kit de Armas del Recon. Personalizable através de Shared/WeaponLists")
Language:add(code, "Primary Weapon Assault", "Arma Primaria del Assault")
Language:add(code, "Primary weapon of Assault class, if random-weapon == false",
	"arma primaria de la clase assault, solo si está desactivada la opción de armas al azar")
Language:add(code, "Primary Weapon Engineer", "Arma Primaria del Engineer")
Language:add(code, "Primary weapon of Engineer class, if random-weapon == false",
	"arma primaria de la clase engineer, solo si está desactivada la opción de armas al azar")
Language:add(code, "Primary Weapon Support", "Arma Primaria del Support")
Language:add(code, "Primary weapon of Support class, if random-weapon == false",
	"arma primaria de la clase support, solo si está desactivada la opción de armas al azar")
Language:add(code, "Primary Weapon Recon", "Arma Primaria del Recon")
Language:add(code, "Primary weapon of Recon class, if random-weapon == false",
	"arma primaria de la clase recon, solo si está desactivada la opción de armas al azar")
Language:add(code, "Pistol of Bots", "Pistolas de los Bots")
Language:add(code, "Pistol of Bots, if random-weapon == false",
	"Pistolas utilizadas por los bots, solo si está desactivada la opción de armas al azar")
Language:add(code, "Knife of Bots", "Cuchillos de los Bots")
Language:add(code, "Knife of Bots, if random-weapon == false",
	"Cuchillos de los Bots, solo si está desactivada la opción de armas al azar")

--TRACE
Language:add(code, "Debug Trace Paths", "Depurar Trazos de Ruta")
Language:add(code, "Shows the trace line and search area from Commo Rose selection",
	"Muestra las líneas de trazado y áreas de búsqueda de la Selección Rosa Commo ")
Language:add(code, "Waypoint Range", "Rango de las Rutas")
Language:add(code, "Set how far away waypoints are visible (meters)",
	"Ajusta el rango de visibilidad de las rutas (metros)")
Language:add(code, "Draw Waypoint Lines", "Mostrar las Líneas de las Rutas")
Language:add(code, "Draw waypoint connection Lines", "Mostrar las Conexiones de las líneas de las Rutas")
Language:add(code, "Line Range", "Rango de las Líneas")
Language:add(code, "Set how far away waypoint lines are visible (meters)",
	"Ajusta el rango de visibilidad de las líneas de ruta (metros)")
Language:add(code, "Draw Waypoint IDs", "Mostrar las Identificaciones de Ruta")
Language:add(code, "Draw waypoint IDs", "Muestra las identificaciones de Rutas")
Language:add(code, "Text Range", "Rango del Texto")
Language:add(code, "Set how far away waypoint text is visible (meters)",
	"Ajusta el rango de visibilidad del texto en las rutas (metros)")
Language:add(code, "Draw Spawn Points", "Mostrar Puntos de Aparición/Spawneo")
Language:add(code, "Range of Spawnpoints", " Rango de los Puntos de Aparición")
Language:add(code, "Set how far away spawnpoints are visible (meters)",
	"Ajusta el rango de visibilidad de los puntos de Aparición (metros)")
Language:add(code, "Debug Selection Raytraces", "Depurar la Elección de Raytraces")
Language:add(code, "Trace Delta Points", "Trazar Puntos Delta")
Language:add(code, "Update interval of trace", "Actualizar el intervalo del trazo")
Language:add(code, "Nodes that are drawn per cycle", "Nodos que se muestran por ciclo")
Language:add(code, "Set how many nodes get drawn per cycle. Affects performance",
	"Ajusta cuántos nodos se muestran por ciclo. Afecta el rendimiento")

--ADVANCED
Language:add(code, "Distance for direct attack", "Distancia para un ataque directo")
Language:add(code, "Distance bots can hear you at", "Proximidad en la cual los bots pueden oírte")
Language:add(code, "Bot melee attack cool-down", "Tiempo de espera entre ataques cuerpo a cuerpo")
Language:add(code, "The time a bot waits before attacking with melee again",
	"el tiempo que un bot tiene que esperar antes de volver a atacar con un arma cuerpo a cuerpo")
Language:add(code, "Bots without sniper aim for head", "Los Bots sin rifles francotirador apuntan a la cabeza")
Language:add(code, "Bots without sniper aim for the head. More an experimental config",
	"los Bots sin rifle francotirador apuntarán a la cabeza (opción experimental)")
Language:add(code, "Bots with Sniper aim for head", "Bots con rifle francotirador apuntan a la cabeza")
Language:add(code, "Bots with sniper aim for the head. More an experimental config",
	"los Bots con rifle francotirador apuntarán a la cabeza (opción experimental)")
Language:add(code, "Bots with Support LMGs aim for head", "Los Bots support con LMG apuntan a la cabeza")
Language:add(code, "Bots with support LMGs aim for the head. More an experimental config",
	"los Bots support con lmg apuntarán a la cabeza (opción experimental)")
Language:add(code, "Jump while shooting", "Salto mientras se dispara")
Language:add(code, "Bots jump over obstacles while shooting if needed",
	"los Bots saltan sobre obstáculos al disparar si es necesario")
Language:add(code, "Jump while moving", "los bots saltan mientras se mueven")
Language:add(code, "Bots jump while moving. If false, only on obstacles!",
	"los Bots saltarán mientras se mueven. Si se desactiva, solo saltarán obstáculos!")
Language:add(code, "Overwrite speed mode", "Sobreescribir modo de velocidad")
Language:add(code, "0 = no overwrite. 1 = prone, 2 = crouch, 3 = walk, 4 = run",
	"0 = sin sobreescribir. 1 = tendido en el suelo, 2 = agachado, 3 = caminando, 4 corriendo")
Language:add(code, "Overwrite attack speed mode", "Sobreescribir modo de la velocidad de ataque")
Language:add(code, "Affects Aiming!!! 0 = no overwrite. 1 = prone, 2 = crouch (good aim), 3 = walk (good aim), 4 = run",
	"¡¡¡Afecta el apuntado!!! 0 = sin sobreescribir. 1 = tendido en el suelo, 2 = agachado (buena puntería), 3 = caminando (buena puntería), 4 = corriendo")
Language:add(code, "Speed facator", "Factor de la velocidad")
Language:add(code, "Reduces the movementspeed. 1 = normal, 0 = standing.",
	"reduce la velocidad del movimiento. 1 = normal, 0 = de pié")
Language:add(code, "Speed facator attack", "factor de la velocidad de ataque")
Language:add(code, "Reduces the movementspeed while attacking. 1 = normal, 0 = standing.",
	"reduce la velocidad de movimiento mientras se ataca. 1 = normal, 0 = de pié")
Language:add(code, "Use Random Names", "Usar Nombres al Azar")
Language:add(code, "Changes names of the bots on every new round. Experimental right now...",
	"cambia el nombre de los bots en cada round (opción experimental)")

--EXPERT
Language:add(code, "Bot first shot delay", "Retardo del primer disparo de los bots")
Language:add(code,
	"Delay for first shot. If too small, there will be great spread in first cycle because its not compensated yet.",
	"retarda el primer disparo de los bots. Si el valor introducido es muy pequeño el esparcimiento en cada ciclo será mayor debido a que este no es compensado en los jets")
Language:add(code, "Bot min time shoot at player", "Tiempo mínimo en el que los bots disparan al jugador")
Language:add(code,
	"The minimum time a bot shoots at one player for - recommended minimum 1.5, below this you will have issues.",
	"el tiempo mínimo que tardará un bot en dispararle al jugador - se recomienda tener un mínimo máximo de 1.5, si se disminuye más podría causarse errores")
Language:add(code, "Bot fire mode duration", "Duración del modo de fuego de los bots")
Language:add(code,
	"The minimum time a bot tries to shoot a player - recommended minimum 3.0, below this you will have issues.",
	"el tiempo mínimo en el que un bot intentará dispararle a un jugador - se recomienda el mínimo máximo en 3.0, un valor menor podría ocasionar problemas")
Language:add(code, "Maximum yaw per sec", "rotación máxima por segundo")
Language:add(code, "in Degrees. Rotaion-Movement per second.", "en Grados. Movimientos Rotativos por segundo")
Language:add(code, "Target distance waypoint", "distancia al objetivo de la ruta")
Language:add(code, "Distance the bots have to reach to continue with the next Waypoint",
	"distancia la cual los bots tiene que alcanzar para continuar con la siguiente ruta")
Language:add(code, "Keep one slot for players", "mantener un slot libre para los jugadores")
Language:add(code, "Always keep one slot for free new Players to join",
	"siempre mantener un slot libre para que los nuevos jugadores puedan unirse al servidor")
Language:add(code, "Distance to spawn", "distancia de spawneo")
Language:add(code, "Distance to spawn Bots away from players.", "que tan lejos se spawnearan los bots del jugador")
Language:add(code, "Height distance to spawn", "distancia vertical del spawneo")
Language:add(code, "Distance vertically, Bots should spawn away, if closer than distance.",
	"distancia vertical, los bots deberían aparecer más lejos si están cerca a esta distancia")
Language:add(code, "Distance to spawn reduction", "Reducción de la distancia del spawneo")
Language:add(code, "Reduce distance if not possible.", "Reduce la distancia si no se es posible.")
Language:add(code, "Max tries to spawn at distance", "máximos intentos de spawneo en la distancia")
Language:add(code, "Try this often to spawn a bot away from players",
	"intenta esta opción con frecuencia para spawnear bots lejos de los jugadores")
Language:add(code, "Attack way Bots", "Atacar a bots de rutas")
Language:add(code, "Bots on paths attack player", "Bots en las rutas atacan a los jugadores")
Language:add(code, "Respawn way Bots", "reaparecer bots en las rutas")
Language:add(code, "Bots on paths respawn if killed", "Bots en las rutas reaparecen si mueren")
Language:add(code, "Spawn-Mehtod", "métodos de spawneo")
Language:add(code, "Method the bots spawn with. Careful, not supported on most of the maps!!",
	"el método que los bots utilizan para spawnear. Usa esta opción con cuidado, no funciona en la mayoría de los mapas")

--OTHER
Language:add(code, "de_DE as sample (default is english, when language file doesnt exists)",
	"ejemplo: De_De (el lenguaje por defecto siempre será inglés si no existen otros archivos de lenguaje")
Language:add(code, "Disable UI", "desactivar UI/Menus")
Language:add(code, "If true, the complete UI will be disabled (not available in the UI -) )",
	"si se activa, todos los menus serán desactivados (no disponible en el menu)")
Language:add(code, "Disable chat-commands", "desactivar comandos en el chat")
Language:add(code, "If true, no chat commands can be used", "si se activa, no se podrán utilizar comandos en el chat")
Language:add(code, "Disable RCON-commands", "desactivar los comandos RCON")
Language:add(code, "If true, no RCON commands can be used", "si se activa, no se podrán utilizar comandos RCON")
Language:add(code, "Ignore Permissions", "ignorar permisos")
Language:add(code, "If true, all permissions are ignored --> everyone can do everything",
	"si se activa, todos los permisos serán ignorados --> todos pueden cambiar los ajustes")
Language:add(code, "Language", "lenguaje")

-- Strings of ../ext/Client/ClientNodeEditor.lua

-- Strings of ../ext/Server/BotSpawner.lua
Language:add(code, "CANT_JOIN_BOT_TEAM", "NO_TE_PUEDES_UNIR_AL_EQUIPO_DE_LOS_BOT")

-- Strings of ../ext/Server/UIServer.lua
Language:add(code, "Bot respawn activated!", "Respawneo de bots activado!")
Language:add(code, "Bot respawn deactivated!", "Respawneo de bots desactivado!")
Language:add(code, "Bots will attack!", "Los Bots atacarán!")
Language:add(code, "Bots will not attack!", "Los Bots no atacarán!")
Language:add(code, "%s is currently not implemented.", "%S no está actualmente implementado.")
Language:add(code, "Settings has been saved temporarily.", "Se guardaron los ajustes temporalmente")
Language:add(code, "Settings has been saved.", "Se guardaron los ajustes")

-- Strings of ../ext/Shared/NodeCollection.lua
Language:add(code, "Loaded %d paths with %d waypoints for map %s", "Cargado %d paths con %d rutas para el mapa %s")
Language:add(code, "Failed to execute query: %s", "Fallo en la ejecución del query: %s")
Language:add(code, "Saved %d paths with %d waypoints for map %s", "Se guardaron %d paths con %d rutas para el mapa %s")

Language:add(code, "Allow Comm-UI for all", "Permitir el uso de comandos en pantalla")
Language:add(code, "If true, all Players can access the Comm-Screen",
	"Si se activa está opción, todos los jugadores podrán acceder al menú de comandos de los bots")
Language:add(code, "Attack", "Atacar")
Language:add(code, "A", "A")
Language:add(code, "B", "B")
Language:add(code, "C", "C")
Language:add(code, "D", "D")
Language:add(code, "Defend", "Defender")
Language:add(code, "E", "E")
Language:add(code, "F", "F")
Language:add(code, "G", "G")
Language:add(code, "H", "H")
Language:add(code, "Back", "Regresar")
Language:add(code, "Exit Vehicle", "Salir del vehículo")
Language:add(code, "Enter Vehicle", "Entrar al vehículo")
Language:add(code, "Drop Ammo", "Soltar Munición")
Language:add(code, "Drop Medkit", "Soltar un Medkit")
Language:add(code, "Commands", "Comandos")
Language:add(code, "Attack Objective", "Atacar Objetivo")
Language:add(code, "Defend Objective", "Defender Objetivo")
Language:add(code, "Repair Vehicle", "Reparar Vehículo")
Language:add(code, "Save in progress...", "Guardado en progreso...")
Language:add(code, "Use air vehicles", "Usar vehículos aéreos")
Language:add(code, "Bots can use air-vehicles", "Los bots podrán utilizar los vehículos aéreos")
Language:add(code, "Balance Players Ignoring Bots", "Equilibrar jugadores ignorando bots")
Language:add(code, "Counts players in each team to decide which team a player joins",
	"Cuenta los jugadores de cada equipo para decidir a qué equipo se une un jugador")
Language:add(code, "Max Shoot Distance Sniper", "Francotirador de distancia máxima de disparo")
Language:add(code, "Max Distance a normal soldier shoots back if Hit",
	"Distancia máxima que un soldado normal dispara si es golpeado")
Language:add(code, "Meters until bots (not sniper) shoot back if hit",
	"Metros hasta que los bots (no francotiradores) disparan si son golpeados")
Language:add(code, "Max Distance a sniper soldier shoots back if Hit",
	"Distancia máxima que un soldado francotirador dispara si es golpeado")
Language:add(code, "Meters until snipers shoot back if hit",
	"Metros hasta que los francotiradores devuelvan los disparos si son golpeados")
Language:add(code,
	"The minimum time a bot tries to shoot a player or vehicle, when in a vehicle - recommended minimum 7.0.",
	"El tiempo mínimo que un bot intenta dispararle a un jugador o vehículo, cuando está en un vehículo: mínimo recomendado 7.0.")
Language:add(code, "Bot min time shoot at player in vehicle", "Disparo de tiempo mínimo de bot al jugador en el vehículo")
Language:add(code,
	"The minimum time a bot shoots at one player if in vehicle - recommended minimum 2.5, below this you will have issues."
	,
	"El tiempo mínimo que un bot dispara a un jugador si está en un vehículo: mínimo recomendado 2.5, por debajo de esto tendrá problemas.")
Language:add(code, "Bot fire mode duration in vehicle", "Duración del modo de disparo de bot en el vehículo")
