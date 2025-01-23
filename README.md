![image](https://github.com/user-attachments/assets/cb2a1195-274c-40ce-81c1-a81ca363d738)
[Download](https://gamebanana.com/tools/18983)

# Can i use this for my mod?
Sure thing! Be sure to credit me in game or in the plataform you use for publish your mod! You can use the links below
https://santiagocalebe.neocities.org
https://youtube.com/@santiagocalebe

My icon: https://github.com/SantiagoCalebe/Expurfunkin-SourceCode/blob/main/example_mods/ModFolder/images/credits/santiago.png

# How to Use the Wallpaper Change Event

Inspired in mods that have this mechanic: [Mario's Madness](https://gamebanana.com/mods/359554), [Irrational Cruelty](https://gamejolt.com/games/NoMoreInnocence/928433) and [Myths of Yamaha DEMO](https://gamebanana.com/mods/569957)

## How to Use It

1. **Prepare Your Image**  
Make sure you have a BMP or PNG image ready for use.

![image](https://github.com/user-attachments/assets/c88df341-635a-4597-8b33-6932ed6060d1)


2. **In Game**  
Select the event and type in Value 1:
[ON] - Enables.
[OFF] - Disables.

In value 2, you will type (Only if Value 1 is 'ON')
yourimagename.extension

Yourimagename - Your image name
extension - The extension of your image, .PNG, .BMP

So it should look like below:

![image](https://github.com/user-attachments/assets/3a2451c6-6528-40b6-a3b5-1ab79ab541ce)


## Q&A:

Q: How to turn off log?
A: Take lines 33 to 48 off.

Q: How to change the directory?
A: 
    
    
## Common Errors

__________________________________________________________________________________________________________________________________________________

### By log:
- **Current wallpaper copied to: C:\Users\youruser\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper.png**
It means that the copy was sucessful. but, what is this copy?

This copy is basically your wallpaper to be in png, if you check `AppData\Roaming\Microsoft\Windows\Themes\` right now, you'll see that it has a file named TranscodedWallpaper. That if you change it into PNG, it's your wallpaper.

![image](https://github.com/user-attachments/assets/c8fb6e20-5464-4401-b261-8f62063c6952)

So the game copy it and turns the copy into PNG, so he can reset your wallpaper when the event is turned off or you leave the exit the game.

__________________________________________________________________________________________________________________________________________________

- **Returned Null: File not Found - Directory**:

It means the file was not found, double check the directory, remember, the default is yourmodfolder/images/

- **Returned Null: Failed to restore user's default wallpaper.**:
  
Restore Wallpaper was not sucessful.

__________________________________________________________________________________________________________________________________________________
  
- **Game crashes!!**:  
Have in mind that this script was only tested on 0.7.3, so newer versions like 1.0, 1.0.1 and older versions like 0.7.1, 0.7.1h, 0.6.3, 0.6.2 WASN'T TESTED, feel free to test and feedback it.

![Captura de tela 2025-01-23 110936](https://github.com/user-attachments/assets/4260cf1c-6bdd-4071-9309-c512ca2dce8c)


- **What versions of windows does it support?**:  
Windows 7 or newer. By any chance, this was tested in Windows 10 22H2. And hopefully this works in Windows 11 24H2.


- **Does it work on MAC or Linux**:  
Absolutely not. This acesses windows API. So if you want do this with mac you will have to port it yourself. IDK ¯\_(ツ)_/¯


Anyway, have fun with this.
