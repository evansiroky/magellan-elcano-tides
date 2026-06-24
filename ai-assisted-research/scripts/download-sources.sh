#!/usr/bin/env sh
set -eu

mkdir -p ai-assisted-research/raw

download_archive_text() {
  identifier="$1"
  output="$2"
  url="https://archive.org/stream/${identifier}/${identifier}_djvu.txt"

  if [ -f "$output" ]; then
    printf '%s already exists\n' "$output"
    return 0
  fi

  printf 'Downloading %s\n' "$url"
  curl -L --fail --show-error "$url" -o "$output"
}

download_archive_text firstvoyageround00piga ai-assisted-research/raw/stanley-1874-first-voyage-round-world.txt
download_archive_text magellansvoyagea01piga ai-assisted-research/raw/robertson-1906-v1.txt
download_archive_text magellansvoyagea02piga ai-assisted-research/raw/robertson-1906-v2.txt
download_archive_text magellansvoyagea03piga ai-assisted-research/raw/robertson-1906-v3.txt
download_archive_text historiagenerald12herr ai-assisted-research/raw/herrera-1601-decada-2.txt
