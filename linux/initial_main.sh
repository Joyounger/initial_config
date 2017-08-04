#!/bin/bash

function install_necessary()
{
	echo "install necessary packages for me"
	sudo apt-get install ascii autojump geany meld codesearch tree
}

function install_unnecessary()
{
	read -p "install adb and fastboot ?(y/n)" select
	if [ $select == "y" ]; then
		sudo apt-get install adb fastboot
	fi

	read -p "install hardinfo ?(y/n)" select
	if [ $select == "y" ]; then
		sudo apt-get install hardinfo
	fi
}

function config_git()
{
	echo "git configuration"
	git config --global core.quotepath false
}

install_necessary
install_unnecessary
config_git






