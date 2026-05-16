# Copy Text Extension

A Quarto extension that adds a "Copy" button to divs with the `.copy` class, making it easy for readers to copy text content to their clipboard.

## Installation

```bash
quarto add your-username/copy-text
```

Or install locally by copying the `_extensions/copy-text` folder to your Quarto project.

## Usage

In your Quarto document YAML header, add the extension:

```yaml
---
title: "My Document"
format: html
filters:
  - copy-text
---
```

Then wrap any content you want to make copyable in a div with the `.copy` class:

```markdown
::: copy
This text can be copied with a single click!
:::
```

When rendered, a "Copy" button will appear that copies the text to the clipboard. The button changes to "Copied!" for 2 seconds after clicking.

## Features

- Copies both plain text and HTML formatting to clipboard
- Visual feedback when text is copied
- Clean button styling that floats to the right
- Works with any content inside the div

## Example

```markdown
::: copy
**Important:** This formatted text will be copied with its HTML formatting intact.
:::
```

## Requirements

- Quarto >= 1.2.0
- Modern browser with Clipboard API support
