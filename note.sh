#!/usr/bin/env bash
<<<<<<< HEAD:note_taking.sh

# some variables
note_name="$(date +%d/%m/%Y)"
=======
# some variables
note_name="$(date +%d-%m-%Y)"
>>>>>>> ba82169 (ok):note.sh
note_title="$(date +%A,' '%d/%m/%Y)"
note_time="$(date +%H:%M)"
# note name and directory
my_note="$HOME/notes/${note_name}.md"

[ ! -f ${my_note} ] && echo "## Your notes for: ${note_title}" >${my_note}

layout=(
  "normal G2o"
  "normal i## ${note_time}"
  "normal G2o"
  "normal zz"
  "startinsert"
)

nvim "${layout[@]/#/+}" ${my_note}

# make copies
tee ${note_name}.pdf ${note_name}.txt <${my_note} >/dev/null
