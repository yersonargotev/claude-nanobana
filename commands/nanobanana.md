---
description: Generate and manipulate images with Nano Banana using natural language prompts
argument-hint: [natural language description]
allowed-tools: generate_image, edit_image, restore_image, generate_icon, generate_pattern, generate_story, generate_diagram
---

# /nanobanana

Generate and manipulate images using Google's Gemini AI models through the Nano Banana plugin.

## Usage
```
/nanobanana [natural language description of what you want to create or do with images]
```

## Examples
- `/nanobanana create a beautiful sunset over mountains`
- `/nanobanana edit my photo to make it look vintage`
- `/nanobanana generate an app icon for a weather app`
- `/nanobanana create a seamless pattern with geometric shapes`
- `/nanobanana make a 4-step tutorial showing how to bake bread`

## Features
- **Image Generation**: Create images from text descriptions
- **Image Editing**: Modify existing images with natural language
- **Image Restoration**: Enhance and repair old or damaged photos
- **Icon Generation**: Create app icons, favicons, and UI elements
- **Pattern Creation**: Design seamless patterns and textures
- **Story Sequences**: Generate multi-step visual stories or tutorials
- **Technical Diagrams**: Create flowcharts, architecture diagrams, and more

## How it works
This command intelligently analyzes your request and selects the appropriate specialized tool:
- Image generation → `generate_image`
- Image editing → `edit_image`
- Image restoration → `restore_image`
- Icons/UI elements → `generate_icon`
- Patterns/textures → `generate_pattern`
- Stories/sequences → `generate_story`
- Diagrams/technical → `generate_diagram`

The system will automatically handle parameters, file discovery, and organization for you.

---
*This command uses the Nano Banana MCP server with Google Gemini image generation models.*