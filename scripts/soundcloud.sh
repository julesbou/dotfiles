#!/bin/bash
#soundcloud music downloader by http://360percents.com - v3.0 on Nov 1st 2011
#Author: Luka Pusic <pusic93@gmail.com>

echo "[i] soundcloud.com music downloader by http://360percents.com (wget version)";


if [ -z "$1" ]; then
	echo "";echo "[i] Usage: `basename $0` <desination>";echo "";exit
fi

if [ -z "$2" ]; then
	echo "";echo "[i] Usage: `basename $0` <destination> http://soundcloud.com/link_with_tracks_on_page";echo "";exit
fi

pages=`wget "$2" -q --user-agent 'Mozilla/5.0' -O - | tr '"' "\n" | grep "tracks?page=" | cut -d "=" -f 2 | sort -nu | tail -n 1`

if [ -z "$pages" ]; then
	pages=1
fi

echo "[i] Found $pages pages of songs!"
for (( page=1; page <= $pages; page++ ))
do
if [ "$pages" = "1" ]; then
	this=`wget -q --user-agent='Mozilla/5.0' $2 -O -`;
else
	this=`wget -q --user-agent='Mozilla/5.0' $2?page=$page -O -`;
fi
songs=`echo "$this" | grep 'streamUrl' | tr '"' "\n" | sed 's/\\u0026amp;/\&/' | grep 'http://media.soundcloud.com/stream/' | sed 's/\\\\//'`;
songcount=`echo "$songs" | wc -l`
titles=`echo "$this" | grep 'title":"' | tr ',' "\n" | grep 'title' | cut -d '"' -f 4`

if [ -z "$songs" ]; then
	echo "[!] No songs found at $2." && exit
fi

echo "[+] Downloading $songcount songs from page $page..."

for (( songid=1; songid <= $songcount; songid++ ))
do
	title=`echo "$titles" | sed -n "$songid"p`
	echo "[-] Downloading $title..."
	url=`echo "$songs" | sed -n "$songid"p`;
	wget -c -q --user-agent='Mozilla/5.0' -O "$1/$title.mp3" $url;
done
done
