---
description: Edit an existing image based on a text prompt
argument-hint: "[file] [edit instructions] --preview"
allowed-tools: edit_image
---

# /edit

Edit and modify existing images using natural language instructions.

## Usage
```
/edit [filename] "[edit instructions]" [options]
```

## Options
- **--preview**: Automatically open the edited image

## Examples
```
/edit "photo.jpg" "make it look like a vintage photo"
/edit "portrait.png" "change the eye color to blue"
/edit "landscape.jpeg" "add dramatic lighting and enhance colors"
/edit "icon.svg" "convert to a flat design with modern colors" --preview
/edit "old-photo.tiff" "restore and remove scratches"
```

## File Discovery
The command will automatically search for your image file in multiple locations:
- Current directory
- `images/` subdirectory
- `input/` subdirectory
- `nanobanana-output/` subdirectory
- `Downloads/` folder
- `Desktop/` folder

## Supported Edit Types
- **Style Changes**: Apply different artistic styles (vintage, modern, etc.)
- **Color Adjustments**: Modify colors, lighting, and contrast
- **Object Manipulation**: Add, remove, or modify elements
- **Background Changes**: Replace or modify backgrounds
- **Restoration**: Repair damaged or old photos
- **Enhancements**: Improve quality, sharpness, and details

## Edit Instructions
Be specific and clear in your instructions:
- ✅ "change the background to a beach sunset"
- ✅ "convert to black and white with high contrast"
- ✅ "remove the person in the red shirt"
- ✅ "add a wooden frame border"
- ✅ "make it look like a watercolor painting"

## Output
The edited image is saved to the `nanobanana-output/` directory with a descriptive filename based on the edit operation.

## Tips
- Use high-quality input images for best results
- Specify the file extension (.jpg, .png, etc.) if multiple files have similar names
- Complex edits may take longer to process
- The AI will maintain image quality while applying changes

---
*This command uses the `edit_image` MCP tool with Google Gemini models.*