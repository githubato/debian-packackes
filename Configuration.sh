echo
echo Advanced configuration
echo
echo #############################################
echo
echo Just start this script once!
echo

# Tor installation
add-apt-repository ppa:webupd8team/tor-browser --yes
  apt-get install tor-browser --yes
    add-apt-repository --remove ppa:webupd8team/tor-browser --yes
      echo

# Docker installation
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" >> /etc/apt/sources.list.d/docker.list
apt-get update --fix-missing
apt-get purge lxc-docker* && apt-cache policy docker-engine
apt-get install -y docker-engine

# Dotfiles
curl https://raw.githubusercontent.com/githubato/Dotfiles/master/install.sh | sh \
&& dotfiles host

# Gosu
curl -o /usr/local/bin/gosu -SL \
  "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
&& chmod +x /usr/local/bin/gosu

# easy
curl https://raw.githubusercontent.com/githubato/easy/master/install.sh | sh

echo
echo "Done."
echo
