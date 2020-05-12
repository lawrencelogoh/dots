#!/bin/bash
#exec st -c ytdownloader -e
{

	youtube-dl -f "bestvideo[height<=?1080]+bestaudio/best" --download-archive \
	$HOME/.local/scripts/script_assets/ytdl_dlarchive \
	--cookies $HOME/.local/scripts/script_assets/cookies.txt \
	"https://www.youtube.com/playlist?list=PLT79Xr8SUlLt0w7ouPJ2FS77aW1PdSH6b"
} 2>&1 | tee ~/.local/scripts/logs/ytdl_log.txt
