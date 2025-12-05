---
description: Generate technical diagrams, flowcharts, and architectural mockups
argument-hint: "[diagram description] --type=flowchart|architecture|network|database|wireframe|mindmap|sequence --style=professional|clean|hand-drawn|technical --layout=horizontal|vertical|hierarchical|circular --complexity=simple|detailed|comprehensive --colors=mono|accent|categorical --annotations=minimal|detailed --preview"
allowed-tools: generate_diagram
---

# /diagram

Generate professional technical diagrams, flowcharts, and architectural visualizations.

## Usage
```
/diagram [description] [options]
```

## Options
- **--type=flowchart|architecture|network|database|wireframe|mindmap|sequence**: Diagram type (default: flowchart)
- **--style=professional|clean|hand-drawn|technical**: Visual style (default: professional)
- **--layout=horizontal|vertical|hierarchical|circular**: Layout orientation (default: hierarchical)
- **--complexity=simple|detailed|comprehensive**: Detail level (default: detailed)
- **--colors=mono|accent|categorical**: Color scheme (default: accent)
- **--annotations=minimal|detailed**: Label and annotation level (default: detailed)
- **--preview**: Automatically open the generated diagram

## Examples
```
/diagram "user registration flow" --type=flowchart --style=professional --layout=vertical
/diagram "microservices architecture" --type=architecture --style=technical --colors=accent
/diagram "network topology" --type=network --layout=circular --complexity=detailed
/diagram "database schema" --type=database --style=clean --annotations=detailed
/diagram "mobile app wireframe" --type=wireframe --style=clean --colors=mono
/diagram "project planning mindmap" --type=mindmap --style=hand-drawn --complexity=comprehensive
/diagram "API interaction sequence" --type=sequence --layout=horizontal --preview
```

## Diagram Types
- **flowchart**: Process flows, decision trees, and algorithms
- **architecture**: System architectures and component relationships
- **network**: Network topologies and infrastructure layouts
- **database**: Database schemas and data relationships
- **wireframe**: UI/UX mockups and interface layouts
- **mindmap**: Concept maps and brainstorming visuals
- **sequence**: Interaction sequences and timeline diagrams

## Visual Styles
- **professional**: Business-ready, polished appearance
- **clean**: Minimal, modern, and uncluttered
- **hand-drawn**: Sketch-like, informal appearance
- **technical**: Engineering and technical documentation style

## Layout Options
- **horizontal**: Left-to-right flow
- **vertical**: Top-to-bottom flow
- **hierarchical**: Tree-like, top-down structure
- **circular**: Radial, circular arrangements

## Complexity Levels
- **simple**: Basic elements and connections
- **detailed**: Moderate complexity with good clarity
- **comprehensive**: Complex, information-rich diagrams

## Color Schemes
- **mono**: Single color with variations
- **accent**: Primarily monochrome with accent colors
- **categorical**: Multiple colors for different categories

## Annotation Levels
- **minimal**: Essential labels only
- **detailed**: Comprehensive labels and descriptions

## Common Use Cases

### Software Development
- System architecture diagrams
- API documentation flows
- Database schema visualization
- Process flow documentation
- User journey mapping

### Business & Management
- Organizational charts
- Process workflow diagrams
- Decision trees
- Project timeline visualizations
- Strategic planning diagrams

### Technical Documentation
- Network infrastructure layouts
- System integration diagrams
- Data flow visualizations
- Technical specification diagrams

## Best Practices
- Be specific about relationships and connections
- Describe the purpose and context clearly
- Specify key elements that must be included
- Consider the audience and appropriate complexity level
- Plan for scalability and future modifications

## Diagram Description Tips
- Start with the main purpose and scope
- Describe key components and their relationships
- Mention any specific visual preferences
- Include important labels or annotations needed
- Specify if it's for technical or business audience

## Output
Generated diagrams are saved to the `nanobanana-output/` directory with descriptive filenames.

---
*This command uses the `generate_diagram` MCP tool with Google Gemini models.*