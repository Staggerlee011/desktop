## Primary Desktop Apps

sudo su -

#updates

zypper update
## zypper --non-interactive install PACKAGE_NAME

# power management tools 
zypper --non-interactive install tlp tlp-rdw
systemctl enable tlp


# package management tools 

## snappy
zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Leap_15.0 snappy
zypper dup --from snappy
zypper install snapd
systemctl enable snapd
systemctl start snapd
systemctl enable snapd.apparmor
systemctl start snapd.apparmor

# chrome
zypper ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
zypper ref
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
zypper --non-interactive install google-chrome-stable

## slack
snap install slack

## remmina
snap install remmina

## vlc
zypper --non-interactive install vlc



# ide

## vscode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
zypper refresh
zypper --non-interactive install code

## azure-data-studio


# vm
## virtualbox
wget https://download.virtualbox.org/virtualbox/6.0.10/VirtualBox-6.0-6.0.10_132072_openSUSE150-1.x86_64.rpm
zypper --non-interactive install /path/to/manually/downloaded.rpm

## docker
zypper --non-interactive install docker docker-compose
systemctl enable docker
usermod -G docker -a stephen

# devops tools

## ansible
zypper --non-interactive install ansible

## terraform
snap install terraform

## packer
snap install packer


## vagrant
zypper --non-interactive install vagrant


# cloud

## aws-cli
zypper --non-interactive install aws-cli



# python

## python
zypper --non-interactive install python3

## pip
zypper --non-interactive install python3-pip

# pip installs 
pip install terrascan
pip install pre-commit
pip install adr-tools-python