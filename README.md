# migrate-deluge-windows-linux
A script to move deluge from Windows to Linux with minimal file rechecks required


## Background

Windows stores all the relevant Deluge configuration and states by default in C:\Users\USERNAME\AppData\Roaming\deluge 

What is most relevant to a system transfer with many torrents is to migrate the state directory as it contains all torrents and statistics for the torrents, as well as the directory they are stored in and the percentage complete/available. 

If you don't copy this data over, Deluge will be in a strange configuration and will probably discard all the states and statistics for torrents, and will force a re-check on the entire library. This can take days for terabytes of content, so ideally a script to update all references would be helpful.

## Usage

Pause all torrents in Deluge on Windows. Use the File->Quit option to close Deluge, and verify the system tray icon is gone and the program is closed.

Copy your entire existing deluge config from C:\Users\USERNAME\AppData\Roaming\deluge to <INSERT LINUX PATH HERE>

Run the script <FILE NAME OF SCRIPT HERE> with the text to find and the text to replace as noted in the command

Open deluge and confirm that all torrents show 100% and are still paused. Resume torrents and enjoy a migrated install without days of re-checking.
