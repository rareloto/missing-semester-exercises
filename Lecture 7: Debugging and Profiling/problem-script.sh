#!/bin/sh
## Example: a typical script with several problems
for f in $(ls *.m3u)
# Iterating over ls output is fragile. Use globs.shellcheck(SC2045)

do
  grep -qi hq.*mp3 $f \
  # Quote the grep pattern so the shell won't interpret it.shellcheck(SC2062)
  # Double quote to prevent globbing and word splitting.shellcheck(SC2086)


    && echo -e 'Playlist $f contains a HQ file in mp3 format'
    # Expressions don't expand in single quotes, use double quotes for that.shellcheck(SC2016)
    # In POSIX sh, echo flags are undefined.shellcheck(SC3037)
done
