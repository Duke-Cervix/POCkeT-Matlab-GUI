function varargout = English_Cervix_Clinic_DUHS(varargin)
% English_Cervix_Clinic_Ganjoni MATLAB code for English_Cervix_Clinic_Ganjoni.fig
%      English_Cervix_Clinic_Ganjoni, by itself, creates a new English_Cervix_Clinic_Ganjoni or raises the existing
%      singleton*.
%
%      H = English_Cervix_Clinic_Ganjoni returns the handle to a new English_Cervix_Clinic_Ganjoni or the handle to
%      the existing singleton*.
%
%      English_Cervix_Clinic_Ganjoni('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in English_Cervix_Clinic_Ganjoni.M with the given input arguments.
%
%      English_Cervix_Clinic_Ganjoni('Property','Value',...) creates a new English_Cervix_Clinic_Ganjoni or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before English_Cervix_Clinic_Ganjoni_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to English_Cervix_Clinic_Ganjoni_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help English_Cervix_Clinic_Ganjoni

% Last Modified by GUIDE v2.5 21-Dec-2015 16:15:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @English_Cervix_Clinic_DUHS_OpeningFcn, ...
                   'gui_OutputFcn',  @English_Cervix_Clinic_DUHS_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

%% Global Variables
%Change these to define storage paths for code (1) and images (2).
global key_directories;
key_directories = {};

key_directories(1) = {'C:\Users\Cervix Laptop 7\Dropbox\Images from Kenyatta\DO_NOT_TOUCH\'};
key_directories(2) = {'C:\Users\Cervix Laptop 7\Dropbox\Images from Kenyatta\'};

% Change this number to specify how many images are captured each time you
% press one of the image capture buttons
global images_per_click;
images_per_click = 3;

% Change this variable to match the site where images are being collected
global study_site;
study_site = 'Kenyatta';

% --- Executes just before English_Cervix_Clinic_Ganjoni is made visible.
function English_Cervix_Clinic_DUHS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has hormone_no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to English_Cervix_Clinic_Ganjoni (see VARARGIN)

global key_directories;

%For if patientID is used more than once
global first numTimesPressed;

first = 1;
numTimesPressed = 1; 

% Choose default command line output for English_Cervix_Clinic_Ganjoni
handles.output = hObject;
%insert logos
duke = imread('duke.PNG'); 
%imaqmem(1.4073e+14)
axes(handles.duke)
imshow(duke); 

% Change this line of code if you want to change folder the matlab files are saved in
 %cd('C:\Users\Cervix 9\Desktop\Test')
cd(key_directories{1});
set(handles.whitelight, 'UserData', 0);
set(handles.greenlight, 'UserData', 0);
set(handles.Lugols, 'UserData', 0);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes English_Cervix_Clinic_Ganjoni wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = English_Cervix_Clinic_DUHS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function patientID_Callback(hObject, eventdata, handles)
% hObject    handle to patientID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of patientID as text
%        str2double(get(hObject,'String')) returns contents of patientID as a double


% --- Executes during object creation, after setting all properties.
function patientID_CreateFcn(hObject, eventdata, handles)
% hObject    handle to patientID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in procedure.
function procedure_Callback(hObject, eventdata, handles)
% hObject    handle to procedure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns procedure contents as cell array
%        contents{get(hObject,'Value')} returns selected item from procedure

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function procedure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to procedure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startvid.
function startvid_Callback(hObject, eventdata, handles)
% hObject    handle to startvid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global key_directories;

% Change this line of code if you want to change folder the matlab files are saved in
cd(key_directories{1});

%export to excel files
% procval=get(handles.procedure,'Value');
% proclist=get(handles.procedure,'String');
% proc=proclist{procval};

axes(handles.axes1);
%;
%imaqmem(1.4073e+14)
vid=videoinput('winvideo',1,'MJPG_2592x1944');
%vid=videoinput('winvideo',2,'MJPG_2592x1944');


set(vid,'ReturnedColorSpace','rgb');
%Use with Supereyes A500+ 5.0MP Camera
% new autofocus imager
% Note this was reverse before, I think how matlab handles
% this array, its y vs. x not x vs y. super counterintuitive.

 hImage=image(zeros(1944,2592,3),'Parent',handles.axes1);
preview(vid,hImage);

src = getselectedsource(vid);
get(src);
set(src, 'FocusMode', 'auto');
set(src, 'ExposureMode', 'auto');
set(src, 'Sharpness', 0);

handles.vid=vid;
handles.src=src;
%setappdata(handles.vid, 'vid', vid);
assignin('base','vid',vid)
assignin('base','src',src)
start(vid);
guidata(hObject, handles);


% --- Executes on button press in whitelight.
function whitelight_Callback(hObject, eventdata, handles)
% hObject    handle to whitelight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global key_directories;
global images_per_click;
global study_site;
global numTimesPressed first;

%increase global variable
numTimesPressed = numTimesPressed + 1;

%Make sure a PatientID is typed in and formatted correctly
SID = get(handles.patientID,'String');
TF = isempty(SID);

STR = str2num(get(handles.patientID,'String'));
TFSTR = isempty(STR);

if (TF == 1) 
     warningMessage = sprintf('Error: Please Enter Patient ID');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif (TFSTR == 1)
    warningMessage = sprintf('Error: The Patient ID must only consist of numbers.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
else
    ID = str2num(get(handles.patientID,'String'));
end

%Create new file if one does not already exist for the patient

c = clock;
STRYEAR = num2str(c(1)); STRYEAR = STRYEAR(end-1:end);

val=get(handles.procedure,'Value');
switch val
    
    case 1
         warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
    case 2
        type1 = strcat(study_site,'-L0%1.0f-');
        type1 = strcat(type1, STRYEAR);
        Filename=sprintf(type1,ID);
    case 3
        type2 = strcat(study_site,'-C0%1.0f-');
        type2 = strcat(type2, STRYEAR);
        Filename=sprintf(type2,ID);
    case 4
        type3 = strcat(study_site,'-T0%1.0f-');
        type3 = strcat(type3, STRYEAR);
        Filename=sprintf(type3,ID);    
end


Pathname=key_directories{2};
%Pathname='C:\Users\Cervix Laptop 8\DesktopDropbox\Images from Ganjoni Clinic\' ;
fullpathname=strcat(Pathname,Filename);

if((exist(fullpathname, 'file') == 7) && (numTimesPressed == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif ((exist(fullpathname, 'file') == 7) && (first == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         first = 0;
         return; % Get out and don't process any further.
end
    
mkdir(fullpathname)
% cd(fullpathname)

first = 0;

handles.fullpathname=fullpathname;


counter = get(hObject, 'UserData') + 1;
set(hObject, 'UserData', counter);

fullpathname=handles.fullpathname;
 cd(fullpathname)

 fullpathname=handles.fullpathname;
 cd(fullpathname)
 
patientID=str2num(get(handles.patientID,'String'));

val=get(handles.procedure,'Value');
switch val
    case 1
        warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
         
    case 2
        patientType='L';%leep
%               
    case 3
        patientType='C';%colposcopy
%          
    case 4
        patientType='T';%test

end

src=handles.src;
vid=handles.vid;


%% POCKeT Colposcope White Light Acetic Acid at Focal Distance = 35 mm
tic
for i = 1:images_per_click
    set(src, 'FocusMode', 'auto');
    set(src, 'ExposureMode', 'auto');
    set(src, 'Sharpness', 0);
    %set(src, 'Exposure', -4);
    im = getsnapshot(vid);
    axes(handles.image)
    %imshow(im); 
    imwrite(im,[num2str(counter),'White_PC_Alpha2_AA_WD_35mm_',study_site,'-',patientType,'0',num2str(patientID),'-',num2str(i),'noComp300dpi','.tif'],'Compression','none','Resolution',300);
end

% 

elapsedTime_WAA = toc;
imshow(im);
timePerFrame_WAA =  elapsedTime_WAA/10;
effectiveFrameRate_WAA = 1/timePerFrame_WAA;
assignin('base','elapsedTime_WAA',elapsedTime_WAA)
assignin('base','effectiveFrameRate_WAA',effectiveFrameRate_WAA)
% Compute the time per frame and effective frame rate.
% 

% Change this line of code if you want to change folder the matlab files are saved in
 %cd('C:\Users\Cervix Laptop 8\DesktopDropbox\Images from Ganjoni Clinic\DO_NOT_TOUCH\')
cd(key_directories{1});
h=msgbox('White Light Image Capture Completed');

guidata(hObject,handles)


% --- Executes on button press in greenlight.
function greenlight_Callback(hObject, eventdata, handles)
% hObject    handle to greenlight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global key_directories;
global images_per_click;
global study_site;
global numTimesPressed first;

%increase global variable
numTimesPressed = numTimesPressed + 1;
%Make sure a Patient ID is typed in, and formatted correctly.
SID = get(handles.patientID,'String');
TF = isempty(SID);

STR = str2num(get(handles.patientID,'String'));
TFSTR = isempty(STR);

if (TF == 1) 
     warningMessage = sprintf('Error: Please Enter Patient ID');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif (TFSTR == 1)
    warningMessage = sprintf('Error: The Patient ID must only consist of numbers.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
else
    ID = str2num(get(handles.patientID,'String'));
end

%Create new file if one does not already exist for patient
c = clock;
STRYEAR = num2str(c(1)); STRYEAR = STRYEAR(end-1:end);

val=get(handles.procedure,'Value');
switch val
    
    case 1
         warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
    case 2
        type1 = strcat(study_site,'-L0%1.0f-');
        type1 = strcat(type1, STRYEAR);
        Filename=sprintf(type1,ID);
    case 3
        type2 = strcat(study_site,'-C0%1.0f-');
        type2 = strcat(type2, STRYEAR);
        Filename=sprintf(type2,ID);
    case 4
        type3 = strcat(study_site,'-T0%1.0f-');
        type3 = strcat(type3, STRYEAR);
        Filename=sprintf(type3,ID);    
end


Pathname=key_directories{2};
%Pathname='C:\Users\Cervix Laptop 8\Desktop\Dropbox\Images from Ganjoni Clinic\' ;
fullpathname=strcat(Pathname,Filename);

if((exist(fullpathname, 'file') == 7) && (numTimesPressed == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif ((exist(fullpathname, 'file') == 7) && (first == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         first = 0;
         return; % Get out and don't process any further.
end

mkdir(fullpathname)
% cd(fullpathname)

first = 0;

handles.fullpathname=fullpathname;


counter = get(hObject, 'UserData') + 1;
set(hObject, 'UserData', counter);

fullpathname=handles.fullpathname;
 cd(fullpathname)

fullpathname=handles.fullpathname;
 cd(fullpathname)
 
patientID=str2num(get(handles.patientID,'String'));

val=get(handles.procedure,'Value');
switch val
    case 1
        warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
         
    case 2
        patientType='L';%leep
%               
    case 3
        patientType='C';%colpscopy
%          
    case 4
        patientType='T';%test

end
src=handles.src;
vid=handles.vid;


%% POCKeT Colposcope Green Light Acetic Acid at Focal Distance = 35 mm
tic
for i = 1:images_per_click
    set(src, 'FocusMode', 'auto');
    set(src, 'ExposureMode', 'auto');
    set(src, 'Sharpness', 0);
    %set(src, 'Exposure', -4);
    im = getsnapshot(vid); 
    axes(handles.image)
    %imshow(im); 
    imwrite(im,[num2str(counter),'Green_PC_Alpha2_AA_WD_35mm_',study_site,'-',patientType,'0',num2str(patientID),'-',num2str(i),'noComp300dpi','.tif'],'Compression','none','Resolution',300);
end
 
 %imshow(im);
 elapsedTime_GAA = toc;
 imshow(im);
timePerFrame_GAA =  elapsedTime_GAA/10;
effectiveFrameRate_GAA = 1/timePerFrame_GAA;
assignin('base','elapsedTime_GAA',elapsedTime_GAA)
assignin('base','effectiveFrameRate_GAA',effectiveFrameRate_GAA)
      
% 
% toc
% elapsedTime0 = toc;

% Compute the time per frame and effective frame rate.
% timePerFrame0 = elapsedTime0/10;
% effectiveFrameRate0 = 1/timePerFrame0;

% Change this line of code if you want to change folder the matlab files are saved in
 %%cd('C:\Users\Cervix 9\Desktop\Test\')
 cd(key_directories{1});
 h=msgbox('Green Light Image Capture Completed');
guidata(hObject,handles)



% --- Executes on button press in New.
function New_Callback(hObject, eventdata, handles)
% hObject    handle to New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global key_directories;

% Change this line of code if you want to change folder the matlab files are saved in
%cd('C:\Users\Cervix 9\Desktop\Test\')
cd(key_directories{1});

global numTimesPressed first;

%set global varibles
numTimesPressed = 0;
first = 0;

cla(handles.image);
set(handles.whitelight, 'UserData', 0);
set(handles.greenlight, 'UserData', 0);
set(handles.Lugols, 'UserData', 0);
set(handles.patientID,'String','');
set(handles.procedure,'Value',1);
guidata(hObject,handles)


% --- Executes on mouse press over axes background.
function image1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to image1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %now set an image button doen fcn


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Lugols.
function Lugols_Callback(hObject, eventdata, handles)
% hObject    handle to Lugols (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global key_directories;
global images_per_click;
global study_site;
global numTimesPressed first;
%Make sure a PatientID is typed in and formatted correctly.
SID = get(handles.patientID,'String');
TF = isempty(SID);

STR = str2num(get(handles.patientID,'String'));
TFSTR = isempty(STR);

if (TF == 1) 
     warningMessage = sprintf('Error: Please Enter Patient ID');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif (TFSTR == 1)
    warningMessage = sprintf('Error: The Patient ID must only consist of numbers.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
else
    ID = str2num(get(handles.patientID,'String'));
end

%Create new file if one does not already exist for patientID
c = clock;
STRYEAR = num2str(c(1)); STRYEAR = STRYEAR(end-1:end);

val=get(handles.procedure,'Value');
switch val
    
    case 1
         warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
    case 2
        type1 = strcat(study_site,'-L0%1.0f-');
        type1 = strcat(type1, STRYEAR);
        Filename=sprintf(type1,ID);
    case 3
        type2 = strcat(study_site,'-C0%1.0f-');
        type2 = strcat(type2, STRYEAR);
        Filename=sprintf(type2,ID);
    case 4
        type3 = strcat(study_site,'-T0%1.0f-');
        type3 = strcat(type3, STRYEAR);
        Filename=sprintf(type3,ID);   
end


Pathname=key_directories{2};
%Pathname='C:\Users\Cervix Laptop 8\Desktop\Dropbox\Images from Ganjoni Clinic\' ;
fullpathname=strcat(Pathname,Filename);

if((exist(fullpathname, 'file') == 7) && (numTimesPressed == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
elseif ((exist(fullpathname, 'file') == 7) && (first == 1))
     warningMessage = sprintf('Warning: You have already typed in this Patient ID. Recapture image if this is the correct Patient ID.');
         uiwait(warndlg(warningMessage));
         first = 0;
         return; % Get out and don't process any further.
end

mkdir(fullpathname)
% cd(fullpathname)

first = 0;

handles.fullpathname=fullpathname;

counter = get(hObject, 'UserData') + 1;
set(hObject, 'UserData', counter);

cd(fullpathname)
 
patientID=str2num(get(handles.patientID,'String'));

val=get(handles.procedure,'Value');
switch val
    case 1
        warningMessage = sprintf('Error: Please Select Procedure');
         uiwait(warndlg(warningMessage));
         return; % Get out and don't process any further.
         
    case 2
        patientType='L';%leep
%               
    case 3
        patientType='C';%colpscopy
%          
    case 4
        patientType='T';%test

end
src=handles.src;
vid=handles.vid;





%% POCKeT Colposcope Lugol's Iodine at Focal Distance = 35 mm
tic
for i = 1:images_per_click
    set(src, 'FocusMode', 'auto');
    set(src, 'ExposureMode', 'auto');
    set(src, 'Sharpness', 0);
    %set(src, 'Exposure', -4);
    im = getsnapshot(vid); 
    axes(handles.image)
    %imshow(im);
    imwrite(im,[num2str(counter),'Lugols_PC_Alpha2_LI_WD_35mm_',study_site,'-',patientType,'0',num2str(patientID),'-',num2str(i),'noComp300dpi','.tif'],'Compression','none','Resolution',300);
end
%toc
%imshow(im);
 elapsedTime_WLI = toc;
 imshow(im);
timePerFrame_WLI =  elapsedTime_WLI/10;
effectiveFrameRate_WLI = 1/timePerFrame_WLI;
assignin('base','elapsedTime_WLI',elapsedTime_WLI)
assignin('base','effectiveFrameRate_WLI',effectiveFrameRate_WLI)

% toc
% elapsedTime0 = toc;

% Compute the time per frame and effective frame rate.
% timePerFrame0 = elapsedTime0/10;
% effectiveFrameRate0 = 1/timePerFrame0;

% Change this line of code if you want to change folder the matlab files are saved in
 %cd('C:\Users\Cervix 9\Desktop\Test')
 cd(key_directories{1});


 h=msgbox('Lugols Image Capture Completed');
guidata(hObject,handles)


% --- Executes on button press in checkbox36.
function checkbox36_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox36


% --- Executes on button press in openimages.
function openimages_Callback(hObject, eventdata, handles)
% hObject    handle to openimages (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fullpathname=handles.fullpathname;
winopen(fullpathname)


guidata(hObject,handles)


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%vid=handles.vid;
% stop(vid);
%vid = getappdata(vid, 'vid');
vid=handles.vid;
flushdata(vid);
stop(vid);
flushdata(vid,'all');       
%delete(vid);
cla(handles.axes1);
guidata(hObject,handles)


% --- Executes during object deletion, before destroying properties.
function uipanel67_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uipanel67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
