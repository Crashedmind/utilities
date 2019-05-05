for f in *.mp4;  do ffmpeg -i "$f" -vn -c:a libmp3lame -ar 44100 -ac 2 -ab 192k    "${f/%mp4/mp3}"; done;
for f in *.webm; do ffmpeg -i "$f" -vn                 -ar 44100       -ab 192k -y "${f/%webm/mp3}"; done;
for f in *.mkv; do ffmpeg -i "$f" -vn                 -ar 44100       -ab 192k -y "${f/%mkv/mp3}"; done;
