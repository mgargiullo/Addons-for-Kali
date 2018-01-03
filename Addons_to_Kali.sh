#!/bin/bash

apt-get -y install gedit git gcc make cmake autoconf comerr-dev libbsd-dev libtalloc-dev libtevent-dev libpopt-dev libpcap-dev python-elixir ldap-utils rwho rsh-client x11-apps finger bdfproxy mitmproxy python-openssl openssl python-capstone python-requests python-m2crypto python-pil python-pip libxml2-dev libxslt-dev

# Backdoor Factory
out=''
if [ -d /opt/the-backdoor-factory ]
	then
		cd /opt/the-backdoor-factory/
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then ./install.sh ; fi
	else
		git clone https://github.com/secretsquirrel/the-backdoor-factory /opt/the-backdoor-factory
		cd /opt/the-backdoor-factory/
		./install.sh
fi
# Selenium
pip install --upgrade selenium
# HTTP Screenshot
out=''
if [ -d /opt/httpscreenshot ]
	then
		cd /opt/httpscreenshot
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then chmod +x install-dependencies.sh ; ./install-dependencies.sh ; fi
	else
		git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
		cd /opt/httpscreenshot/
		chmod +x install-dependencies.sh
		./install-dependencies.sh
fi
# SMBExec
out=''
if [ -d /opt/smbexec ]
	then
		cd /opt/smbexec
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ]
			then
				./install.sh
				echo "Select 1 - Debian"
				echo "Select all defaults"
				./install.sh
				echo "Select 4 to compile binaries"
		fi
	else
		git clone https://github.com/pentestgeek/smbexec.git /opt/smbexec
		cd /opt/smbexec
		./install.sh
		echo "Select 1 - Debian"
		echo "Select all defaults"
		./install.sh
		echo "Select 4 to compile binaries"
fi
# MASscan
out=''
if [ -d /opt/masscan ]
	then
		cd /opt/masscan
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then make && make install ; fi
	else
		git clone https://github.com/robertdavidgraham/masscan.git /opt/masscan
		cd /opt/masscan
		make
		make install
fi
# Clone Scripts
# CMS Map
out=''
if [ -d /opt/CMSmap ]
	then
		cd /opt/CMSmap
		out=`git pull`
	else
		git clone https://github.com/Dionach/CMSmap /opt/CMSmap
fi
# EyeWitness
out=''
if [ -d /opt/EyeWitness ]
	then
		cd /opt/EyeWitness
		out=`git pull`
	else
		git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/EyeWitness
fi
# Praedasploit
out=''
if [ -d /opt/praedasploit ]
	then
		cd /opt/praedasploit
		out=`git pull`
	else
		git clone https://github.com/MooseDojo/praedasploit /opt/praedasploit
fi
# SQLMap
out=''
if [ -d /opt/sqlmap ]
	then
		cd /opt/sqlmap
		out=`git pull`
	else
		git clone https://github.com/sqlmapproject/sqlmap /opt/sqlmap
fi
# Recon-ng
out=''
if [ -d /opt/recon-ng ]
	then
		cd /opt/recon-ng
		out=`git pull`
	else
		git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /opt/recon-ng
fi
pip install --upgrade PyPDF2
pip install --upgrade olefile
# THP2 Scripts
# Easy P
if [ -d /opt/Easp-P ]
	then
		cd /opt/Easp-P
		out=`git pull`
	else
		git clone https://github.com/cheetz/Easy-P.git /opt/Easp-P
fi
# Password Plus One
if [ -d /opt/Password_Plus_One ]
	then
		cd /opt/Password_Plus_One
		out=`git pull`
	else
		git clone https://github.com/cheetz/Password_Plus_One /opt/Password_Plus_One
fi
# Powershell Popup
if [ -d /opt/PowerShell_Popup ]
	then
		cd /opt/PowerShell_Popup
		out=`git pull`
	else
		git clone https://github.com/cheetz/PowerShell_Popup /opt/PowerShell_Popup
fi
# icmpshock
if [ -d /opt/icmpshock ]
	then
		cd /opt/icmpshock
		out=`git pull`
	else
		git clone https://github.com/cheetz/icmpshock /opt/icmpshock
fi
# brutescrape
if [ -d /opt/brutescrape ]
	then
		cd /opt/brutescrape
		out=`git pull`
	else
		git clone https://github.com/cheetz/brutescrape /opt/brutescrape
fi
# reddit_xss
if [ -d /opt/reddit_xss ]
	then
		cd /opt/reddit_xss
		out=`git pull`
	else
		git clone https://github.com/cheetz/reddit_xss /opt/reddit_xss
fi
# Original Versions
# PowerSploit
if [ -d /opt/PowerSploit ]
	then
		cd /opt/PowerSploit
		out=`git pull`
	else
		git clone https://github.com/PowerShellMafia/PowerSploit /opt/PowerSploit
fi
# PowerTools
if [ -d /opt/PowerTools ]
	then
		cd /opt/PowerTools
		out=`git pull`
	else
		git clone https://github.com/PowerShellEmpire/PowerTools /opt/PowerTools
fi
# nishang
if [ -d /opt/nishang ]
	then
		cd /opt/nishang
		out=`git pull`
	else
		git clone https://github.com/samratashok/nishang /opt/nishang
fi
# Forked Versions
# PowerSploit
if [ -d /opt/PowerSploit ]
	then
		cd /opt/PowerSploit
		out=`git pull`
	else
		git clone https://github.com/cheetz/PowerSploit /opt/HP_PowerSploit
fi
# PowerTools
if [ -d /opt/PowerTools ]
	then
		cd /opt/PowerTools
		out=`git pull`
	else
		git clone https://github.com/cheetz/PowerTools /opt/HP_PowerTools
fi
# nishang
if [ -d /opt/nishang ]
	then
		cd /opt/nishang
		out=`git pull`
	else
		git clone https://github.com/cheetz/nishang /opt/nishang-cheetz
fi
# Gitrob
out=''
if [ -d /opt/gitrob ]
	then
		cd /opt/gitrob
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ]
			then
				cd /opt/gitrob/bin
				gem install gitrob
		fi
	else
		git clone https://github.com/michenriksen/gitrob.git /opt/gitrob
		gem install bundler
		service postgresql restart
		su - postgres -c "createuser -s gitrob --pwprompt"
		su - postgres -c "createdb -O gitrob gitrob"
		cd /opt/gitrob/bin
		gem install gitrob
fi
# WPScan
out=''
if [ -d /opt/wpscan ]
	then
		cd /opt/wpscan
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then ./wpscan.rb --update ; else echo "WPScan up to date." ; fi
	else
		git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan
		cd /opt/wpscan
		./wpscan.rb --update
fi
# discover
out=''
if [ -d /opt/discover ]
	then
		cd /opt/discover
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then ./update.sh ; else echo "Discover up to date." ; fi
	else
		git clone https://github.com/leebaird/discover.git /opt/discover
		cd /opt/discover
		./update.sh
fi
# BeEF
out=''
if [ -d /opt/beef ]
	then
		cd /opt/beef
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ]
			then
				 chmod +x install-beef
				./install-beef
			else
				echo "BeEF up to date."
		fi
	else
		cd /opt/
		wget https://raw.github.com/beefproject/beef/a6a7536e/install-beef
		chmod +x install-beef
		./install-beef
fi
# Responder
if [ -d /opt/Responder ]
	then
		if grep -q SpiderLabs "/opt/Responder/.git/config"; then
			rm -rf /opt/Responder
			git clone https://github.com/lgandx/Responder.git /opt/Responder
		else
			cd /opt/Responder
			out=`git pull`
			if [ "$out" != 'Already up-to-date.' ] ; then echo "Responder updated." ; else echo "Responder is up to date." ; fi
		fi
	else
		git clone https://github.com/SpiderLabs/Responder.git /opt/Responder
fi
# DSHashes
if [ ! -d /opt/NTDSXtract ]
        then
                mkdir /opt/NTDSXtract
                wget http://ptscripts.googlecode.com/svn/trunk/dshashes.py -O /opt/NTDSXtract/dshashes.py
                echo "NTDSXtract installed."
        else
                echo "NTDSXtract is already installed."
fi
# SPARTA
if [ -d /opt/sparta ]
	then
		cd /opt/sparta
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then echo "Sparta updated." ; else echo "Sparta is up to date." ; fi
	else
		git clone https://github.com/secforce/sparta.git /opt/sparta
		echo "Sparta installed."
fi
# NoSQLMap
if [ -d /opt/NoSQLMap ]
	then
		cd /opt/NoSQLMap
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then echo "NoSQLMap updated." ; else echo "NoSQLMap is up to date." ; fi
	else
		git clone https://github.com/tcstool/NoSQLMap.git /opt/NoSQLMap
		echo "NoSQLMap installed."
fi
# Spiderfoot
if [ ! -d /opt/spiderfoot ]
	then
		mkdir /opt/spiderfoot && cd /opt/spiderfoot
		wget http://sourceforge.net/projects/spiderfoot/files/spiderfoot-2.5.1-src.tar.gz/download
		tar xzvf download
fi
pip install --upgrade lxml
pip install --upgrade netaddr
pip install --upgrade cherrypy
pip install --upgrade mako
# WCE
if [ ! -d /opt/wce ]
	then
		cd /tmp
		wget http://www.ampliasecurity.com/research/wce_v1_42beta_x64.zip
		mkdir /opt/wce && unzip wce_v1* -d /opt/wce && rm wce_1*.zip
		echo "WCE installed."
fi
# Mimikatz - https://github.com/gentilkiwi/mimikatz/releases/latest
if [ ! -d /opt/mimikatz ]
	then
		cd /opt/ && wget https://github.com/gentilkiwi/mimikatz/releases/download/2.0.0-alpha-20151113/mimikatz_trunk.zip
		unzip -d ./mimikatz mimikatz_trunk.zip
		echo "Mimikatz installed."
fi
# social-engineer-toolkit
out=''
if [ -d /usr/share/setoolkit ]
	then
		cd /opt/social-engineer-toolkit
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then ./setup.py install ; echo "Updated Social Engineering Toolkit" ; else echo "Social Engineering Toolkit is up to date" ; fi
	else
		git clone https://github.com/trustedsec/social-engineer-toolkit /opt/social-engineer-toolkit
		cd /opt/social-engineer-toolkit
		./setup.py install
		echo "Social Engineering Toolkit Installed."
		git clone https://github.com/trustedsec/social-engineer-toolkit /opt/social-engineer-toolkit
fi
# Impacket
out=''
if [ -d /opt/impacket ]
	then
		cd /opt/impacket
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then chmod +x setup.py ; ./setup.py install ; echo "Updated Impacket" ; else echo "Impacket is up to date" ; fi
	else
		git clone https://github.com/CoreSecurity/impacket /opt/impacket
		cd /opt/impacket
		chmod +x setup.py
		./setup.py install
		echo "Impacket Installed"
fi
# Veil-Framework
out=''
if [ -d /opt/Veil ]
	then
		cd /opt/Veil
		out=`git pull`
		if [ "$out" != 'Already up-to-date.' ] ; then ./Install.sh -c ; fi
	else
		git clone https://github.com/Veil-Framework/Veil /opt/Veil
		cd /opt/Veil
		./Install.sh -c
fi
# Fuzzing Lists
if [ -d /opt/SecLists ]
	then
		cd /opt/SecLists
		out=`git pull`
	else
		git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
fi
# Net-Creds
if [ -d /opt/net-creds ]
	then
		cd /opt/net-creds
		out=`git pull`
	else
		git clone https://github.com/DanMcInerney/net-creds.git /opt/net-creds
fi
# Mozilla Developer
# Web Developer Add-on: https://addons.mozilla.org/en-US/firefox/addon/web-developer/
# Tamper Data: https://addons.mozilla.org/en-US/firefox/addon/tamper-data/
# Foxy Proxy: https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/
# User Agent Switcher: https://addons.mozilla.org/en-US/firefox/addon/user-agent-switcher/
# Wifite
if [ -d /opt/wifite ]
	then
		cd /opt/wifite
		out=`git pull`
	else
		git clone https://github.com/derv82/wifite.git /opt/wifite
fi
# WIFIPhisher
if [ -d /opt/wifiphisher ]
	then
		cd /opt/wifiphisher
		out=`git pull`
	else
		git clone https://github.com/sophron/wifiphisher.git /opt/wifiphisher
fi
# TestSSL.sh
if [ -d /opt/testssl ]
	then
		cd /opt/testssl
		out=`git pull`
	else
		git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
fi
