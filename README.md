# BrainzLab UI

Unified design system for BrainzLab products with Phlex components and Tailwind CSS.

[![CI](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/ci.yml/badge.svg)](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/ci.yml)
[![CodeQL](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/codeql.yml/badge.svg)](https://github.com/brainz-lab/brainzlab-ui/actions/workflows/codeql.yml)
[![codecov](https://codecov.io/gh/brainz-lab/brainzlab-ui/graph/badge.svg)](https://codecov.io/gh/brainz-lab/brainzlab-ui)
[![Gem Version](https://badge.fury.io/rb/brainzlab-ui.svg)](https://rubygems.org/gems/brainzlab-ui)
[![License: OSAaSy](https://img.shields.io/badge/License-OSAaSy-blue.svg)](LICENSE)

## Quick Start

```ruby
# Gemfile
gem "brainzlab-ui"

# In your view
<%= render Brainzlab::Components::Button.new(variant: :primary) { "Save" } %>
```

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

### CSS Setup

Import the design system in your Tailwind CSS file:

```css
/* app/assets/tailwind/application.css */
@import "brainzlab_ui/base";

/* Your project-specific overrides below */
```

## Configuration

The design system follows Anthropic/Claude-inspired aesthetics with warm earth tones.

### Design Tokens

#### Colors

| Token | Value | Usage |
|-------|-------|-------|
| `--color-primary-500` | #D97706 | Anthropic orange |
| `--color-cream-50` | #FAFAF9 | Background |
| `--color-ink-900` | #1C1917 | Text |

#### Typography

| Font | Stack | Usage |
|------|-------|-------|
| Sans | Inter, system-ui | Body text |
| Serif | Source Serif 4, Georgia | Headlines |
| Mono | JetBrains Mono, ui-monospace | Code |

## Usage

### Phlex Components

```erb
<%= render Brainzlab::Components::Button.new(variant: :primary) { "Save" } %>
<%= render Brainzlab::Components::Button.new(variant: :secondary) { "Cancel" } %>
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

### Available Components

| Component | Variants |
|-----------|----------|
| **Button** | primary, secondary, ghost, danger |
| **Card** | default, bordered, elevated |
| **Badge** | default, success, warning, error, info |
| **Alert** | info, success, warning, error |
| **Input** | text, email, password, number |
| **Select** | default, multi |
| **Modal** | default, large, fullscreen |
| **Table** | default, striped, compact |
| **Tabs** | default, pills |

## API Reference

### Button

```ruby
Brainzlab::Components::Button.new(
  variant: :primary,  # :primary, :secondary, :ghost, :danger
  size: :md,          # :sm, :md, :lg
  disabled: false,
  type: :button       # :button, :submit, :reset
)
```

### Card

```ruby
Brainzlab::Components::Card.new(
  variant: :default,  # :default, :bordered, :elevated
  padding: :md        # :none, :sm, :md, :lg
)
```

### Badge

```ruby
Brainzlab::Components::Badge.new(
  variant: :default,  # :default, :success, :warning, :error, :info
  size: :md           # :sm, :md, :lg
)
```

Full documentation: [docs.brainzlab.ai/ui](https://docs.brainzlab.ai/ui/overview)

## Self-Hosting

When self-hosting BrainzLab products, the UI gem is automatically included as a dependency.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for development setup and contribution guidelines.

## License

MIT License - see LICENSE file.
