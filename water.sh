echo "starting service"
service pilight start
sleep 5
echo "start watering"
pilight-send -p raw -c "283 1132 283 283 283 1132 283 283 283 1132 283 283 283 $
sleep 600
echo "stop watering"
pilight-send -p raw -c "283 1132 283 283 283 1132 283 283 283 1132 283 283 283 $
echo "stop service"
service pilight stop
