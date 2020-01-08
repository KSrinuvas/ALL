file=$1
counter=0

eout="evenfile.$$" # even file name
oout="oddfile.$$" # odd file name

if [ $# -eq 0 ]
then
    echo "$(basename $0) file"
    exit 1
fi

if [ ! -f $file ]
then
    echo "$file not a file"
    exit 2
fi

while read line
do
    # find out odd or even line number
    isEvenNo=$( expr $counter % 2 )

    if [ $isEvenNo -ne 0 ]
    then
        # even match
        echo $line >> $eout
    else
        # odd match
        echo $line >> $oout
    fi
    # increase counter by 1
    (( counter ++ ))
done < $file
echo "Even file - $eout"
echo "Odd file - $oout"
