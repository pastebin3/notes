#!/usr/bin/env bash

# some variables
note_name="$(date +%d-%m-%Y)"
note_title="$(date +%A,' '%d/%m/%Y)"
note_time="$(date +%H:%M)"
# note name and directory
my_note="$HOME/notes/${note_name}.md"
# add a title to note if it doesn't exist
[ ! -f ${my_note} ] && echo "## Your notes for: ${note_title}" >${my_note}
# note layout
layout=(
  "normal G2o"
  "normal i## ${note_time}"
  "normal G2o"
  "normal zz"
  "startinsert"
)
# edit with your fave editor
nvim "${layout[@]/#/+}" ${my_note}

# make copies
tee ${note_name}.pdf ${note_name}.txt <${my_note} >/dev/null
