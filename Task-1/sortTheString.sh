

read -a array
echo



length=${#array[@]}

#  Orignal array
echo "Orignal Array of words "
# for idx in "${!array[@]}";
# do
#     echo ${array[$idx]}
# done
echo "${array[@]}"
echo

for(( i = 0; i<$length-1;i++ )) 
do
    for (( j = $((i+1));j<$length;j++))
    do
        if [[ "${array[i]}" > "${array[j]}" ]]
        then 
            temp=${array[i]}
            array[i]=${array[j]}
            array[j]=$temp;
        fi
    done
done

echo
echo "After sorting the words array "
# echo "${array[@]}"
for idx in "${!array[@]}";
do
    echo ${array[$idx]}
done
