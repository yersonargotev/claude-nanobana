# Installation Guide

## Prerequisites

Before installing the Nano Banana plugin, ensure you have:

- **Claude Code** (version 0.7.0 or higher)
- **Node.js** (version 18 or higher)
- **Google Gemini API** access and API key

## Step 1: Obtain Google Gemini API Key

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with your Google account
3. Click "Create API Key"
4. Copy your API key for use in the next step

## Step 2: Install the Plugin

### Option A: Local Installation

1. Clone or download the plugin:
   ```bash
   git clone https://github.com/nanobanana/claude-nanobanana-plugin.git
   cd claude-nanobanana-plugin
   ```

2. Install locally:
   ```bash
   claude plugin install ./claude-nanobanana-plugin
   ```

### Option B: Marketplace Installation (When Available)

```bash
claude plugin marketplace add nanobanana/claude-nanobanana
claude plugin install claude-nanobanana@nanobanana
```

## Step 3: Configure API Key

### Method A: Environment Variables (Recommended)

Add one of the following to your shell profile (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
# Primary option
export NANOBANANA_GEMINI_API_KEY="your-api-key-here"

# Alternative options
export NANOBANANA_GOOGLE_API_KEY="your-api-key-here"
export GEMINI_API_KEY="your-api-key-here"
export GOOGLE_API_KEY="your-api-key-here"
```

Reload your shell:
```bash
source ~/.bashrc  # or ~/.zshrc
```

### Method B: .env File

1. Copy the example environment file:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` and add your API key:
   ```
   NANOBANANA_GEMINI_API_KEY=your-api-key-here
   ```

### Method C: Project-Specific

For project-specific configuration, create `.claude/env` in your project directory:

```
NANOBANANA_GEMINI_API_KEY=your-api-key-here
```

## Step 4: Build MCP Server

The plugin includes an MCP server that needs to be built:

```bash
cd claude-nanobanana-plugin/mcp-server
npm install
npm run build
```

## Step 5: Verify Installation

1. Check that the plugin is installed:
   ```bash
   claude plugin list
   ```

2. Test basic functionality:
   ```bash
   claude "Test the nanobanana plugin by generating a simple image"
   ```

3. Try a slash command:
   ```bash
   /nanobanana create a simple red circle
   ```

## Step 6: Optional Configuration

### Model Selection

Choose between different Gemini models:

```bash
# Default model (fast, good quality)
export NANOBANANA_MODEL=gemini-2.5-flash-image

# Professional model (enhanced capabilities)
export NANOBANANA_MODEL=gemini-3-pro-image-preview
```

### Debug Mode

Enable verbose logging for troubleshooting:

```bash
export NANOBANANA_DEBUG=true
```

### Custom Output Directory

Change the default output directory:

```bash
export NANOBANANA_OUTPUT_DIR=my-images
```

## Platform-Specific Notes

### macOS

```bash
# Install Node.js if not present
brew install node

# Set environment variables in ~/.zshrc (for zsh)
echo 'export NANOBANANA_GEMINI_API_KEY="your-api-key"' >> ~/.zshrc
source ~/.zshrc
```

### Windows

```powershell
# Install Node.js if not present
winget install OpenJS.NodeJS

# Set environment variables permanently
[Environment]::SetEnvironmentVariable("NANOBANANA_GEMINI_API_KEY", "your-api-key", "User")
```

### Linux

```bash
# Install Node.js if not present
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Set environment variables in ~/.bashrc
echo 'export NANOBANANA_GEMINI_API_KEY="your-api-key"' >> ~/.bashrc
source ~/.bashrc
```

## Troubleshooting

### Common Issues

#### "Plugin not found"
- Ensure you're using Claude Code 0.7.0 or higher
- Check that the plugin was installed correctly with `claude plugin list`

#### "API key not found"
- Verify your API key is set correctly
- Check environment variable priority order
- Try setting a different environment variable from the supported list

#### "MCP server failed to start"
- Ensure Node.js 18+ is installed
- Check that the MCP server was built (`npm run build`)
- Verify file permissions in the plugin directory

#### "Generation failed"
- Check your Gemini API key permissions
- Verify you have API quota available
- Try simplifying your prompt
- Check network connectivity

#### "Image not found"
- Ensure input images are in searchable directories
- Use full file paths for images outside search areas
- Check file permissions

### Debug Commands

Enable debug mode for detailed logging:

```bash
export NANOBANANA_DEBUG=true
claude "Generate a test image and show me the debug output"
```

Check MCP server status:

```bash
cd claude-nanobanana-plugin/mcp-server
npm run start
```

### Getting Help

If you encounter issues:

1. **Check the logs**: Enable debug mode and review output
2. **Verify configuration**: Double-check API keys and environment variables
3. **Test API access**: Verify your Gemini API key works directly
4. **Community support**: Visit our [Discord server](https://discord.gg/nanobanana)
5. **Report issues**: [Create a GitHub issue](https://github.com/nanobanana/claude-nanobanana-plugin/issues)

## Next Steps

Once installation is complete:

1. **Read the User Guide**: [USER_GUIDE.md](USER_GUIDE.md)
2. **Try Examples**: [EXAMPLES.md](EXAMPLES.md)
3. **Explore Advanced Features**: [ADVANCED.md](ADVANCED.md)
4. **Join the Community**: [Discord](https://discord.gg/nanobanana)

Happy image generating! 🍌