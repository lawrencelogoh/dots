# ~/.bashrc
#. /usr/share/LS_COLORS/dircolors.sh

export PATH="$HOME/.local/bin/:$HOME/.local/scripts/:$PATH"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases 
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

rightprompt()
{
	printf "%*s%s " $COLUMNS $(git branch 2>/dev/null | grep '^*' | sed s/..// | sed -re 's/(^\w*)/(\1)/')
    }

PS1='\[$(tput sc; rightprompt; tput rc)\] \[\u@\h \W\]   \n\[\033[31m\] > \[\033[37m\]'



# Default programs
export EDITOR="mg"
export TERMINAL="st"
export BROWSER="firefox"


