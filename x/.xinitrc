if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap gb
xsetroot -cursor_name left_ptr
eval $(ssh-agent)

/* nitrogen --restore & */
/* compton & */
/* sxhkd & */
/* exec bspwm */
exec startxfce4
