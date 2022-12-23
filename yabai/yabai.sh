#!/usr/bin/env sh

function countDown() {
  start=1
  echo "please wait $end seconds"
  while [[ $start -lt $end ]]; do
    echo $(($end-$start))
    sleep 1
    start=$(($start+1))
  done
}

end=7
countDown
echo "brew services restart yabai"
brew services restart yabai
