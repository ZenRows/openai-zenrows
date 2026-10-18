# Changelog

## 0.1.4

- Review case 2 asks for the first page of `/ecommerce/` only. Run in Codex on 2026-10-18, the old prompt ("from https://www.scrapingcourse.com/ecommerce/") called `extract` as expected, then walked all 12 catalog pages: about 30 `extract` calls, 1 min 46 s, 188 products in a CSV, with two pages needing a retry. A reviewer comparing that against "the 16 products on the page" would see a different result each run.

## 0.1.3

- Review case 4 read page 2 of `/ecommerce/`, which has its own URL, so ChatGPT answered it with `scrape` and never opened a browser session. It now uses `/button-click`, where the answer only appears after clicking Load more.
- Review case 2 names what a correct answer contains: the 16 products on the page, from Abominable Hoodie ($69.00) to Artemis Running Short ($45.00).

## 0.1.2

- The `extract` skills no longer describe Extract as a beta or as gated by domain.

## 0.1.1

- Review cases checked against the live MCP server on 2026-10-13. Case 1 read `scrapingcourse.com/javascript-rendering/`, which `scrape` returns as an "Enable JavaScript" placeholder with default settings; it now reads `/table-parsing`, which returns its full table. Case 3 expected page titles, which `batch_results` doesn't return (it returns a status and a download link per URL); it now expects per-URL status.
- The starter prompt that used `/javascript-rendering/` uses `/table-parsing` instead.

## 0.1.0

- First version: the Zenrows MCP server (OAuth sign-in) and nine skills: `using-zenrows`, `getting-started`, `scrape-webpage`, `extract-structured-data`, `batch`, `crawl`, `map`, `browser-automation` and `capture-api-calls`.
- Skills come from `ZenRows/claude-zenrows` 0.1.2, with Claude-specific wording replaced by provider-neutral wording, as OpenAI asks for imported Claude plugins.
- `crawl` uses the `crawl_*` tools added in `zenrows-mcp` 2.6.0 instead of a `scrape` loop. `using-zenrows` lists the `crawl_*` and `account_usage` tools.
- Every skill states that the user's instructions take precedence over it, as OpenAI's instruction-following guidance recommends.
- `plugin.json` carries the listing, five positive and three negative review cases, commerce declaration and release notes.
- `scripts/validate.mjs` checks the package against OpenAI's documented submission limits; `scripts/package.sh` builds the upload ZIP.
