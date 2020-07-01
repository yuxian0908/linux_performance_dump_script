sudo ps -C mpstat_script -o pid=| sudo xargs kill -9
sudo ps -C ifconfig_script -o pid=| sudo xargs kill -9
sudo ps -C iostat_script -o pid=| sudo xargs kill -9
