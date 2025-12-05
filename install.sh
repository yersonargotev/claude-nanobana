#!/bin/bash

# Nano Banana Claude Code Plugin Installation Script
# This script installs the Nano Banana plugin for Claude Code

set -e

echo "🍌 Nano Banana Claude Code Plugin Installation"
echo "=============================================="

# Check prerequisites
check_prerequisites() {
    echo "🔍 Checking prerequisites..."

    # Check for Claude Code
    if ! command -v claude &> /dev/null; then
        echo "❌ Claude Code is not installed or not in PATH"
        echo "Please install Claude Code first: https://claude.ai/claude-code"
        exit 1
    fi
    echo "✅ Claude Code found: $(claude --version 2>/dev/null || echo 'version unknown')"

    # Check for Node.js
    if ! command -v node &> /dev/null; then
        echo "❌ Node.js is not installed or not in PATH"
        echo "Please install Node.js 18+ first: https://nodejs.org/"
        exit 1
    fi
    NODE_VERSION=$(node --version | cut -d'v' -f2)
    REQUIRED_NODE="18.0.0"
    if [ "$(printf '%s\n' "$REQUIRED_NODE" "$NODE_VERSION" | sort -V | head -n1)" != "$REQUIRED_NODE" ]; then
        echo "❌ Node.js version $NODE_VERSION is too old (requires 18+)"
        exit 1
    fi
    echo "✅ Node.js found: $NODE_VERSION"
}

# Check for API key
check_api_key() {
    echo "🔑 Checking for API key..."

    if [ -n "$NANOBANANA_GEMINI_API_KEY" ] || [ -n "$NANOBANANA_GOOGLE_API_KEY" ] || [ -n "$GEMINI_API_KEY" ] || [ -n "$GOOGLE_API_KEY" ]; then
        echo "✅ API key found in environment"
        return 0
    fi

    echo "⚠️  No API key found in environment variables"
    echo "Please set one of the following:"
    echo "  export NANOBANANA_GEMINI_API_KEY=\"your-api-key\""
    echo "  export NANOBANANA_GOOGLE_API_KEY=\"your-api-key\""
    echo "  export GEMINI_API_KEY=\"your-api-key\""
    echo "  export GOOGLE_API_KEY=\"your-api-key\""
    echo ""
    echo "Get your API key from: https://makersuite.google.com/app/apikey"
    echo ""
    read -p "Do you want to continue anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
}

# Install plugin dependencies
install_dependencies() {
    echo "📦 Installing dependencies..."

    # Install main dependencies
    if [ -f "package.json" ]; then
        npm install
    fi

    # Install MCP server dependencies
    if [ -d "mcp-server" ]; then
        cd mcp-server
        npm install
        npm run build
        cd ..
    fi

    echo "✅ Dependencies installed"
}

# Install plugin in Claude Code
install_plugin() {
    echo "🔌 Installing plugin in Claude Code..."

    # Get current directory
    PLUGIN_DIR=$(pwd)

    # Install plugin
    if claude plugin install "$PLUGIN_DIR" 2>/dev/null; then
        echo "✅ Plugin installed successfully"
    else
        echo "❌ Failed to install plugin"
        echo "You may need to install it manually:"
        echo "  claude plugin install $PLUGIN_DIR"
        exit 1
    fi
}

# Verify installation
verify_installation() {
    echo "🔍 Verifying installation..."

    # Check if plugin is in the list
    if claude plugin list | grep -q "claude-nanobanana"; then
        echo "✅ Plugin is installed and recognized by Claude Code"
    else
        echo "⚠️  Plugin might not be properly installed"
        echo "Check with: claude plugin list"
    fi

    # Test MCP server
    if [ -f "mcp-server/dist/index.js" ]; then
        echo "✅ MCP server built successfully"
    else
        echo "❌ MCP server build failed"
        exit 1
    fi
}

# Show next steps
show_next_steps() {
    echo ""
    echo "🎉 Installation complete!"
    echo "==========================="
    echo ""
    echo "Next steps:"
    echo "1. Set your API key if not already done:"
    echo "   export NANOBANANA_GEMINI_API_KEY=\"your-api-key\""
    echo ""
    echo "2. Try the plugin:"
    echo "   /nanobanana create a beautiful sunset over mountains"
    echo "   /generate \"cyberpunk city\" --styles=photorealistic,anime"
    echo "   /icon \"weather app\" --sizes=64,128,256 --style=modern"
    echo ""
    echo "3. Read the documentation:"
    echo "   cat README.md"
    echo "   cat docs/INSTALLATION.md"
    echo ""
    echo "4. Get help:"
    echo "   /nanobanana help"
    echo ""
    echo "Happy image generating! 🍌"
}

# Main installation flow
main() {
    echo ""

    # Check if we're in the right directory
    if [ ! -f ".claude-plugin/plugin.json" ]; then
        echo "❌ Please run this script from the plugin root directory"
        exit 1
    fi

    check_prerequisites
    check_api_key
    install_dependencies
    install_plugin
    verify_installation
    show_next_steps
}

# Handle script arguments
case "${1:-}" in
    --help|-h)
        echo "Usage: $0 [options]"
        echo ""
        echo "Options:"
        echo "  --help, -h    Show this help message"
        echo "  --check       Check prerequisites only"
        echo "  --deps        Install dependencies only"
        echo ""
        echo "This script installs the Nano Banana Claude Code plugin."
        echo "Make sure you have Claude Code and Node.js 18+ installed."
        exit 0
        ;;
    --check)
        check_prerequisites
        check_api_key
        echo "✅ All prerequisites satisfied"
        exit 0
        ;;
    --deps)
        install_dependencies
        echo "✅ Dependencies installed"
        exit 0
        ;;
    "")
        main
        ;;
    *)
        echo "Unknown option: $1"
        echo "Use --help for usage information"
        exit 1
        ;;
esac