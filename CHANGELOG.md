# Changelog

## 0.1.0

- First version: the Zenrows MCP server (OAuth sign-in) and nine skills: `using-zenrows`, `getting-started`, `scrape-webpage`, `extract-structured-data`, `batch`, `crawl`, `map`, `browser-automation` and `capture-api-calls`.
- Skills come from `ZenRows/claude-zenrows` 0.1.2, with Claude-specific wording replaced by provider-neutral wording, as OpenAI asks for imported Claude plugins.
- `crawl` uses the `crawl_*` tools added in `zenrows-mcp` 2.6.0 instead of a `scrape` loop. `using-zenrows` lists the `crawl_*` and `account_usage` tools.
- Every skill states that the user's instructions take precedence over it, as OpenAI's instruction-following guidance recommends.
- `plugin.json` carries the listing, five positive and three negative review cases, commerce declaration and release notes.
- `scripts/validate.mjs` checks the package against OpenAI's documented submission limits; `scripts/package.sh` builds the upload ZIP.
