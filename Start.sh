echo
echo Update starting
echo

sudo apt-get install git --yes
sudo rm -r InstallStart
sudo git clone "https://github.com/gitoidevelopment/InstallStart"
chmod 666 InstallStart/

echo

sudo sh "InstallStart/Install.sh"
