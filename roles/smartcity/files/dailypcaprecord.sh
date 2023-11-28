echo "starting daily pcap recording for sensors at this street corner"
curl "localhost:40001/start/1?timeout=30000&count=16"
curl "localhost:40001/start/2?timeout=30000&count=16"