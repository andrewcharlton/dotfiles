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
