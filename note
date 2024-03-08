#!/usr/bin/env bash
current_date="$(date +%d-%m-%Y)"
current_day="$(date +%A-%d-%B-%Y)"
current_time="$(date +%H:%M)"

my_note="$HOME/notes/${current_date}.md"
[ ! -f ${my_note} ] && echo "## Your notes for: ${current_day}" >${my_note}

layout=(
	"normal G2o"
	"normal i## ${current_time}"
	"normal G2o"
	"normal zz"
	"startinsert"
)
nvim "${layout[@]/#/+}" ${my_note}
tee ${current_date}.pdf ${current_date}.txt <${my_note} >/dev/null
