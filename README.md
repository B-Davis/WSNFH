# WSNFH # Instructions - How to setup pi as a PIT detection site data logger

## Equipment 
### PIT site

MUX/tranceiver (FS1001M)
24V DC power
Raspberry Pi (Pi 3 model B)
Pi power source
USB to RS232 serial port cable (prolific)

### Pi set-up

Install Raspbian OS (use the googles)
Configure settings (languaage, keyboard etc) by typing > raspi-config
Set up wi-fi by editing /etc/wpa_supplicant/wpa_supplicant.conf
**example**
network={
	ssid="Verizon-56346ewtr"
	psk="mysecretpasscode"
	id_str="work"
}

add as many networks as you wish

Download desired software (e.g., R, vim, etc.) > sudo apt-geet r-base

 

