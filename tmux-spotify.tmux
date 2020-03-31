#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATH="/usr/local/bin:$PATH:/usr/sbin"

spotify_artist="#($CURRENT_DIR/scripts/spotify_artist.sh)"
spotify_album="#($CURRENT_DIR/scripts/spotify_album.sh)"
spotify_track="#($CURRENT_DIR/scripts/spotify_track.sh)"
spotify_status="#($CURRENT_DIR/scripts/spotify_status.sh)"

main() {
  $(tmux bind-key -T prefix m run -b "source $CURRENT_DIR/scripts/spotify.sh && show_menu")
}

main
