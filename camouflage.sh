#!/bin/bash
 mkdir -p dist/assets/audio

if [[ -f "public/zh/meow.html" ]]; then
	mv "public/index.html" "public/meow.html"
	mv "public/zh/meow.html" "public/index.html"
	mv "dist/index.html" "dist/meow.html"
	cp "public/index.html" "dist/index.html"
	wget -O "dist/assets/audio/world-execute-me-compressed.mp3" "https://world-execute-me.imzi.us.kg/assets/audio/world-execute-me-compressed.mp3"
fi

if [[ -f "public/zh/index.html" ]]; then
	if [[ ! -f "dist/assets/audio/world-execute-me-compressed.mp3" ]]; then
		wget -O "dist/assets/audio/world-execute-me-compressed.mp3" "https://world-execute-me.imzi.us.kg/assets/audio/world-execute-me-compressed.mp3"
	fi
	mv "public/zh" "dist/zh"
fi
