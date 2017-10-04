# Instructions - How to setup pi as a PIT detection site data logger  
  
### PIT site equipment  
  
MUX/tranceiver (FS1001M)  
24V DC power  
Raspberry Pi (Pi 3 model B)  
Pi power source  
USB to RS232 serial port cable (prolific)  
Hot Spot (Verizon)  
  
### Pi set-up  
  
Install Raspbian OS (use the googles)  
Configure settings (language, keyboard etc) by typing ```raspi-config```  
Set up wi-fi by editing /etc/wpa_supplicant/wpa_supplicant.conf  
**example**  
  
```  
country=US
network={  
	ssid="Verizon-56346ewtr"  
	psk="mysecretpasscode"  
	id_str="work"  
}  
```  
  
add as many networks as you wish  
  
Download desired software (e.g., R, vim, etc.) ```sudo apt-get r-base```  
Write bash script that launches screen and talks to MUX w/ 57600 baud rate  
Move script to ```/usr/local/bin``` (if put in ```~/home/bin``` it won't recognize when accessing remotely)  
create ```.screenrc``` in home directory and add ```logfile path/to/logfile.txt```. This is where your data will be stored and appended to.  

Add checkwifi.sh script to ```/usr/local/bin``` then edit your cron table (```crontab -e```) so the script runs occasionally. To run the script every 5 minutes enter ```*/5 * * * * /usr/bin/sudo -H /usr/local/bin/checkwifi.sh >> /dev/null 2>&1```

### Screen commands  
  
If you are trying to manipulate "screen" and getting an error mess. "Cannot open terminal...", issue the command:  
```script /dev/null``` This may happen when accessing remotely  
  
Start screen named MUX, in the background, with logfiles  
```screen -dmLS MUX /dev/ttyUSB0 57600```   
make a bash script including preious codes for ease  
  
Ctrl-a then...  
d ```detach```  
n ```next screen```  
k ```kill session```  
  
```screen -r``` will reattach screen  
test
