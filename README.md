# activity-faker
Because remote working should not be an excuse for surveillance  


## Installation

This script uses Auto Hot key. It's an automation scripting language for Windows.  

* Install AHK => https://www.autohotkey.com
* Download the file `alwaysGreen.ahk` anywhere on your computer

## How to use

* To start using it  
Simply double clic on the script to launch it.  

* To close it  
Right click on the green AHK icon in the windows task bar (near the clock). Then click "exit".  

### How it works

Every 5 minutes it takes the current coordinates of your mouse and makes it move 1 px in any direction.  
To a human user this is inconspicuous but for activity tracking systems it's sufficient.  
Tested with Microsoft Teams, Skype.  

### How to configure

You can change the time interval which is 5 minutes by default. Change to any other value in miliseconds.  
You can also update the number of pixels that the mouse should travel to.  

### Compatibility

Windows only