# usage: ./Not_N n in out
#
# n   : count
# in   : variable name for a pin
# out : variable name for out pin


if [ $# -eq 0 ]
  then
    echo "No arguments supplied"; exit 1
fi

if [ $# -ne 3 ]
  then
    echo "arguments are not enough"; exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi

number=$(($1))

for i in $(seq $number); do
    echo "    Not(in=$2[$(($i-1))], out=$3[$(($i-1))]);"
done