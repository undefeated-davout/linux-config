#!/usr/bin/env sh

function countDown() {
  start=1
  # end=10
  echo "please wait $end seconds"
  while [[ $start -lt $end ]]; do
    echo $(($end-$start))
    sleep 1
    start=$(($start+1))
  done
}

end=3
echo "brew services restart yabai"
brew services restart yabai

~/work/repo/github.com/undefeated-davout/linux-config/shell/login.sh

end=7
countDown
echo "brew services restart yabai"
brew services restart yabai
