#!/bin/bash
#
# Inspired by mcthomas's am.sh at https://github.com/mcthomas/Apple-Music-CLI-Player#readme
# which is licensed under MIT
#
#
# MIT License
#
# Copyright (c) 2022 Matt Thomas
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

MUSIC_PROCESS=$(pgrep -fl Music.app)

if [[ $? = 0 ]]; then
  name=$(osascript -e 'tell application "Music" to get name of current track' | head -c 50)
  artist=$(osascript -e 'tell application "Music" to get artist of current track' | head -c 50)

  echo "$artist - $name"
else
  exit 1
fi
