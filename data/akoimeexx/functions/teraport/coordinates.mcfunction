tellraw @s [{"text":"Teraport coordinates: ","color":"aqua"},{"text":"","color":"aqua","extra":[{"score":{"name":"@s","objective":"teraportx"},"color":"gold"}," / ",{"score":{"name":"@s","objective":"teraporty"},"color":"gold"}," / ",{"score":{"name":"@s","objective":"teraportz"},"color":"gold"}],"hoverEvent":{"action":"show_text","value":"Teraport to your recorded location"},"clickEvent":{"action":"run_command","value":"/trigger teraportflag set 2"}}]
tellraw @s[scores={teraportd=-1}] [{"text":"Teraport dimension: ","color":"aqua"},{"text":"The Nether","color":"gold"}]
tellraw @s[scores={teraportd=0}] [{"text":"Teraport dimension: ","color":"aqua"},{"text":"Overworld","color":"gold"}]
tellraw @s[scores={teraportd=1}] [{"text":"Teraport dimension: ","color":"aqua"},{"text":"The End","color":"gold"}]
