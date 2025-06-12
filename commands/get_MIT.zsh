#!/usr/bin/env zsh

gh api repos/heydaytime/licenses/contents/MIT \
  -H "Accept: application/vnd.github.v3.raw" \
  > LICENSE

