---
description: Generate single or multiple images from a text prompt with optional style and variation controls
argument-hint: "[prompt] --count=N --styles=style1,style2 --variations=var1,var2 --format=grid|separate --seed=N --preview"
allowed-tools: generate_image
---

# /generate

Generate images from text descriptions with advanced customization options.

## Usage
```
/generate [prompt] [options]
```

## Options
- **--count=N**: Number of images to generate (1-8, default: 1)
- **--styles=list**: Artistic styles (comma-separated)
  - Available: `photorealistic`, `watercolor`, `oil-painting`, `sketch`, `pixel-art`, `anime`, `vintage`, `modern`, `abstract`, `minimalist`
- **--variations=list**: Variation types (comma-separated)
  - Available: `lighting`, `angle`, `color-palette`, `composition`, `mood`, `season`, `time-of-day`
- **--format=grid|separate**: Output format (default: separate)
- **--seed=N**: Seed number for reproducible results
- **--preview**: Automatically open generated images

## Examples
```
/generate "a serene mountain landscape at sunset" --count=3 --styles=photorealistic,watercolor
/generate "cyberpunk city street" --variations=lighting,angle --format=grid --preview
/generate "abstract geometric composition" --styles=modern,minimalist --seed=42
/generate "vintage car" --count=2 --variations=color-palette,mood --format=separate
```

## Style Descriptions
- **photorealistic**: Realistic, photographic quality
- **watercolor**: Soft, painted watercolor effect
- **oil-painting**: Classic oil painting texture
- **sketch**: Hand-drawn pencil or ink sketch
- **pixel-art**: Retro pixelated style
- **anime**: Japanese animation style
- **vintage**: Aged, retro appearance
- **modern**: Clean, contemporary aesthetic
- **abstract**: Non-representational, artistic
- **minimalist**: Simple, reduced elements

## Variation Types
- **lighting**: Different lighting conditions (dramatic, soft)
- **angle**: Different camera angles (from above, close-up)
- **color-palette**: Warm and cool color variations
- **composition**: Different framing and layout
- **mood**: Different emotional tones (cheerful, dramatic)
- **season**: Seasonal variations (spring, winter, etc.)
- **time-of-day**: Different times (sunrise, sunset, etc.)

## Output
Generated images are saved to the `nanobanana-output/` directory with descriptive filenames.

---
*This command uses the `generate_image` MCP tool with Google Gemini models.*