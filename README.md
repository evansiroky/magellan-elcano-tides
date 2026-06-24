# magellan-elcano-tides
An example implementation of the [TIDES Data Standard](https://tides-transit.org/main/) that describes the [Magellan–Elcano expedition](https://en.wikipedia.org/wiki/Magellan_expedition).

The project currently contains a list of the ships in [vehicles.csv](vehicles.csv) and timestamped GPS points in [vehicle-locations.csv](vehicle-locations.csv). Location rows are sorted by ship and timestamp, and the `research_source` column records whether a row came from manual entry, AI-assisted source analysis, or another documented source.

## AI-assisted research

This project has used various attempts in using AI to attempt to fill in various positions of the ships. The vehicle_locations.csv file notes which records were constructed purely out of AI research and which ones were added through manually reading the historical accounts in the [First Voyage Round the World](https://en.wikisource.org/wiki/Index:First_Voyage_Round_the_World.djvu) and making educated guesses on the positions.

### Instructions for AI

Use the files in [ai-assisted-research/](ai-assisted-research/) to keep historical accounts and coordinate-generation notes separate from the TIDES output CSVs:

1. Add downloadable editions or source records to [ai-assisted-research/sources.csv](ai-assisted-research/sources.csv).
2. Download public-domain texts into `ai-assisted-research/raw/` with `ai-assisted-research/scripts/download-sources.sh`.
3. Ask Codex to read one source at a time and propose timestamped vessel positions.
4. Review each proposed row for chronology, place-name resolution, vessel applicability, and confidence.
5. Add accepted rows to [vehicle-locations.csv](vehicle-locations.csv), including a concise `research_source` value.

Keep uncertain coordinates out of the final TIDES file until the source, interpretation, and confidence are clear enough to summarize in `research_source` or in the AI-assisted methodology notes.

See [ai-assisted-research/coordinate-methodology.md](ai-assisted-research/coordinate-methodology.md) for the current AI-assisted coordinate-generation assumptions.
