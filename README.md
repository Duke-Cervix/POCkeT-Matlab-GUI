# POCkeT-Matlab-GUI
All versions of Matlab GUI code for all Laptops/clinic sites

### Guide for setting up Matlab code on any PC ###

1. Download all files from "master" branch.

2. Store files in folder of your choosing on your pc. It is recommended that you store the code in a folder which is itself stored
   within the folder where you intend to store your image folders. Refer to lines 51 and 52 in the .m file for an example of this.

3. Change lines 51 and 52 in the .m file according to where you just stored the files in step 2.

4. Change line 57 in the .m file to set the number of images you want to capture with a single click of the image capture button.

5. Change line 61 in the .m file to set the study site name. This will change the names of the image files and the names of the
   folders where the image files are saved.
   
### Optional additional steps ###
Follow the steps below to add a desktop shortcut for the software.

6. Right click the windows batch file (located with all of the other code files from step 2) and select "Create Shortcut". Cut and
   paste the shortcut from your code folder to the desktop.
   
7. Right click the shortcut on the desktop and select, "Properties". 

8. Change the "Target" line to the full path name of the batch file
   location, including the name of the batch file and file extension. Make sure to surround the full path in quotation marks. See
   example below.
   (e.g. "E:\Dropbox\Images from DUHS\DO_NOT_TOUCH\English_Cervix_GUI.bat")
   
9. Change the "Start in" line to the folder where the windows batch file is stored. This should be the same as the file path from
   step 8 minus the file name and final backslash. Make sure to surround the full path in quotation marks. See example below.
   (e.g. "E:\Dropbox\Images from DUHS\DO_NOT_TOUCH")
