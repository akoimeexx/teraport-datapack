summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["teraport"]}
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=teraport] Pos[0] double 1 run scoreboard players get @s reboundx
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=teraport] Pos[1] double 1 run scoreboard players get @s reboundy
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=teraport] Pos[2] double 1 run scoreboard players get @s reboundz

# Attempt client-desync prevention referenced in https://bugs.mojang.com/browse/MC-124177
experience add @s 1 points

execute as @s[scores={reboundd=-1}] in minecraft:the_nether run tp @s @e[type=minecraft:armor_stand,tag=teraport,limit=1]
execute as @s[scores={reboundd=0}] in minecraft:overworld run tp @s @e[type=minecraft:armor_stand,tag=teraport,limit=1]
execute as @s[scores={reboundd=1}] in minecraft:the_end run tp @s @e[type=minecraft:armor_stand,tag=teraport,limit=1]
kill @e[type=minecraft:armor_stand,tag=teraport]

# Remove experience from bug workaround
experience add @s -1 points