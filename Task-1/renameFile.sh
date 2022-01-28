

read -p "Enter the orignal filename : " filename

extension="${filename##*.}"
newFileName="$(date +"%D")_$(date +"%T").$extension"
newFileName=${newFileName//"/"/"-"}  # Unable to rename using forward slashes

echo
echo $filename
echo $newFileName
echo 

if [ -f $filename ]; then
    mv $filename $newFileName
    echo "$filename has been sucessfully renamed $newFileName"
else
    echo "No such file found in current directory."
fi

