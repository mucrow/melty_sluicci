# Melty Sluicci

This project is open to anyone in the Melty Sluice Discord server!



## Contributing

### Code

Ask me to add you as a contributer to the repository and submit a PR!

If you're not comfortable with Git, work in a separate scene, then upload that scene and any associated resources in a ZIP archive to the Discord thread. A programmer will bring it into the project when they get around to it.


### Graphics

Upload a PNG of your graphic to the Discord thread! A programmer will bring it into the project when they get around to it.


### Audio

Upload a WAV of your song to the Discord thread (256kbps OGG also fine for music but not for sound effects). A programmer will bring it into the project when they get around to it.



## Resource Guidelines

| Resource Type          | Guidelines  |
|------------------------|-------------|
| Sprites/Textures       | PNG         |
| Character Spritesheets | See below.  |
| Music                  | 256kbps OGG |
| Sound Effects          | WAV         |

### Character Spritesheets

Specifications:
- PNG format
- 3 columns and 4 rows of frames
- Every frame should be the same size, but that size is arbitrary
- The order of frames must match the sheet below
  - Each row is the character walking in a different direction
  - The frames will be played back in the order 1, 2, 3, 2 in a loop
  - The middle frame (2) is shown when the character is standing still
- The top row faces right
- The 2nd row faces up
- The 3rd row faces left
- The bottom row faces down
- The spritesheet should have a transparent background
  - The background of the example is opaque but that's just for readability
- Don't stretch your spritesheet for chunkier pixels - this is done in Godot
  - The example is stretched but that's just for readability

![example character spritesheet](README_example_spritesheet.png)
