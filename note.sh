#!/usr/bin/env bash
note_name="$(date +%d-%m-%Y)"
current_date="$(date +%A,' '%d/%m/%Y)"
current_time="$(date +%H:%M)"
my_note="$HOME/notes/${note_name}.md"

[ ! -f ${my_note} ] && echo "## Your notes for: ${current_date}" >${my_note}

layout=(
  "normal G2o"
  "normal i## ${current_time}"
  "normal G2o"
  "normal zz"
  "startinsert"
)

nvim "${layout[@]/#/+}" ${my_note}

# make copies
tee ${note_name}.pdf ${note_name}.txt <${my_note} >/dev/null
