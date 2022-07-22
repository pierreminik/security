if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

gpg --output pgp-key.txt --armor --export "${SIGNER}"
gpg --default-key "${SIGNER}" --output security.txt --clear-sign unsigned-security.txt
scp security.txt "${REMOTE_PATH}/security.txt"
scp pgp-key.txt "${REMOTE_PATH}/pgp-key.txt"
scp disclosure-policy.txt "${REMOTE_PATH}/disclosure-policy.txt"
