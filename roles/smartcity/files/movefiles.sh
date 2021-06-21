for i in /home/edge/infrastructure/data/pcap/*.pcap
do
	mv $i /mnt/imstorage/$(basename $i);
done
