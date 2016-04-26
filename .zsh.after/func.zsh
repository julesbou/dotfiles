timer() {
  c=0;
  echo 'timer started';
  while true;
    do sleep 60;
    ((c++));
    echo $c;
  done
}

cconv() {
  LC_CTYPE=C
  LANG=C
  wget -qO- "http://www.google.com/finance/converter?a=$1&from=$2&to=$3" |  sed '/res/!d;s/<[^>]*>//g';
}

dico() {
  trans $1 | less
}
