if [[ -z $SSH_CLIENT ]]; then
  if (($+commands[keychain])); then
		eval $(keychain --eval)
		KEYS=('id_rsa')
		for KEY in $KEYS; do
			KEY_PATH="${HOME}/.ssh/${KEY}"
			if ! ssh-add -l | grep -q "${KEYPATH}"; then
	  			eval $(ssh-add "${KEYPATH}" &> /dev/null)
	  		fi
		done
	fi
fi

#SOCK="/tmp/ssh-agent-$USER-screen"

#if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]; then
#  rm -f /tmp/ssh-agent-$USER-screen
#  ln -sf $SSH_AUTH_SOCK $SOCK
#  export SSH_AUTH_SOCK=$SOCK
#fi
