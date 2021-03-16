# Activity-faker
Because remote working should not be an excuse for surveillance

## Installation
* Download the project from [the releases page](https://github.com/altertek/activity-faker/releases)
* Extract the files anywhere on your computer

### Windows
This script uses Auto Hot key (Installer [here](https://www.autohotkey.com)) It's an automation scripting language for Windows.

**On Windows**: Retrieve `alwaysGreen.ahk` from the archive and run

    choco install autohotkey
    .\alwaysGreen.ahk

### Linux / MacOS / FreeBSD

This script uses Xdotool. It's a tool to simulate keyboard and mouse input.

**On Debian/Ubuntu**: Retrieve `activity.sh` from the archive and run

    apt install xdotool
    ./activity.sh

**On MacOS**: Retrieve `activity.sh` from the archive and run

    brew install xdotool
    ./activity.sh

**On FreeBSD**: Retrieve `activity.sh` from the archive and run

    pkg install xdotool
    ./activity.sh

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

Windows (AHK), Linux/MacOS/FreeBSD (Xdotool)
