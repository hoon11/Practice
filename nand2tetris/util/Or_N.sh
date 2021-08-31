# usage: ./Or_N n a b out
#
# n   : count
# a   : variable name for a pin
# b   : variable name for b pin
# out : variable name for out pin

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"; exit 1
fi

if [ $# -ne 4 ]
  then
    echo "arguments are not enough"; exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi

number=$(($1))

for i in $(seq $number); do
    echo "    Or(a=$2[$(($i-1))], b=$3[$(($i-1))], out=$4[$(($i-1))]);"
done