export EDITOR=nvim
export BROWSER=/usr/bin/firefox

export XDG_CONFIG_HOME="$HOME/.config/"

export GOPATH="$HOME/.go:$HOME"

export PATH="$PATH:$HOME/.go/bin:$HOME/bin:$HOME/.local/scripts:$HOME/.yarn/bin"

export LS_COLORS="di=33:fi=0:ln=34:ex=31"

case `uname` in
    Linux)
        export TERM=termite
        ;;
    Darwin)
        export PATH="$PATH:/usr/local/opt/node@8/bin/"
        ;;
esac

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;34m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;40;37m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[0;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
