#Requires -RunAsAdministrator

<#

    Workstation Configuration

    Uses chocolately to install a standard set of software used regularly

    view log: C:\ProgramData\chocolatey\logs\chocolatey.log
    ## view installed apps
    choco list --local-only
    
    Not installed:
        Windwos Store: PowerBI, Ubuntu, Debian

#>

############################################################
# Install Chocolatey
############################################################
if (!(Get-Package -Name *choco*))
{
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

## choco search
    # choco search chef


############################################################
## Windows 10 Config
############################################################

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Get-WindowsCapability -Online | ? name -like *OpenSSH.Server*
Add-WindowsCapability -Name OpenSSH.Server~~~~0.0.1.0 -Online

Set-Service sshd -StartupType Automatic
Set-Service ssh-agent -StartupType Automatic

Start-Service sshd
Start-Service ssh-agent

Get-Service -Name *ssh* | select DisplayName, Status, StartType

############################################################
## install
############################################################

## Apps
choco install visualstudiocode -y
choco install slack -y
choco install pandoc -y

## Source Control
choco install git -y
choco install github -y -ignore-checksums

## DevOps Tools 
choco install docker-desktop -y
choco install terraform -y
choco install chefdk -y
choco install packer -y
choco install vagrant -y

## Data Tools 
choco install azure-data-studio -y
choco install sql-server-management-studio -y

## Connection Tools
choco install putty -y
choco install mremoteng -y

## Cloud 
choco install azure-cli -y
choco install awscli -y

## Python
choco install python -y
choco install pip -y

## Pip
pip install pre-commit
pip install terrascan