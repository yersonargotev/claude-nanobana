# Claude Code Nano Banana Plugin

🍌 **Advanced AI Image Generation & Manipulation for Claude Code**

A comprehensive Claude Code plugin that brings the power of Google's Gemini AI models to generate, edit, and manipulate images directly within your Claude Code workflow.

## Features

### 🎨 **Image Generation**
- Generate stunning images from text descriptions
- Multiple artistic styles (photorealistic, watercolor, oil painting, etc.)
- Batch generation with style and variation controls
- Customizable output formats and sizing

### ✏️ **Image Editing & Restoration**
- Edit existing images with natural language instructions
- Restore and enhance old or damaged photographs
- Intelligent quality improvement and noise reduction
- Style transfers and creative modifications

### 🎯 **Specialized Content Types**
- **Icons**: App icons, favicons, and UI elements
- **Patterns**: Seamless patterns and textures
- **Stories**: Multi-step visual narratives and tutorials
- **Diagrams**: Technical diagrams and flowcharts

### 🤖 **Smart Automation**
- Context-aware image generation skills
- Intelligent image editing suggestions
- Automated quality enhancement detection
- Specialized image generation agent

## Installation

### Prerequisites
- Claude Code (version 0.7.0 or higher)
- Node.js 18+ (for MCP server)
- Google Gemini API key

### Setup

1. **Install the Plugin**
   ```bash
   claude plugin install ./claude-nanobanana-plugin
   ```

2. **Configure API Key**
   Set one of the following environment variables:
   ```bash
   export NANOBANANA_GEMINI_API_KEY="your-gemini-api-key"
   # Or alternatively:
   export NANOBANANA_GOOGLE_API_KEY="your-google-api-key"
   export GEMINI_API_KEY="your-gemini-api-key"
   export GOOGLE_API_KEY="your-google-api-key"
   ```

3. **Build MCP Server**
   ```bash
   cd claude-nanobanana-plugin/mcp-server
   npm install
   npm run build
   ```

4. **Verify Installation**
   ```bash
   claude plugin list
   ```

## Usage

### Slash Commands

#### `/nanobanana` - Natural Language Interface
```bash
/nanobanana create a beautiful sunset over mountains
/nanobanana edit my photo to make it look vintage
/nanobanana generate an app icon for a weather app
```

#### `/generate` - Advanced Image Generation
```bash
/generate "cyberpunk city street" --count=3 --styles=photorealistic,anime --variations=lighting,angle
/generate "abstract composition" --styles=modern,minimalist --seed=42 --preview
```

#### `/edit` - Image Editing
```bash
/edit "photo.jpg" "make it look like a vintage photo"
/edit "portrait.png" "change the eye color to blue" --preview
```

#### `/restore` - Image Restoration
```bash
/restore "old-photo.jpg" "remove scratches and enhance colors"
/restore "blurry-image.png" "increase sharpness and clarity"
```

#### `/icon` - Icon Generation
```bash
/icon "weather app with sun and clouds" --sizes=64,128,256,512 --style=modern
/icon "settings gear" --sizes=16,32,64 --type=ui-element --style=minimal
```

#### `/pattern` - Pattern Creation
```bash
/pattern "geometric hexagons" --style=geometric --density=medium --colors=duotone
/pattern "watercolor flowers" --style=floral --type=seamless --preview
```

#### `/story` - Visual Stories
```bash
/story "how to plant a tree" --steps=6 --type=tutorial --style=consistent
/story "a hero's journey" --steps=5 --type=story --transition=dramatic
```

#### `/diagram` - Technical Diagrams
```bash
/diagram "user registration flow" --type=flowchart --style=professional
/diagram "microservices architecture" --type=architecture --colors=accent
```

### Agent Skills

#### IMAGE_GENERATOR Skill
Automatically detects when images would enhance your work and generates them proactively.

#### IMAGE_EDITOR Skill
Intelligently identifies image improvement opportunities and suggests enhancements.

### Subagent

#### nanobanana-specialist
A specialized agent for complex image generation and manipulation tasks.

## Configuration

### Environment Variables

| Variable | Description | Priority |
|----------|-------------|----------|
| `NANOBANANA_GEMINI_API_KEY` | Primary Gemini API key | 1 (Highest) |
| `NANOBANANA_GOOGLE_API_KEY` | Primary Google API key | 2 |
| `GEMINI_API_KEY` | Fallback Gemini API key | 3 |
| `GOOGLE_API_KEY` | Fallback Google API key | 4 |
| `NANOBANANA_MODEL` | Model selection (optional) | - |

### Model Selection

- **Default**: `gemini-2.5-flash-image` (fast, high quality)
- **Professional**: `gemini-3-pro-image-preview` (enhanced capabilities)

## Output Organization

Generated images are automatically saved to:
```
nanobanana-output/
├── generated_images/
├── edited_images/
├── restored_images/
├── icons/
├── patterns/
├── stories/
└── diagrams/
```

## File Discovery

The plugin automatically searches for input images in:
- Current directory
- `images/` subdirectory
- `input/` subdirectory
- `nanobanana-output/` subdirectory
- `Downloads/` folder
- `Desktop/` folder

## API Reference

### MCP Tools

The plugin provides 7 MCP tools:

- `generate_image`: Core image generation with advanced options
- `edit_image`: Image editing with file input
- `restore_image`: Image restoration and enhancement
- `generate_icon`: Specialized icon generation
- `generate_pattern`: Pattern and texture creation
- `generate_story`: Sequential image storytelling
- `generate_diagram`: Technical diagram generation

### Parameters

#### Image Generation
- `prompt` (required): Text description
- `outputCount`: Number of variations (1-8)
- `styles`: Artistic styles array
- `variations`: Variation types array
- `format`: Output format (grid/separate)
- `seed`: Reproducibility seed
- `preview`: Auto-preview flag

#### Image Editing
- `prompt` (required): Edit instructions
- `file` (required): Input image filename
- `preview`: Auto-preview flag

## Examples

### Marketing Materials
```bash
/generate "modern smartphone displaying app interface" --styles=photorealistic --count=3
/pattern "subtle tech background" --type=seamless --colors=duotone
/icon "fitness tracking app" --sizes=64,128,256 --style=modern
```

### Technical Documentation
```bash
/diagram "microservices architecture" --type=architecture --style=technical
/story "API request flow" --steps=4 --type=process --layout=horizontal
/pattern "code pattern background" --style=tech --density=sparse
```

### Creative Projects
```bash
/generate "fantasy landscape with floating islands" --styles=watercolor,anime --count=4
/story "character transformation sequence" --steps=6 --type=story --style=evolving
/edit "concept-art.jpg" "add dramatic lighting and enhance colors"
```

## Troubleshooting

### Common Issues

#### API Key Not Found
```
Error: No valid API key found
```
**Solution**: Set one of the environment variables listed in Configuration.

#### Image Not Found
```
Error: Input image not found: filename.jpg
```
**Solution**: Ensure the image is in one of the search directories or provide full path.

#### Generation Failed
```
Error: Failed to generate any images
```
**Solution**: Check API key permissions and try simplifying the prompt.

### Debug Mode

Enable debug logging:
```bash
export NANOBANANA_DEBUG=true
```

## Development

### Building from Source
```bash
git clone https://github.com/nanobanana/claude-nanobanana-plugin
cd claude-nanobanana-plugin
cd mcp-server && npm install && npm run build
```

### Project Structure
```
claude-nanobanana-plugin/
├── .claude-plugin/          # Plugin manifest
├── commands/                # Slash commands
├── skills/                  # Agent skills
├── agents/                  # Subagents
├── mcp-server/             # MCP server implementation
├── docs/                   # Documentation
├── .mcp.json               # MCP configuration
└── README.md               # This file
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

Apache License 2.0 - see [LICENSE](LICENSE) file for details.

## Support

- **Issues**: [GitHub Issues](https://github.com/nanobanana/claude-nanobanana-plugin/issues)
- **Documentation**: [Full Documentation](https://nanobanana.github.io/claude-plugin)
- **Community**: [Discord Server](https://discord.gg/nanobanana)

## Acknowledgments

- Based on the original Nano Banana Gemini CLI extension
- Powered by Google's Generative AI
- Built with Claude Code's plugin architecture

---

**🍌 Nano Banana - Advanced AI Image Generation for Claude Code**