#!/usr/bin/env bash

cd $(dirname $0)

. ~/.bash_profile

password=${2}
colours

function check {
  if [ ! -d ./secret ]; then
    mkdir secret
  fi
}

function encrypt_all {
  check
  cd secret
  for file in $(ls *.dat); do
    encrypt ${file} $password
  done

  mv *.secret ../data
}

function decrypt_all {
  check
  cd data
  for file in $(ls *.secret); do
    decrypt ${file} $password
  done

  mv *.dat ../secret
}

function usage {
  echo "${amber_status} Usage ./encrypt.sh [-e: encrypt] [-d: decrypt] [password]"
  cleanup_colours && exit 1
}

if [ -z $1 ] || [ -z $2 ]; then
  usage
fi

if [ "$1" == "-e" ]; then
  encrypt_all
  echo "${green_status} Encryption complete."
  cleanup_colours && exit 0
fi

if [ "$1" == "-d" ]; then
  decrypt_all
  echo "${green_status} Decryption complete."
  cleanup_colours && exit 0
fi

usage
