#!/usr/bin/env bash
set -e
pkg=$(go list)
for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  if [[ dir = "src" ]]; then
    go vet $pkg/$dir
  fi
done
