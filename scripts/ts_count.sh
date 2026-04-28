#!/bin/sh

JS=$(cloc --vcs git --exclude-dir=test --include-lang=typescript,javascript,jsx --force-lang="JavaScript",jsx --only-count-files . | grep 'JavaScript' | awk '{print $2}')
TS=$(cloc --vcs git --exclude-dir=test --include-lang=typescript,javascript,jsx --force-lang="JavaScript",jsx --only-count-files . | grep 'TypeScript' | awk '{print $2}')

echo "Progress: ${JS} JS / ${TS} TS"
