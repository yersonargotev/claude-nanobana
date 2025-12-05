---
description: Remix multiple images into a new creation based on a text prompt
argument-hint: "[file1] [file2] [file...] [remix instructions] --preview"
allowed-tools: remix_image
---

# /remix

Combine and remix multiple images into a new creative composition using AI-powered image fusion.

## Usage
```
/remix [file1] [file2] ... "[remix instructions]" [options]
```

## Options
- **--preview**: Automatically open the remixed image

## Examples
```
/remix "photo1.jpg" "photo2.jpg" "blend these into a surreal landscape"
/remix "face.png" "style-reference.jpg" "apply the style to the face"
/remix "product.jpg" "background.png" "logo.svg" "create a marketing composition"
/remix "sketch.png" "color-palette.jpg" "colorize the sketch using these colors" --preview
/remix "character1.png" "character2.png" "merge into a new character design"
```

## File Discovery
The command will automatically search for your image files in multiple locations:
- Current directory
- `images/` subdirectory
- `input/` subdirectory
- `nanobanana-output/` subdirectory
- `Downloads/` folder
- `Desktop/` folder

## Remix Capabilities
- **Style Fusion**: Combine the style of one image with the content of another
- **Element Blending**: Merge elements from multiple images into one
- **Concept Mixing**: Create new concepts by combining different visual ideas
- **Color Transfer**: Apply color schemes from one image to others
- **Composition Building**: Construct complex scenes from multiple source images
- **Character Merging**: Combine features from different characters or subjects

## Remix Instructions
Be specific about how you want the images combined:
- "blend the architectural styles from both buildings"
- "use the colors from image1 with the composition of image2"
- "merge these faces to create a new character"
- "combine the foreground from the first with the background from the second"
- "create a collage that tells a story using all images"

## Best Practices
- Use images with similar quality levels for best results
- Provide clear instructions about which elements to prioritize
- Specify the desired output style (photorealistic, artistic, etc.)
- For style transfer, include one "style" image and one "content" image
- Consider the aspect ratios of your source images

## Output
The remixed image is saved to the `nanobanana-output/` directory with a descriptive filename based on the remix operation.

## Tips
- More isn't always better - 2-3 images often produce cleaner results than many
- Be explicit about which image provides which element (style, content, color, etc.)
- Complex remixes may take longer to process
- The AI will try to maintain visual coherence while honoring your instructions
- Experiment with different prompts to achieve unique creative results

---
*This command uses the `remix_image` MCP tool with Google Gemini models.*

