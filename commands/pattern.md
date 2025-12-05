---
description: Generate seamless patterns and textures for backgrounds and design elements
argument-hint: "[description] --size=256x256 --type=seamless|texture|wallpaper --style=geometric|organic|abstract|floral|tech --density=sparse|medium|dense --colors=mono|duotone|colorful --repeat=tile|mirror --preview"
allowed-tools: generate_pattern
---

# /pattern

Generate seamless patterns, textures, and wallpapers for design projects.

## Usage
```
/pattern [description] [options]
```

## Options
- **--size=WxH**: Pattern tile size (default: 256x256)
- **--type=seamless|texture|wallpaper**: Pattern type (default: seamless)
- **--style=geometric|organic|abstract|floral|tech**: Pattern style (default: abstract)
- **--density=sparse|medium|dense**: Element density (default: medium)
- **--colors=mono|duotone|colorful**: Color scheme (default: colorful)
- **--repeat=tile|mirror**: Tiling method (default: tile)
- **--preview**: Automatically open the generated pattern

## Examples
```
/pattern "geometric hexagons" --style=geometric --density=medium --colors=duotone
/pattern "watercolor flowers" --style=floral --density=sparse --type=seamless
/pattern "circuit board design" --style=tech --density=dense --colors=mono --size=512x512
/pattern "abstract organic shapes" --style=organic --type=texture --colors=colorful
/pattern "vintage wallpaper" --style=floral --type=wallpaper --density=medium --repeat=tile
/pattern "minimal dots" --style=geometric --density=sparse --colors=mono --preview
```

## Pattern Types
- **seamless**: Tileable patterns that repeat perfectly
- **texture**: Surface textures and material appearances
- **wallpaper**: Full-screen background designs

## Pattern Styles
- **geometric**: Mathematical shapes, lines, and forms
- **organic**: Natural, flowing, and irregular shapes
- **abstract**: Non-representational designs
- **floral**: Flower, leaf, and plant-based patterns
- **tech**: Technological, digital, and circuit designs

## Density Levels
- **sparse**: Few elements, more negative space
- **medium**: Balanced element distribution
- **dense**: Many elements, minimal negative space

## Color Schemes
- **mono**: Single color variations (monochromatic)
- **duotone**: Two complementary colors
- **colorful**: Multiple colors and gradients

## Tiling Methods
- **tile**: Standard repeating tiles
- **mirror**: Mirrored repetition for symmetry

## Common Sizes
- **Web patterns**: 256x256, 512x512
- **Print textures**: 1024x1024
- **Wallpapers**: 1920x1080, 2560x1440
- **Mobile backgrounds**: 1080x1920

## Use Cases
- **Web Design**: Backgrounds for websites and apps
- **Print Design**: Textures for brochures and packaging
- **UI/UX**: Subtle interface patterns
- **Branding**: Custom pattern assets
- **Digital Art**: Textural elements and overlays

## Design Tips
- Consider the scale and visual impact at different sizes
- Ensure seamless edges for tileable patterns
- Test patterns at actual usage size
- Consider color contrast and accessibility
- Think about how the pattern will repeat

## Output
Generated patterns are saved to the `nanobanana-output/` directory with descriptive filenames.

---
*This command uses the `generate_pattern` MCP tool with Google Gemini models.*