#!/usr/bin/env bash
# wav_to_flac.sh
# Simple WAV → FLAC converter using ffmpeg

set -euo pipefail

if ! command -v ffmpeg >/dev/null; then
    echo "Error: ffmpeg not found in PATH" >&2
    exit 1
fi

if [ $# -lt 1 ]; then
    echo "Usage: $0 <input.wav | input_directory>"
    exit 1
fi

INPUT="$1"

convert_one() {
    local in="$1"
    local out="${in%.wav}.flac"
    out="${out%.WAV}.flac"   # handle uppercase
    echo "Converting: $in → $out"
    ffmpeg -y -hide_banner -loglevel error -i "$in" -c:a flac "$out"
}

if [ -f "$INPUT" ]; then
    # single file
    case "$INPUT" in
        *.wav|*.WAV) convert_one "$INPUT" ;;
        *) echo "Not a .wav file: $INPUT" ;;
    esac
elif [ -d "$INPUT" ]; then
    # directory
    find "$INPUT" -type f \( -iname "*.wav" \) | while read -r wav; do
        convert_one "$wav"
    done
else
    echo "Input must be a .wav file or directory"
    exit 1
fi