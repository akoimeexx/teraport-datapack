# Datapack notes
`notes.md` is used as a catch-basin of interesting tidbits and ideas for my 
datapack projects, as well as notes on specific files/functions needed.

This file is not required in the datapack zip file, but may be included with no 
ill effects.

## Tome of Spatial Awareness, human-readable format
For use in `data/akoimeexx/functions/teraport/givebook.mcfunction`. Remove 
leading whitespace and newlines to use.

```
give @p written_book{
    pages:[
        "[\"\",
            {\"text\":\"\\n\\n\\n Tome of\\n Spatial Awareness\\n\\n\\n\\n\",\"bold\":true},
            {\"text\":\" A primer on the art\\n of teraporting\",\"bold\":false}
        ]",
        "[\"\",
            {\"text\":\"Record Location\",\"color\":\"dark_purple\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger teraportflag set 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"Sets your teraport location to your current position\"}]}}},
            {\"text\":\"\\n\\n\",\"color\":\"none\",\"underlined\":false},
            {\"text\":\"Read Location\",\"color\":\"dark_purple\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger teraportflag set 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"Shows the teraport location currently set\"}]}}},
            {\"text\":\"\\n\\n\",\"color\":\"none\",\"underlined\":false},
            {\"text\":\"Teraport to Location\",\"color\":\"dark_purple\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger teraportflag set 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"Teraport to your recorded location\"}]}}},
            {\"text\":\"\\n\\n\",\"color\":\"none\",\"underlined\":false},
            {\"text\":\"Rebound to Location\",\"color\":\"dark_purple\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger teraportflag set 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"Rebound back to the last location you teraported from\"}]}}}
        ]"
    ],
    title:"Tome of Spatial Awareness",
    author:"akoimeexx",
    display:{Lore:["Teraport datapack"]},
    generation:3,
    resolved:1b
}
```

## Read Coordinates, human-readable format
For use in `data/akoimeexx/functions/teraport/coordinates.mcfunction`. Remove 
leading whitespace and newlines to use.

```
tellraw @s [
    {"text":"Teraport coordinates: ","color":"aqua"}, 
    {
        "text":"",
        "color":"aqua",
        "extra":[
            {"score":{"name":"@s","objective":"teraportx"},"color":"gold"},
            " / ",
            {"score":{"name":"@s","objective":"teraporty"},"color":"gold"},
            " / ",
            {"score":{"name":"@s","objective":"teraportz"},"color":"gold"}
        ],
        "hoverEvent":{"action":"show_text","value":"Teraport to your recorded location"},
        "clickEvent":{"action":"run_command","value":"/trigger teraportflag set 2"}
    }
]
tellraw @s[scores={teraportd=-1}] [
    {"text":"Teraport dimension: ","color":"aqua"},
    {"text":"The Nether","color":"gold"}
]
tellraw @s[scores={teraportd=0}] [
    {"text":"Teraport dimension: ","color":"aqua"},
    {"text":"Overworld","color":"gold"}
]
tellraw @s[scores={teraportd=1}] [
    {"text":"Teraport dimension: ","color":"aqua"},
    {"text":"The End","color":"gold"}
]
```
