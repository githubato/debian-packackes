echo

# Update, upgrade
apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get update --fix-missing

#############################################################################################
echo

# Packages
apt-get install --force-yes --yes --no-install-recommends \
tar \
gzip \
mime-support \
desktop-file-utils \
tree \
dpkg \
build-essential \
automake \
preload \
wget \
curl \
htop \
nmap \
make \
cmake \
ntfs-3g \
rsync \
hfsutils \
hfsprogs \
exfat-fuse \
archivemount \
makeself \
libfuse-dev \
apache2-utils \
libssl-dev \
man \
unzip \
bzip2 \
ca-certificates \
nano \
openssh-server \
openssh-client \
openvpn \
openssl \
binfmt-support \
# debootstrap \
dosfstools \
apt-cacher-ng \
privoxy \
apt-transport-https \
nfs-common \
lm-sensors # \
# cpulimit

#############################################################################################
echo

# Final upgrade
apt-get update --fix-missing
apt-get upgrade --force-yes --yes
echo
apt-get autoremove --force-yes --yes
apt-get clean
