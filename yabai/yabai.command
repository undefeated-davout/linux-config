#!/usr/bin/env sh

function countDown() {
  start=1
  end=5
  echo "please wait $end seconds"
  while [[ $start -lt $end ]]; do
    echo $(($end-$start))
    sleep 1
    start=$(($start+1))
  done
}

countDown

echo "brew services restart yabai"
brew services restart yabai
