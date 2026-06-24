# AI-assisted research

This directory is for Codex-assisted, source-backed reconstruction of rows in the TIDES-facing `vehicle-locations.csv`.

## Files

- `sources.csv` lists accounts and editions worth downloading or consulting.
- `raw/` stores downloaded OCR text or manually saved source text.
- `coordinate-methodology.md` records the assumptions used to turn source passages into approximate coordinates.

## Extraction rules

When asking Codex to analyze a source, use a bounded prompt such as:

```text
Read ai-assisted-research/raw/stanley-1874-first-voyage-round-world.txt.
Extract dated voyage events relevant to vessel positions.
Propose rows for vehicle-locations.csv only when the passage supports a date,
route segment, place, or vessel-specific event. Include the source basis in
the research_source value.
```

For each accepted row:

- `research_source` should name the source or method briefly, for example `Evan Siroky manual entry`, `AI-assisted Stanley 1874`, or `AI-assisted Albo log via Stanley 1874`.
- `description` should describe the historical event or approximation without replacing the source note.
- Coordinates should use a clear basis such as `modern port centroid`, `named cape`, `strait waypoint`, `interpolated route`, or `source latitude`.
- Keep `vehicle-locations.csv` sorted by `vehicle_id` and then `timestamp`.

Use `vehicle_id` only when a source supports a vessel-specific point. For fleet-wide movements before ships separate, create one row per affected vessel.
