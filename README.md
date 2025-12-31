# Brainzlab UI

[![CI](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/ci.yml/badge.svg)](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/ci.yml)
[![CodeQL](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/codeql.yml/badge.svg)](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/codeql.yml)
[![Gem Version](https://badge.fury.io/rb/brainzlab-ui.svg)](https://rubygems.org/gems/brainzlab-ui)
[![License: OSAaSy](https://img.shields.io/badge/License-OSAaSy-blue.svg)](LICENSE)

Unified design system for Brainz Lab products. Anthropic/Claude-inspired design with Phlex components and Tailwind CSS.

## Installation

Add to your Gemfile:

```ruby
# Local development (Docker)
if File.exist?("/brainzlab-ui")
  gem "brainzlab-ui", path: "/brainzlab-ui"
else
  gem "brainzlab-ui", "~> 0.1.0"
end
```

## CSS Setup

Import the design system in your Tailwind CSS file:

```css
/* app/assets/tailwind/application.css */
@import "brainzlab_ui/base";

/* Your project-specific overrides below */
```

## Usage

### Phlex Components

```erb
<%= render Brainzlab::Components::Button.new(variant: :primary) { "Save" } %>
<%= render Brainzlab::Components::Card.new { "Content" } %>
<%= render Brainzlab::Components::Badge.new(variant: :success) { "Active" } %>
<%= render Brainzlab::Components::Alert.new(type: :info) { "Note..." } %>
```

### CSS Classes

```html
<button class="btn-primary">Primary Button</button>
<button class="btn-secondary">Secondary Button</button>
<div class="card">Card content</div>
<span class="badge badge-success">Active</span>
```

## Design Tokens

### Colors

| Token | Value | Usage |
|-------|-------|-------|
| `--color-primary-500` | #D97706 | Anthropic orange |
| `--color-cream-50` | #FAFAF9 | Background |
| `--color-ink-900` | #1C1917 | Text |

### Typography

- **Sans**: Inter, system-ui
- **Serif**: Source Serif 4, Georgia
- **Mono**: JetBrains Mono, ui-monospace

## License

MIT License - see LICENSE file.
