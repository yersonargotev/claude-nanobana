---
description: Generate app icons, favicons, and UI elements in multiple sizes and formats
argument-hint: "[description] --sizes=16,32,64,128,256 --type=app-icon|favicon|ui-element --style=flat|skeuomorphic|minimal|modern --format=png|jpeg --background=transparent|white|black --corners=rounded|sharp --preview"
allowed-tools: generate_icon
---

# /icon

Generate professional app icons, favicons, and UI elements with customizable sizes and styles.

## Usage
```
/icon [description] [options]
```

## Options
- **--sizes=list**: Icon sizes in pixels (comma-separated)
  - Common: 16, 32, 64, 128, 256, 512, 1024
- **--type=app-icon|favicon|ui-element**: Type of icon to generate (default: app-icon)
- **--style=flat|skeuomorphic|minimal|modern**: Visual style (default: modern)
- **--format=png|jpeg**: Output format (default: png)
- **--background=transparent|white|black|[color]**: Background type (default: transparent)
- **--corners=rounded|sharp**: Corner style for app icons (default: rounded)
- **--preview**: Automatically open generated icons

## Examples
```
/icon "weather app with sun and clouds" --sizes=64,128,256,512 --type=app-icon --style=modern
/icon "camera shutter" --sizes=16,32,64 --type=favicon --style=flat --background=transparent
/icon "settings gear" --sizes=24,48 --type=ui-element --style=minimal --corners=sharp
/icon "music note" --sizes=128,256,512 --type=app-icon --style=skeuomorphic --background=white
/icon "heart shape" --sizes=32,64 --type=ui-element --format=jpeg --background=transparent --preview
```

## Icon Types
- **app-icon**: Application icons for desktop and mobile
- **favicon**: Small icons for browser tabs and bookmarks
- **ui-element**: Interface elements like buttons and controls

## Visual Styles
- **flat**: 2D design with no depth or shadows
- **skeuomorphic**: Realistic, textured appearance
- **minimal**: Simple, clean, reduced elements
- **modern**: Contemporary with subtle effects and good balance

## Background Options
- **transparent**: No background (ideal for overlay)
- **white**: Solid white background
- **black**: Solid black background
- **[color name]**: Specific color (e.g., blue, red, green)

## Common Size Combinations
- **Favicon set**: 16, 32, 64
- **Mobile app**: 64, 128, 256, 512
- **Desktop app**: 128, 256, 512, 1024
- **UI elements**: 16, 24, 32, 48
- **Complete set**: 16, 32, 64, 128, 256, 512, 1024

## Design Guidelines
- Keep descriptions simple and clear
- Focus on recognizable shapes and symbols
- Consider scalability across different sizes
- Think about contrast and readability
- Account for different platform guidelines

## Output
Generated icons are saved to the `nanobanana-output/` directory with size-indicative filenames (e.g., "weather_app_64x64.png").

## Platform Compatibility
Generated icons work across:
- **iOS/Android**: Mobile applications
- **Windows/macOS/Linux**: Desktop applications
- **Web browsers**: Favicons and web apps
- **Design systems**: UI component libraries

---
*This command uses the `generate_icon` MCP tool with Google Gemini models.*