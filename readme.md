# Teraport Datapack, v2
A minecraft 1.13+ datapack that implements `/home`, `/sethome`, and `/back` 
like behavior via commands and triggers accessed through a written book.

Why "Teraport"? It's a reference to Schlock Mercenary; a great webcomic.

`readme.md` is not required in the datapack zip file, but may be included with 
no ill effects.

## Usage
To obtain a `Tome of Spatial Awareness` in survival minecraft, slay an enderman 
and sleep in a bed in the overworld.

Alternatively, the command `/function akoimeexx:teraport/givebook` may be 
executed by whatever means you devise to give `@p` said book.

## Structure
* `data`
  * `akoimeexx`
    * `functions`
      * `teraport`
        * `back.mcfunction`  
          Returns user to last teraport source location
        * `coordinates.mcfunction`  
          Displays recorded teraport location in chat with click link
        * `givebook.mcfunction`  
          Gives teraport book to `@p`
        * `init.mcfunction`  
          Sets up scoreboard objectives during `#minecraft:load`
        * `setcoordinates.mcfunction`  
          Sets `@s` teraport coordinates
        * `tpcoordinates.mcfunction`  
          Teraports `@s` to set coordinates
        * `triggers.mcfunction`  
          Checks teraport trigger events during `#minecraft:tick` and runs  
          corresponding functions
        * `uninstall.mcfunction`  
          Removes scoreboard objectives and revokes `@a`  
          `teraport:spatial_awareness` advancement
  * `minecraft`
    * `tags`
      * `functions`
        * `load.json`
        * `tick.json`
  * `teraport`
    * `advancements`
      * `spatial_awareness.json`  
        Survival advancement that awards the Teraport book
* `pack.mcmeta`
