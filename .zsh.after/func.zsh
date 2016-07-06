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

git_clean_branches() {
  git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d
}

url_size() {
  curl $1 --silent --write-out '%{size_download}\n' --output /dev/null
}
