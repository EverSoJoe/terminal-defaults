# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ "$SHLVL" = 1 ]; then
  # when leaving the console clear the screen to increase privacy
  [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q

  # invalidate sudo cached credentials on logout
  sudo -k

  # empty cross instance vim clipboard
  > ~/.vimclipboard
fi
