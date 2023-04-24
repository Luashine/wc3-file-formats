# war3mapPath.tga Format

It's a TGA image file that holds the pathing information.

*Note:* "war3mapPath.tga only gets loaded if the map doesn't have the wpm", the WPM format has probably
some extended functionality.

- Image width = `map width * 4`
- Image height = `map height * 4`
- Red channel:  Walking
- Green channel:  Flight
- Blue channel: Building
- Value of `0x00`: possible
- Value of `0xFF`: not allowed

- Alpha channel: is ground blighted (undead)?
	- Value `0x00`: normal ground
	- Value `0xFF`: blighted ground

Whether a unit can traverse an "allowed" tile depends on the unit's pathing ability and type.

## Explanation of pathing colors:

<!-- table here -->
