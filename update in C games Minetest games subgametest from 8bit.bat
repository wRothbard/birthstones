SET SOURCE_PATH=.\textures
IF NOT EXIST "%SOURCE_PATH%" GOTO ENDNOSOURCE
SET SOURCE_PATH=.\etc\8bit
IF NOT EXIST "%SOURCE_PATH%" GOTO ENDNOSOURCE
SET MT_PATH=C:\games\Minetest
IF NOT EXIST "%MT_PATH%" GOTO ENDNOMINETEST
SET MT_GAMES_PATH=%MT_PATH%\games
SET MT_GAME_PATH=%MT_GAMES_PATH%\subgametest
echo "subgametest is minetest_game, plus: birthstones, unified_inventory"
IF NOT EXIST "%MT_GAME_PATH%" GOTO ENDNOGAME

SET MODS_PATH=%MT_GAME_PATH%\mods
SET MOD_DEST_PATH=%MODS_PATH%\birthstones
IF NOT EXIST "%MOD_DEST_PATH%" md "%MOD_DEST_PATH%"
copy *.* "%MOD_DEST_PATH%\"
IF NOT EXIST "%MOD_DEST_PATH%\textures" md "%MOD_DEST_PATH%\textures"
copy /y .\textures\*.* "%MOD_DEST_PATH%\textures"
copy /y .\etc\8bit\*.* "%MOD_DEST_PATH%\textures"

GOTO ENDSILENTLY
:ENDNOMINETEST:
echo "Minetest is not installed at %MT_PATH% -- extract minetest there first or edit this batch file in your favorite text editor and edit the value for MT_PATH.
pause
GOTO ENDSILENTLY
:ENDNOGAME
echo "Subgame %MT_ENLIVEN_PATH% is not installed -- extract that subgame there first or edit this batch file in your favorite text editor and edit the value for MT_GAME_PATH.
pause
GOTO ENDSILENTLY
:ENDNOSOURCE
echo "Missing source folder '%SOURCE_PATH%'. You must extract all files and run from a drive letter, so that textures folder is in current working directory"
pause
:ENDSILENTLY