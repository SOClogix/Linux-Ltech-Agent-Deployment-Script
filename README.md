# Linux-Ltech-Agent-Deployment-Script
A linux script which takes a URL as a parameter and installs the CW Automate Ltech Agent

Normal Usage:
1. In most cases use curl or wget to download the install_ltechagent.sh script
```
wget https://raw.githubusercontent.com/SOClogix/Linux-Ltech-Agent-Deployment-Script/refs/heads/main/install_ltechagent.sh
```
2. Run the downloaded script with an installer download link (URL below is an example)
```
./install_ltechagent.sh https://example.hostedrmm.com/LabTech/Deployment.aspx?InstallerToken=7143294ea3b42c48327d92c245
```

Optional Usage:
1. Download the Systemd_LTechAgent_x86_64.zip from https://github.com/SOClogix/Linux-Ltech-Agent-Deployment-Script/raw/refs/heads/main/Systemd_LTechAgent_x86_64.zip
```
wget https://github.com/SOClogix/Linux-Ltech-Agent-Deployment-Script/raw/refs/heads/main/Systemd_LTechAgent_x86_64.zip
```
2. Unzip the file via:
```
unzip Systemd_LTechAgent_x86_64.zip
```
3. Change to the unarchived directory
```
cd LTechAgent_x86_64
```
4. Open the install script for editing using your preferred text editor. i.e. vi, vim, nano
```
nano install.sh
```
5. The following variables need to have values set:
LT_SERVER_ADDRESS=
LT_SYSTEM_PASSWORD=
LT_LOCATION_ID=

LT_LOCATION_ID is the ID of the site to deploy the agent to/for.

Example:
```
LT_SERVER_ADDRESS=https://example.hostedrmm.com/
LT_SYSTEM_PASSWORD=PASSWORD1234
LT_LOCATION_ID=1
```
6. Run the installer
```
chmod +x install.sh && ./install.sh
```