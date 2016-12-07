# POCkeT-Matlab-GUI
All versions of Matlab GUI code for all Laptops/clinic sites

### Guide for setting up Matlab code on any PC ###

1. Navigate to the master branch. To do this, click the "branch" button on the left hand side of the screen. A drop down menu        will appear. Select "master".

2. Click the "Download or clone" button on the right side of the screen. A drop down menu will appear. Select "Download ZIP".

3. Extract the files to the folder of your choosing on your pc. It is recommended that you store the code files in a folder          which is itself stored within the folder where you intend to store your image folders. Refer to lines 51 and 52 in the .m          file for an example of this.

4. Change lines 51 and 52 in the .m file according to where you just stored the files in step 3.

5. Change line 57 in the .m file to set the number of images you want to capture with a single click of the image capture            button.

6. Change line 61 in the .m file to set the study site name. This will change the names of the image files and the names of the
   image folders
   
### Optional additional steps ###

6. Right click the windows batch file (located with all of the other code files from step 3 above) and select "Create Shortcut".      Cut and paste the new shortcut to the desktop.
   
7. Right click the shortcut on the desktop and select, "Properties". 

8. Navigate to the the "Shortcut" tab. Change the "Target" line to the full path name of the batch file location, including the      name of the batch file and file extension. Make sure to surround the full path in quotation marks. See example below.
   (e.g. "E:\Dropbox\Images from DUHS\DO_NOT_TOUCH\English_Cervix_GUI.bat")
   
9. Change the "Start in" line to the folder where the windows batch file is stored. This should be the same as the file path          from the previous step minus the file name and final backslash. Make sure to surround the full path in quotation marks. See        example below.
   (e.g. "E:\Dropbox\Images from DUHS\DO_NOT_TOUCH")

10. Click "Apply". Click "OK".
