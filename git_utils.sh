#!/bin/bash
function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

#Get the status of the repo and chose a symbol accordingly
# Symbols: ☺☻♦♣♠•◘○◙♂♀♪♫☼►◄↕‼¶§▬↨↑↓→←∟↔▲▼«»░▒▓│┤╡╢╖╕╣║╗╝╜╛┐└┴┬├─┼╞╟╚╔╩╦╠═╬╧╨╤╥╙╘╒╓╫╪┘┌█▄▌▀▐αßΓπΣσµΦΘΩδ∞φε∩≡±≥≤⌠⌡≈÷°∙√ⁿ²■ü
function git_status() {
    status=$(git status 2>&1 | tee)
    flags=""

    untracked=$(echo -n "${status}" 2> /dev/null | grep "Untracked files:" &> /dev/null; echo "$?")
    if [[ ${untracked} == 0 ]]; then flags="${flags}?"; fi

    newfile=$(echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?")
    if [[ ${newfile} == 0 ]]; then flags="${flags}+"; fi

    modified=$(echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?")
    if [[ ${modified} == 0 ]]; then flags="${flags}±"; fi

    renamed=$(echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo $?)
    if [[ ${renamed} == 0 ]]; then flags="${flags}→ "; fi

    deleted=$(echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?")
    if [[ ${deleted} == 0 ]]; then flags="${flags}x"; fi

    behind=$(echo -n  "${status}" 2> /dev/null | grep "Your branch is behind " &> /dev/null; echo "$?")
    if [[ ${behind} == 0 ]]; then flags="${flags}↓"; fi

    ahead=$(echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of " &> /dev/null; echo "$?")
    if [[ ${ahead} == 0 ]]; then flags="${flags}↑"; fi

    if [[ $flags != "" ]]; then
      echo -e "[$flags]"
    fi
}

