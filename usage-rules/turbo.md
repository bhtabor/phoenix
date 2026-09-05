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

### Turbo Streams

- Build stream elements with the `<.turbo_stream>` component (built-in
  actions, compile-checked attributes; `method` only applies to
  `replace`/`update`, `request_id` only to `refresh`) or with
  `turbo_stream_tag/2` — the permissive generic, which also covers
  custom actions:
  `turbo_stream_tag("highlight", target: "item-7")`.
- `remove` and `refresh` never carry a `<template>`; every other action
  always does.

### Broadcasts

- `broadcast_turbo_stream_refresh(conn, topic)` — Turbo 8 page refresh,
  tagged with the request id so the acting client skips it. Prefer this for
  permission-sensitive pages: each client re-fetches with its own session.
- `broadcast_turbo_stream_action(topic, action, opts)` — any stream action.
- Responses that differ for frame requests vary on the `Turbo-Frame` header;
  `fetch_turbo_headers` declares this automatically via `Vary`.

### Turbo Stream HTTP responses

- Opt a pipeline (or controller) into turbo stream responses by adding the
  format to `:accepts` — keep `"html"` first:

      plug :accepts, ["html", "turbo_stream"]
      plug :append_vary, "accept"

  Order matters: with no `Accept` header (or a bare `*/*`), Phoenix falls
  back to the *first* accepted format, so listing `"html"` first keeps API
  clients and health checks on HTML while Turbo submissions still negotiate
  `turbo_stream` (their `Accept` header ranks it first).
- Every action in an opted-in pipeline must be able to render the
  `turbo_stream` format (or explicitly `put_format(conn, "html")`), since
  form submissions will negotiate it.
