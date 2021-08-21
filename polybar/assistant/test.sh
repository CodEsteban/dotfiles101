variable="$1"


n=${#variable}
numberDeletions=$n
while (( $numberDeletions > 0 ))
do
  varbl=${variable::-$numberDeletions}
  echo $varbl
  numberDeletions=$(($numberDeletions - 1))
done
echo $1
n=${#variable}
numberDeletions=1
while (( $numberDeletions > $n ))
do
  varbl=${variable::-$numberDeletions}
  echo $varbl
  numberDeletions=$(($numberDeletions + 1))
done
