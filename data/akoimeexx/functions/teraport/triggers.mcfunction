execute as @a[scores={teraportflag=1}] run function akoimeexx:teraport/setcoordinates
execute as @a[scores={teraportflag=2}] run function akoimeexx:teraport/tpcoordinates
execute as @a[scores={teraportflag=4}] run function akoimeexx:teraport/back

execute as @a[scores={teraportflag=8}] run function akoimeexx:teraport/coordinates

scoreboard players reset @a[scores={teraportflag=1..}] teraportflag
scoreboard players enable @a teraportflag