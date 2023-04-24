# Format Specifications

Short description of this folder. Other than that, see
<https://github.com/ChiefOfGxBxL/WC3MapSpecification>

## Current progress

Basically this is my status / WIP list (note to self: see `todo-list.secret.md` in root)

- doo
	- transcribed
	- waiting for new source
- imp
	- finished, not pushed
- mmp
	- transcribed
- shd
	- finished, not pushed
- war3mapPath.tga
	- finished, not pushed
- w3c
	- transcribed, no source
- w3e
	- transcription wip
- w3f
	- transcribed
- w3i
	- transcribed, PR in progress
	- waiting to resolve the string reader buffer question
- w3o
	- transcribed, no source
- w3r
	- transcribed
	- missing fields
- w3s
	- transcribed, no source
- w3u / w3t / w3b / w3d / w3a / w3h / w3q
	- transcribed, no source
- wai
	- transcribed
	- waiting for source
- wct
	- transcribed
	- waiting for source and 1.31
- wgc
	- pushed
	- waiting for source for verification
- wpm
	- transcribed
	- need confirmation
- wtg
	- transcribed
	- waiting for source


## What file does what

Hodor's original listing. Other than that, see the repository above.

| File name / format       | Description                                                                              |
|--------------------------|------------------------------------------------------------------------------------------|
| war3map.imp              | Import Information                                                                       |
| war3map.j                | Map script JASS2                                                                         |
| war3map.lua              | Map script Lua                                                                           |
| war3map.w3e              | Terrain Information                                                                      |
| war3map.shd              | Shadow Information                                                                       |
| war3map.doo              | Information about the scenery on the map                                                 |
| war3mapUnits.doo         | Information about units (troops/buildings/items) on the map                              |
| war3map.w3u              | Unit information, W3M maps only use .w3u and it stores information about units and items |
| war3map.w3t              | Item Information                                                                         |
| war3map.w3b              | Information about destructible objects                                                   |
| war3map.w3d              | Scenery Information                                                                      |
| war3map.w3a              | Ability Information                                                                      |
| war3map.w3h              | Information about buffs                                                                  |
| war3map.w3q              | Information about improvements                                                           |
| .w3o                     | Information to import into the feature editor (not stored inside the map)                |
| war3map.w3s              | Information about sounds                                                                 |
| war3map.w3r              | Region Information                                                                       |
| war3map.w3c              | Camera Information                                                                       |
| war3map.w3i              | Map Information                                                                          |
| war3map.wtg              | Information about triggers                                                               |
| war3map.wct              | Information about text triggers and non-standard card code                               |
| war3map.wts              | Row Information                                                                          |
| war3mapMap.blp/.tga/.b00 | Minimap Image                                                                            |
| war3mapPreview.tga       | map preview                                                                              |
| war3mapMisc.txt          | Information about game constants                                                         |
| war3mapSkin.txt          | Information about the game interface                                                     |
| war3mapExtra.txt         | Additional information about the card                                                    |
| war3map.mmp              | Information about minimap icons on the standard loading screen                           |
| war3map.wpm              | Cross-country information                                                                |
| war3mapPath.tga          | Traffic information (outdated)                                                           |
