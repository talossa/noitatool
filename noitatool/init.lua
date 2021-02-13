function OnPlayerSpawned()
  local magic_seed = tostring(MagicNumbersGetValue("WORLD_SEED"))
  local stats_seed = tostring(StatsGetValue("world_seed"))
  if magic_seed == "0" then
    GamePrintImportant("seed not set correctly", "use noitatool to change it, or disable the mod in settings")
  elseif magic_seed == stats_seed then
    GamePrintImportant("seed: "..stats_seed, "use noitatool to change it")
  else
    GamePrintImportant("you're running an old save", "start a new game to run with "..magic_seed)
  end
end
ModMagicNumbersFileAdd("mods/noitatool/magic_numbers.xml")
