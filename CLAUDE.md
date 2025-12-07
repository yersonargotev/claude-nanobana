# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **Claude Nano Banana Plugin** - a comprehensive Claude Code plugin that provides advanced AI image generation and manipulation capabilities using Google's Gemini AI models. The plugin implements MCP (Model Context Protocol) servers, slash commands, agent skills, and subagents to enable seamless image generation, editing, restoration, and specialized content creation within Claude Code workflows.

## Architecture

The plugin is structured as a monorepo with the following key components:

- **Plugin Root** (`nanobanana/`): Contains all plugin components
  - **MCP Server** (`nanobanana/mcp-server/`): TypeScript-based server implementing 8 tools for image operations
  - **Slash Commands** (`nanobanana/commands/`): Natural language interfaces for different image operations
  - **Agent Skills** (`nanobanana/skills/`): Proactive image generation and editing capabilities
  - **Subagents** (`nanobanana/agents/`): Specialized agents for complex image tasks
  - **Plugin Configuration** (`nanobanana/.claude-plugin/`): Plugin manifest (plugin.json)
  - **MCP Configuration** (`nanobanana/.mcp.json`): MCP server definitions
- **Marketplace Configuration** (`.claude-plugin/`): Marketplace metadata pointing to the plugin

## Development Commands

### Build and Development
```bash
# Build MCP server (required after any changes)
npm run build

# Development mode with watch
npm run dev

# Install all dependencies (root and mcp-server)
npm run install-all

# Clean build artifacts
npm run clean
```

### Testing and Quality
```bash
# Run tests (currently no-op)
npm test

# Type checking
npm run typecheck

# Linting
npm run lint
```

### MCP Server Specific
```bash
# Work in MCP server directory
cd nanobanana/mcp-server

# Build MCP server
npm run build

# Start MCP server
npm start

# Development with watch
npm run dev
```

## MCP Server Tools

The plugin implements 8 MCP tools in `nanobanana/mcp-server/src/`:

1. **generate_image**: Core image generation with style controls, variations, and batch generation
2. **edit_image**: Natural language image editing with file input
3. **restore_image**: Image restoration and enhancement
4. **remix_image**: Multi-image fusion and creative remixing
5. **generate_icon**: Specialized icon generation with multiple sizes
6. **generate_pattern**: Seamless pattern and texture creation
7. **generate_story**: Multi-image sequential storytelling
8. **generate_diagram**: Technical diagram and flowchart generation

## Key Implementation Details

### Authentication
The plugin uses Google Gemini API keys with fallback priority:
1. `NANOBANANA_GEMINI_API_KEY` (highest priority)
2. `NANOBANANA_GOOGLE_API_KEY`
3. `GEMINI_API_KEY`
4. `GOOGLE_API_KEY` (lowest priority)

### File Discovery
Images are automatically searched in:
- Current directory
- `images/`, `input/`, `nanobanana-output/` subdirectories
- `Downloads/` and `Desktop/` folders

### Output Organization
Generated images are organized in `nanobanana-output/` with subdirectories:
- `generated_images/`, `edited_images/`, `restored_images/`
- `icons/`, `patterns/`, `stories/`, `diagrams/`

## Environment Configuration

Required environment variables:
- `NANOBANANA_GEMINI_API_KEY` or `GOOGLE_API_KEY`

Optional configuration:
- `NANOBANANA_MODEL`: Model selection (default: `gemini-2.5-flash-image`)
- `NANOBANANA_DEBUG`: Enable debug logging
- `NANOBANANA_OUTPUT_DIR`: Custom output directory
- `NANOBANANA_AUTO_PREVIEW`: Auto-preview toggle

## Plugin Components

### Slash Commands
All commands are defined in `nanobanana/commands/` directory:
- `/nanobanana`: Natural language interface
- `/generate`: Advanced generation with parameters
- `/edit`, `/restore`, `/remix`: Image manipulation
- `/icon`, `/pattern`, `/story`, `/diagram`: Specialized generation

### Agent Skills
Two skills provide proactive capabilities:
- `image-generator`: Automatically detects when images would enhance work
- `image-editor`: Identifies improvement opportunities

### Subagents
- `nanobanana-specialist`: Complex image generation and manipulation tasks

## Build Process

The plugin uses TypeScript compilation:
- Source: `nanobanana/mcp-server/src/`
- Output: `nanobanana/mcp-server/dist/`
- Main entry: `nanobanana/mcp-server/dist/index.js`

The MCP server must be built before the plugin can be used:
```bash
cd nanobanana/mcp-server && npm install && npm run build
```

## Configuration Files

- `nanobanana/.mcp.json`: MCP server configuration and tool definitions
- `nanobanana/.claude-plugin/plugin.json`: Plugin manifest and component definitions
- `nanobanana/mcp-server/package.json`: MCP server dependencies and build configuration
- `nanobanana/mcp-server/tsconfig.json`: TypeScript compilation configuration
- `.claude-plugin/marketplace.json`: Marketplace configuration (repo level)
- `package.json`: Root package with project scripts

## Testing Installation

After installation, verify with:
```bash
# Check plugin installation
claude plugin list

# Test basic functionality
claude "Generate a test image using nanobanana"

# Test slash command
/nanobanana create a simple red circle
```

## Troubleshooting

Common issues and solutions:
- **API key errors**: Check environment variable priority and permissions
- **MCP server failures**: Ensure Node.js 18+ and successful build
- **Image not found**: Verify file locations and search directories
- **Generation failures**: Check API quota and simplify prompts

Enable debug mode with `NANOBANANA_DEBUG=true` for detailed logging.