#!/bin/bash
echo Downloading hosts file...
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts
echo Inspect the following output to see if anything looks amiss:
grep -E '^(\s*)[1-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\s*.*\..*' hosts
read -p "Do you wish to continue updating /etc/hosts? [y/N]" q
case $q in
	[yY] ) echo Proceeding. You might be prompted for your sudo password if not superuser.;
		sudo mv ./hosts /etc/hosts;;
	* ) echo Hosts update cancelled by user input.;
		rm ./hosts;
		exit;;
esac
echo Hosts file updated.
exit