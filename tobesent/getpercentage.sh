#!/bin/bash
echo 'Running job'
percent=`df --output=pcent / | tr -dc '0-9'`
currentpath=/home/edge/Smart-City/data/pcap
newpath=/home/edge/Smart-City/data/moving
if [ $percent -gt 75 ] 
then
files=`find $currentpath -type f -ctime 1 -not -path '*/\.*'
`
for f in $files 
do
	echo moving $f to $newpath
	mv $f $newpath

	filename=`basename $f`
	echo sending $filename to pronghorn
	
	scp -i /home/edge/.ssh/test_rsa $newpath/$filename ccarthen@pronghorn.rc.unr.edu:/data/gpfs/assoc/ncar_da/stage/failed/ 

	if [ $? -eq 0 ]; then
          echo SUCCESSFUL SEND $filename
	else
    	  echo FAILED TO SEND $filename
	fi

	
	echo removing $filename
	rm $newpath/$filename
done
fi

