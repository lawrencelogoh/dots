#!/bin/bash
#exec st -c ytdownloader -e
{
        source $HOME/.local/scripts/script_assets/ytlinks
	youtube-dl -f "bestvideo[height<=?1080]+bestaudio/best" --download-archive \
	$HOME/.local/scripts/script_assets/ytdl_dlarchive \
	--cookies $HOME/.local/scripts/script_assets/cookies.txt \
	$TODL
} 2>&1 | tee ~/.local/scripts/logs/ytdl_log.txt
