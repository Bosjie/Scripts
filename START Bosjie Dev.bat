@ECHO OFF
TITLE "DO NOT CLOSE - VM RUNNING"
ECHO:
ECHO ==========================
ECHO DO NOT CLOSE - STARTING VM
ECHO ==========================
ECHO:
cd /d "C:\Program Files\Oracle\VirtualBox"
VBoxManage.exe startvm "Bosjie Dev" --type headless
ECHO:
ECHO ==============
ECHO CONNECTING SSH
ECHO ==============
ECHO:
ssh -t bosjie@192.168.1.100 "echo -e '=====================================\nRUN ./start.sh TO START JEKYLL SERVER\n=====================================\n';bash"
ECHO:
ECHO ==============
ECHO TURNING OFF VM
ECHO ==============
ECHO:
cd /d "C:\Program Files\Oracle\VirtualBox"
VBoxManage.exe controlvm "Bosjie Dev" poweroff
ECHO:
PAUSE