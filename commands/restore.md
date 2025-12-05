---
description: Restore or enhance an existing image
argument-hint: "[file] [restoration instructions] --preview"
allowed-tools: restore_image
---

# /restore

Restore and enhance old, damaged, or low-quality images using AI-powered restoration.

## Usage
```
/restore [filename] "[restoration instructions]" [options]
```

## Options
- **--preview**: Automatically open the restored image

## Examples
```
/restore "old-photo.jpg" "remove scratches and enhance colors"
/restore "blurry-image.png" "increase sharpness and clarity"
/restore "vintage-scan.tiff" "restore faded colors and remove dust spots"
/restore "damaged-photo.jpeg" "repair tears and recreate missing parts" --preview
/restore "low-res-image.gif" "enhance resolution and detail"
```

## File Discovery
The command will automatically search for your image file in multiple locations:
- Current directory
- `images/` subdirectory
- `input/` subdirectory
- `nanobanana-output/` subdirectory
- `Downloads/` folder
- `Desktop/` folder

## Restoration Capabilities
- **Damage Repair**: Fix tears, cracks, and physical damage
- **Scratch Removal**: Eliminate surface scratches and marks
- **Color Restoration**: Revive faded or discolored images
- **Noise Reduction**: Remove digital noise and artifacts
- **Sharpening**: Enhance blurry or out-of-focus images
- **Dust and Spot Removal**: Clean up dust, dirt, and water spots
- **Missing Detail Reconstruction**: Recreate lost or damaged areas
- **Resolution Enhancement**: Improve low-resolution images

## Restoration Instructions
Be specific about what needs to be fixed:
- ✅ "remove scratches and enhance faded colors"
- ✅ "increase sharpness and reduce noise"
- ✅ "repair the torn corner and recreate missing background"
- ✅ "restore the vintage look while improving quality"
- ✅ "remove water stains and enhance contrast"

## Best Practices
- Use the highest quality scan or original available
- Describe the type of damage (scratches, fading, tears, etc.)
- Specify if you want to maintain vintage character
- Mention any specific areas that need attention
- Consider combining restoration with enhancement

## Output
The restored image is saved to the `nanobanana-output/` directory with a descriptive filename indicating the restoration performed.

## Tips
- Severely damaged images may require multiple restoration passes
- The AI will preserve important historical details when possible
- Consider making a backup before restoration
- Results may vary based on the extent and type of damage

---
*This command uses the `restore_image` MCP tool with Google Gemini models.*