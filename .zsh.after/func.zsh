timer() {
  c=0;
  echo 'timer started';
  while true;
    do sleep 60;
    ((c++));
    echo $c;
  done
}
