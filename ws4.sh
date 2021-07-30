#!/bin/sh

pgrep Thunar || exec Thunar &
exec alacritty -e br
