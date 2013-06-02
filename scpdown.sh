# A convenience script to download a file to a server using SCP
# 2011 Zafar Iqbal

# Set the user name and server ip address here
userip="zaf@1.2.3.4"

###########################################################

source="$userip:$1"
destination=$1

echo "Downloading $destination from $userip"

len=${#destination}

# Check if input file is given
if [[ "$len" -eq 0 ]] ; then
	echo "file required."
	exit
fi

# Download file from server
scp $source $destination

# Optional user notification for job done
# tada.sh

