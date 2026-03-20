## Turbo guidelines

This web application uses Turbo (Hotwire) alongside Phoenix.

### Turbo Awareness

- Prefer Turbo-driven navigation over full page reloads.
- Use `data-turbo="false"` only when explicitly required.
- Avoid introducing patterns that break Turbo (e.g., full-page redirects where a Turbo Stream is expected).

### Rendering & Responses

- When handling requests, consider whether the response should:
  - return a full HTML page, OR
  - return a Turbo Stream / partial update.
- Controllers must remain compatible with Turbo navigation.

### Forms

- Default to Turbo-enabled forms.
- Ensure server responses correctly handle:
  - validation errors (re-render partials)
  - success flows (Turbo redirect or stream update)

### Links and Navigation

- Use standard `<a>` links unless Turbo behavior needs customization.
- Avoid JavaScript-based navigation unless absolutely necessary.

### Testing

- Ensure tests cover both:
  - full-page requests
  - Turbo-driven interactions (where applicable)

### General Rule

When in doubt:
- Prefer Phoenix conventions
- Use Turbo for lightweight interactivity
