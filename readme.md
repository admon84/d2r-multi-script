# d2r-multi-script

A lightweight PowerShell script that uses [Handle](https://docs.microsoft.com/en-us/sysinternals/downloads/handle) (a Sysinternals utility) to close the D2R "Check For Other Instances" process handle, making it easier to run more than one copy of Diablo II Resurrected.

The same steps can be done manually using Process Explorer. I found that to be cumbersome and created this script to use myself, and now I'm sharing it with you.

## Requirements

- More than one Battle.net account
- More than one licensed copy of Diablo II Resurrected
- [Handle](https://docs.microsoft.com/en-us/sysinternals/downloads/handle) (used to terminate process handles by the d2r multi script)

## First time setup

1. Enable "Allow multiple instance of Battle.net" in your Battle.net app settings

2. In a File Explorer, navigate to your D2R installation folder (usually `C:\Program Files (x86)\Diablo II Resurrected`) and make a copy of the folder with a different name for each game/instance you plan to run

3. Save the [d2rms.ps1](d2rms.ps1) script file to your PC (to make it easier to run this script later, you can save this file to your user/home folder such as `C:\Users\YourUsername\`)

4. Download [Handle](https://docs.microsoft.com/en-us/sysinternals/downloads/handle) and extract the files:
   - Move handle.exe to the same folder where you saved the d2rms.ps1 script
   - (or) Update your Path environment variable to include the path to handle.exe

5. (Optional) Create desktop shortcuts to each **Diablo II Resurrected Launcher** file in each copy of the game folder you created

## How to use the d2r multi script (d2rms.ps1)

1. Run the **Diablo II Resurrected Launcher** to open your first copy of the game

2. Login to your Battle.net account and click Play

3. Run the `d2rms.ps1` script in Windows PowerShell as Administrator to terminate the D2R "Check For Other Instances" process handle

4. Run the **Diablo II Resurrected Launcher** to open your next copy of the game

5. Login to your next Battle.net account and click Play

6. Rinse and repeat steps 3-5 as many times as needed

If you did everything correctly, there will be a "Play" button instead of a "Playing Now" button when you log in to your other accounts.

## Screenshots

When a D2R "Check For Other Instances" process handle and terminated:
![d2rms success screenshot](https://user-images.githubusercontent.com/10291543/153690772-1cd69221-ee96-412e-b7a0-d002f63cf3e7.png)

When a D2R "Check For Other Instances" process handle is not found to be running:
![d2rms error screenshot](https://user-images.githubusercontent.com/10291543/153690778-89a93142-151f-4953-873d-e8a63e60b697.png)

## Troubleshooting

Always use the **Diablo II Resurrected Launcher** icon or shortcut to launch D2R when multi-boxing.  If you use the generic **Battle.net Launcher** icon, this process may not work.

## Credits

Inspired by [multi boxing D2R on r/Diablo_2_Resurrected](https://www.reddit.com/r/Diablo_2_Resurrected/comments/qocsfu/multi_boxing_d2r/)