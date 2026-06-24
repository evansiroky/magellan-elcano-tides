# Coordinate Methodology

This pass used the downloaded OCR texts in `ai-assisted-research/raw/` to extend the TIDES-facing `vehicle-locations.csv`. The canonical location file now includes a `research_source` column and is sorted by `vehicle_id` and `timestamp`.

## Sources Used

- `stanley-1874-first-voyage-round-world.txt`: Hakluyt Society compilation, including the Portuguese narrative, Pigafetta, Albo's log, Transylvanus, and the account of Trinidad after Victoria parted.
- `robertson-1906-v1.txt`, `robertson-1906-v2.txt`, `robertson-1906-v3.txt`: Robertson's Pigafetta edition and notes, used to corroborate dates and variant readings.
- `herrera-1601-decada-2.txt`: kept as a corroborating chronicle; this pass did not use it as the primary coordinate basis because the Stanley/Robertson texts gave the usable route chronology and navigational observations.

## Interpretation Rules

- Fleet-wide movement was copied to every active vessel until the sources show separation.
- Santiago receives no points after its wreck near the Santa Cruz River.
- San Antonio follows the existing return-to-Spain branch after deserting in the Strait.
- Concepción receives no points after it is burned near Bohol.
- Trinidad and Victoria share the Philippines-to-Moluccas route, then split at Tidore.
- Victoria follows Albo/Pigafetta westward through Timor, the Indian Ocean, Cape of Good Hope, Cape Verde, Sanlúcar, and Seville.
- Trinidad follows the separate Navarrete/Stanley account of its failed eastward return and Portuguese seizure near Ternate.

## Coordinate Basis

Coordinates are approximate modern WGS84 decimal degrees. Named ports use modern harbor or city coordinates. At-sea points use the latitude, course, or named island from the historical account and a modern scholarly/standard identification where practical. Where an island identification is uncertain, the description begins with `AI-assisted approximation`.

Dates are expressed as UTC midnight when the source gives only a day. Several source dates may reflect pre-standardized shipboard reckoning, local calendar differences, or later editorial normalization; those uncertainties are intentionally left in descriptions rather than silently normalized.

Source attribution for individual rows belongs in `vehicle-locations.csv` under `research_source`; this file records broader assumptions that apply across many rows.
