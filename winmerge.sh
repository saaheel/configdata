#!/bin/sh

# Installation Instructions
#
# 1. Download and install winmerge: http://winmerge.org/
# 2. Copy winmerge.sh to C:\Program Files (x86)\Git\bin:
# 3. Add following to global .gitconfig
#   [diff]
#     tool = winmerge
#   [difftool "winmerge"]
#     cmd = 'C:/Program Files (x86)/Git/bin/winmerge.sh' "$LOCAL" "$REMOTE" "$BASE"
#

NULL="/dev/null"
if [ "$2" = "$NULL" ] ; then
   echo "removed: $3"
elif [ "$1" = "$NULL" ] ; then
   echo "added: $3"
else
   echo "changed: $3"
   "C:/Program Files (x86)/WinMerge/WinMergeU.exe" -e -ub -dl "Base" -dr "Mine" "$1" "$2"
fi