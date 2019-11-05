- [Back](README.md) to README.md

# cmus

### To add a music library location
```
:add /home/username/Music/Albums
```

### Useful keys
```
v - stop playback

b - next track

z - previous track

c - pause playback

s - toggle shuffle (read about the m key below if you're going to use shuffle)

m - toggles the "aaa mode." aaa stands for artist, album, or all. If artist mode is on cmus will shuffle only between songs by the playing artist. In album mode cmus will shuffle between songs on the playing album. If all mode is on, cmus will shuffle between every song in your library. You can see the currently set "aaa mode" in the bottom right, next to where the display of the continue, repeat, and shuffle settings.

x - restart track

i - jump view to the currently playing track (handy when in shuffle mode)

/ - searching cmus works as in many Unix programs. Typing slash, a string, and enter will find the first instance of that string in your library. Press n to go to the next string, N to go to the previous. cmus's search isn't case sensitive and is quite smart; a search for damned insurrection will return Bulldozer's "Insurrection of the Living Damned" (rad tune).

- - reduce the volume by 10%

+ - increase the volume by 10%

man cmus-tutorial
```
