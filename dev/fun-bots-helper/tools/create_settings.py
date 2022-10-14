import sys

sys.path.insert(1, "../")

from addons.go_back_to_root import go_back_to_root
from addons.retrieves import retrieve_lines_settings, retrieve_settings


def createSettings() -> None:
    go_back_to_root()
    config_file = "ext/Shared/Config.lua"
    allSettings = retrieve_settings(first_key="Name")

    # Creating Config.lua
    with open(config_file, "w") as outFile:
        # Header
        outFile.write(
            """-- this file is autogenerated out of the Settings/SettingsDefinition.lua-file.
-- for permanent changes use this file and regenerate the Config.lua-file.\n
---@class Config
Config = {
    """
        )

        # Lines
        outFileLines = retrieve_lines_settings(allSettings)
        for line in outFileLines:
            outFile.write(line + "\n")
        print("Write Config.lua Done")


if __name__ == "__main__":
    createSettings()
