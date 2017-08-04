#!/usr/bin



# https://github.com/transcode-open/apt-cyg
function install_apt-cyg()
{
	lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
	install apt-cyg /bin
	rm apt-cyg
}


function install_necessary()
{
	echo "install necessary packages for me"
	apt-cyg install ascii autojump tree
}

install_apt-cyg
install_necessary