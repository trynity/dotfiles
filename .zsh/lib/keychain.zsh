if [[ -z $SSH_CLIENT ]]; then
  if (($+commands[keychain])); then
  	eval $(keychain --eval)
  fi
fi

#SOCK="/tmp/ssh-agent-$USER-screen"

#if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]; then
#  rm -f /tmp/ssh-agent-$USER-screen
#  ln -sf $SSH_AUTH_SOCK $SOCK
#  export SSH_AUTH_SOCK=$SOCK
#fi
