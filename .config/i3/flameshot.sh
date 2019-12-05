#!/bin/bash

if ! pgrep -x "flameshot" > /dev/null
then
	exec flameshot &
fi

exec flameshot gui
