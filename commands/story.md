---
description: Generate a sequence of related images that tell a visual story or show a process
argument-hint: "[story description] --steps=2-8 --type=story|process|tutorial|timeline --style=consistent|evolving --layout=separate|grid|comic --transition=smooth|dramatic|fade --format=storyboard|individual --preview"
allowed-tools: generate_story
---

# /story

Generate multi-image sequences for visual storytelling, tutorials, and process demonstrations.

## Usage
```
/story [description] [options]
```

## Options
- **--steps=N**: Number of images to generate (2-8, default: 4)
- **--type=story|process|tutorial|timeline**: Sequence type (default: story)
- **--style=consistent|evolving**: Visual consistency (default: consistent)
- **--layout=separate|grid|comic**: Output layout (default: separate)
- **--transition=smooth|dramatic|fade**: Transition style (default: smooth)
- **--format=storyboard|individual**: Output format (default: individual)
- **--preview**: Automatically open generated images

## Examples
```
/story "how to plant a tree" --steps=6 --type=tutorial --style=consistent
/story "a hero's journey" --steps=5 --type=story --transition=dramatic --layout=separate
/story "coffee making process" --steps=4 --type=process --style=consistent --format=storyboard
/story "evolution of technology" --steps=7 --type=timeline --style=evolving --transition=smooth
/story "baking a cake" --steps=5 --type=tutorial --layout=grid --preview
/story "day in the life" --steps=8 --type=story --style=consistent --format=individual
```

## Sequence Types
- **story**: Narrative sequences with characters and plot
- **process**: Step-by-step procedural demonstrations
- **tutorial**: Educational and instructional sequences
- **timeline**: Chronological progression of events

## Visual Styles
- **consistent**: Same style and characters throughout
- **evolving**: Visual development across the sequence

## Layout Options
- **separate**: Individual image files
- **grid**: Arranged in a grid layout
- **comic**: Comic strip arrangement with panels

## Transition Styles
- **smooth**: Gradual transitions between steps
- **dramatic**: High-contrast, dramatic transitions
- **fade**: Soft fade transitions

## Format Options
- **storyboard**: Professional storyboard layout
- **individual**: Separate image files for each step

## Common Applications

### Educational Content
- Tutorial sequences for learning
- Step-by-step instructions
- Educational timelines
- Process demonstrations

### Creative Projects
- Visual storytelling
- Character development arcs
- Narrative sequences
- Comic strip creation

### Business Presentations
- Process workflows
- Project timelines
- Step-by-step guides
- Before/after sequences

## Best Practices
- Plan your sequence before generation
- Keep descriptions clear and sequential
- Consider visual consistency across steps
- Think about the narrative flow
- Plan appropriate number of steps for your story

## Story Planning Tips
1. **Beginning**: Establish context and characters
2. **Middle**: Develop the main action or process
3. **End**: Provide resolution or conclusion
4. **Transitions**: Plan smooth connections between steps

## Output
Generated story sequences are saved to the `nanobanana-output/` directory with step-indicative filenames.

---
*This command uses the `generate_story` MCP tool with Google Gemini models.*