# Warcraft 3 File Format Documentation Project

This is a WIP dump of my folders for now.

PLEASE, I welcome you to help in any way, shape or form. PR and patches, volunteer work, welcome.

**For non-coding tasks**, see "Notify active tool authors".

Feel free to contact via issues or to start on your own, anywhere.

See the READMEs in subfolders.

## Major goals:

1. Describe all formats and their versions <-- we are here
	- Did we miss any formats the game uses?
	- Need to be done but not yet planned:
		1. Replay format (many parsers exist, but need a high-quality documentation)
		2. Save game format
		3. All the custom campaign stuff
		4. All the game resource formats like MDX etc.
2. Push the changes to the "main repository": https://github.com/ChiefOfGxBxL/WC3MapSpecification
4. Notify active tool authors
	- Notify map hosting websites to update w3i parsing, especially knock on ~~the heaven's~~ EpicWar's door
	- https://github.com/Drake53/War3Net
	- [W3X2LNI](https://github.com/sumneko/w3x2lni) very widely used, needs a new developer/maintainer (Lua, C++ for GUI)
	- [wc3libs](https://github.com/inwc3/wc3libs) Java library, needs active developer
	- [WC3MapTranslator](https://github.com/ChiefOfGxBxL/WC3MapTranslator) - a FORMAT<->JSON converter,
	needs a rework to support versioned formats and a new maintainer/developer
	- Newcomer: https://github.com/Cod-Evoid/warcraft3-parser (TS, JS)
	- who else?
5. Write Kaitai Struct Format Definitions ".ksy" for automated read-only parsing
(writing support is in early alpha).
	- See [kaitai subfolder](kaitai-struct/) for details
6. Write simple to use CLI tools, probably with Format<->JSON conversion

## Workflow:

1. Collect all available online sources
	- WE ARE HERE = [ChiefOfGxBxL/WC3MapSpecification](https://github.com/ChiefOfGxBxL/WC3MapSpecification)
	- Best source up until now: [On XGM by Hodor](https://xgm.guru/p/wc3/w3-file-format) (2020, Russian)
	- WC3C.net, 2006:
		- [Original link](https://web.archive.org/web/20140514131031/http://www.wc3c.net:80/tools/specs/)
		- [One markdown mirror](https://github.com/SimonMossmyr/w3x-spec)
		- [Prettier mirror](https://867380699.github.io/blog/2019/05/09/W3X_Files_Format) by "867380699" on Github
	- We should leverage Retera and his open-source code
		- [Retera Model Studio](https://github.com/Retera/ReterasModelStudio)
		- [Warsmash](https://github.com/Retera/WarsmashModEngine)
	- Search online for puzzle pieces
2. Document format locally in `.ods` files
(consider succumbing to the "totally-dont-be-evil" Google for online docs)
3. Publishing to Github (Markdown):
	1. Save individual tables as `.csv`
	2. Convert to Github-flavored Markdown tables
		- https://www.tablesgenerator.com/markdown_tables
		- https://thisdavej.com/copy-table-in-excel-and-paste-as-a-markdown-table/
	3. Write the .md pages and insert tables
4. Submit PR to the main repository (at the moment: ChiefOfGxBxL/WC3MapSpecification)

**NOTE:** For my workflow, the ".ods" files will remain the source of truth until the final merge.
The .xlsx files you will find in folders are immediately obsolete if there's an .ods file.
These older spreadsheets were a result of wholesome cooperation between me and Excalimbur.

## Authors and Credits

- **Zepir** on WC3C:
	- Thanks to **Justin Olbrantz (Quantam)** for Inside MoPaQ, **Andrey Lelikov** for LMPQ API and
	**ShadowFlare**, they created the tools to allow me to get "inside" w3m (mpq) files.
	- Special thanks to **BlackDick**, **DJBnJack**, **PitzerMike**, **StonedStoopid**, **Ziutek**
	and a few others who helped me to find some stuff and work on this documentation.
	- Thanks to **WC3Campaign Staff** and **War3Pub Staff** who hosted my stuff
	and let me meet interesting people.
	- Thanks to Blizzard Entertainment for making Warcraft III
- **Ladislav Zezula aka "Ladik"** for his endless amount of support and work on MPQ Editor, stormlib,
CascView and casclib.
- **Kaitai Struct (and IDE)** developers, this is the best idea made real.
- **Retera** for going on despite all odds (not yet, but I'm sure we'll need your knowledge for other
formats soon)
- **stijnherfst** and HiveWE contributors for creating *the alternative*. Used as a reference sometimes.
- **moyack** and **lep** for creating their respective Jass documentation projects.
Even here it helped to know what camera data referred to!
- People hosting map websites:
	- "D." of **EpicWar**, that'll be one hell of a test run for a parser (over 400GB of old maps).
	- **TriggerHappy**, for supporting post-Reforged maps and having the most comprehensive collection
	of new maps
- Communities:
	- **Ralle** for running The Hive Workshop throughout the years. And the .ksy definition for .wtg
	- Similarly, **XGM and Team** who are running the home for the Russian-speaking community.
- **ChiefOfGxBxL** for being a beacon of light in the English space with the "WC3MapSpecification" repository.
Language barriers are unfortunate :)
- **Hodor** for his excellent documentation work (in Russian) and the pretty description style
- **Excalimbur** for returning me a favor and writing down and translating Hodor's documentation :)
- **BogdanW3**, this wouldn't have been possible without you!
- Luashine (me): "*it's a community effort*"
