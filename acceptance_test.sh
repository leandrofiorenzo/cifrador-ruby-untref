#!/bin/bash

set -e


function check() {
  ruby cifrador_app.rb "$2" "$3" | grep "$4" >/dev/null && echo "$1:ok - $4" || echo "$1:error - $4"
}

echo 'Running acceptance tests for cifrador'
check '01' '3' 'hola' 'f(3,hola) = krod'
check '02' '3' ''     'f(3,) ='
check '03'
