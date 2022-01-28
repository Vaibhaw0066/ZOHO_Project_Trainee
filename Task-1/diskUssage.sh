#! /bin/bash

# df -BM

# echo
# echo "############ Human redable  ##########"
# echo
# df -h    # Human readble


ADMIN="root"
ALERT=90

EXCLUDE_LIST="/auto/ripper"

function main_prog() {
while read output;
do
echo $output
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1)
  partition=$(echo $output | awk '{print $2}')
  if [ $usep -ge $ALERT ] ; then
     echo "Running out of space "
  else
    echo "All good"
  fi
  echo
done
}

if [ "$EXCLUDE_LIST" != "" ] ; then
  df -H | grep -vE "^Filesystem|tmpfs|cdrom|${EXCLUDE_LIST}" | awk '{print $5 " " $6}' | main_prog
else
  df -H | grep -vE "^Filesystem|tmpfs|cdrom" | awk '{print $5 " " $6}' | main_prog
fi

