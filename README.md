# Copy Text - Quarto Extension

A Quarto extension that adds a "Copy" button to any div, making it easy for readers to copy text content to their clipboard with a single click.

## Installation

### From GitHub

```bash
quarto ivelasq/quarto-copy-text
```

### Local Installation

Copy the `_extensions/copy-text` folder to your Quarto project directory.

## Usage

### 1. Enable the extension

Add the extension to your document's YAML header:

```yaml
---
title: "My Document"
filters:
  - copy-text
---
```

Or in your `_quarto.yml` for a project-wide setup:

```yaml
filters:
  - copy-text
```

The CSS and HTML files are automatically included by the extension.

### 2. Mark content as copyable

Wrap any content in a div with the `.copy` class:

```markdown
::: copy
This text can be copied with a single click!
:::
```

## Examples

See [example.qmd](example.qmd) for a live demonstration, or run:

```bash
quarto render example.qmd
```

### Basic Text

```markdown
::: copy
This is simple text that can be copied.
:::
```

### Formatted Content

```markdown
::: copy
**Bold text**, *italic text*, and [links](https://example.com) all copy with formatting intact.
:::
```

### Social Media Posts

```markdown
::: copy
🚀 Excited to announce our new feature! Check it out at example.com #product #launch
:::
```

### Code Snippets

```markdown
::: copy
`npm install my-package`
:::
```

## Browser Support

Requires modern browsers with Clipboard API support (Chrome 76+, Firefox 63+, Safari 13.1+, Edge 79+).

## Requirements

- Quarto >= 1.2.0

## License

MIT
