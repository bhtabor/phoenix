# phoenix_turbo_rules

Turbo usage rules for AI agents working on [Phoenix](https://www.phoenixframework.org)
applications.

This package ships no code. It exists so that `mix usage_rules.sync` can find
the Turbo rules and write them into your `AGENTS.md`, next to the rules that
ship with `phoenix` itself.

It is not published on Hex and is never fetched directly. The phoenix
installer vendors it into `deps_source/phoenix_turbo_rules` when generating an
app and wires it up as a path dependency (`{:phoenix_turbo_rules, path: "deps_source/phoenix_turbo_rules", only: [:dev, :test], runtime: false}`).

Then run:

```console
mix usage_rules.sync
```

## Source

The rules are maintained in the `phoenix` repository under `usage-rules/turbo.md`
and written into the vendored package at generation time.
