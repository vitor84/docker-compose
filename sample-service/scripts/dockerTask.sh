# Creating base variables for the command
filename=".logs/$@_build-$(date +%Y%m%d).log"
today=$(date +%Y%m%d_%H%M%S)

# Stopping and removing the service
docker-compose stop $@
docker-compose rm -f $@

# Rebuilding the image
mkdir -p .logs
echo "" >> $filename
echo "VHMP Software (C) 2018" >> $filename
echo "$today: Rebuilding $@" >> $filename 

docker-compose build $@ >> $filename

docker-compose up --no-start
docker-compose start $@
