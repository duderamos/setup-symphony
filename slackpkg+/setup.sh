#!/bin/bash

if [ -f "/var/log/packages/slackpkg+-1.7.0-noarch-10mt" ] ; then
  wget "https://ufpr.dl.sourceforge.net/project/slackpkgplus/slackpkg+-1.7.0-noarch-10mt.txz" -O "/tmp/slackpkgplus+-1.7.0-noarch.10mt.txz" &&
    upgradepkg --reinstall --install-new "/tmp/slackpkgplus+-1.7.0-noarch.10mt.txz"
fi

for file in blacklist greylist slackpkg.conf slackpkgplus.conf ; do
  cp "slackpkg+/$file" /etc/slackpkg
done

slackpkg update gpg &&
  slackpkg update &&
  slackpkg install multilib ktown &&
  slackpkg upgrade-all
