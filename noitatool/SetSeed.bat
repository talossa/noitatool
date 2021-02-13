@echo off
mode con cols=47 lines=3
color 8f
title=seed
echo:
set /p @seed="enter seed: "
echo ^<MagicNumbers WORLD_SEED="%@seed%" _DEBUG_DONT_SAVE_MAGIC_NUMBERS="1" /^> > magic_numbers.xml
cls
echo:
echo:
echo start a new game to activate seed.
echo be sure to enable the seed plugin inside noita
pause
EXIT
