# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ "$SHLVL" = 1 ]; then
  # make tnybckp
  tnybckp=false

  if  "$tnybckp" ; then
    read -t 5 -n 1 -e -p "Make tnybckp? [N/y] " yn
    if [[ $yn == [Yy] ]]; then
      tnybckp save
      gdrive upload -p 1K3s78jHZb1NnWJphQeoi6j_3hSQTeUb- ~/backup*
      rm ~/backup*
    fi
  fi

  # when leaving the console clear the screen to increase privacy
  [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q

  # invalidate sudo cached credentials on logout
  sudo -k

  # empty cross instance vim clipboard
  > ~/.vimclipboard
fi
