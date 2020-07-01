sudo rm -r ./data
mkdir data

sudo ./mpstat_script $1 &
pid1=$!
echo "started p1: ${pid1}"

sudo ./iostat_script $1 &
pid2=$!
echo "started p2: ${pid2}"

sudo ./ifconfig_script $1 & 
pid3=$!
echo "started p3: ${pid3}"

trap "kill -2 $pid1 $pid2 $pid3" INT

wait
