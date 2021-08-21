#! /bin/bash
sed -i "5s/.*/$$/" /tmp/notes-msg

cd ~/.config/polybar/assistant

#pid=$(cat /tmp/notes-msg | sed -n "5 p")
#if [[ ! -z $pid ]] 
#then
#  tail --pid=$pid -f /dev/null
#fi
source words.sh $1 $2
output="$outputVar "
n=${#output}
 numberDeletions=$n
 while (( $numberDeletions > 0 ))
 do
   varbl=${output::-$numberDeletions}
   echo "$varbl│"
   numberDeletions=$(($numberDeletions - 1))
   sleep 0.07
 done
echo "$outputVar "
sleep 0.5
echo "$outputVar│"
sleep 0.5
echo "$outputVar "
sleep 0.5
echo "$outputVar│"
sleep 0.3
n=${#outputVar}
numberDeletions=1    
while (( $numberDeletions < $n ))     
do    
  deletedVar=${outputVar::-$numberDeletions}    
  echo "$deletedVar│"
  numberDeletions=$(($numberDeletions + 1))    
  sleep 0.07
done
echo "  "
exit 0

