#!/bin/bash
# sanitizes source input to remove potential regex modifiers
# https://unix.stackexchange.com/questions/20804/in-a-regular-expression-which-characters-need-escaping
location=$(sed 's/[.[\(*^$+?{|]/\\&/g' <<<"$1")
# uses sed, -i does inplace, -E enables extended regex to use ()
sudo sed -i -E 's|(location)|$2|g' torrents.state
#todo: loop this through all relevant files
