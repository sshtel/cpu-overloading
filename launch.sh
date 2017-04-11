CORE=($1)

if [ $CORE -eq  ]; then
    echo " usage : ./launch.sh {number of process} "
    exit 1
fi

echo $CORE

gcc app.c -o app

for (( c=0; c<$CORE; c++ ))
    do
      echo $c
      ./app &
    done
