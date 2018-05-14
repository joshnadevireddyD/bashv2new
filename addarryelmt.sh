arr=(aa hh jj jj)
echo ${arr[*]}
arr=( "${arr[@]}" "new" )
echo ${arr[*]}
arr=( "new" "${arr[@]}" )
echo ${arr[*]}
