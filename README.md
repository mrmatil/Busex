# Busex
Project for academic purposes only

## 1. Requirements specification
### 1.1. App Description
#### 1.1.1. Name
Full Name: Busex - your local Bus App 

Short Name: Busex


#### 1.1.2. Characteristics 
IOs App for small bus companies that enables users to check buses timetable at selected stop, how to get from point A to point B at selected time and much more.

#### 1.1.3 Technologies

Platform - IOS

Language - Swift

IDE - XCode

Frameworks/Libraries:
- RxSwift
- Moya/Alamofire
- RealmSwift
- TinyConstraints
## 2. Test scenarios - acceptance tests

## Test number: T1
Requirement number: R1</br>
Purpose of the test: Testing download and installation of the app, using App Store on Iphone, with Ios 11</br>
Type of user interaction: App Stroe app</br>
### Test scenario:
  1. User's Actions:
    1.1 User, on Iphone with Ios 11, searches for ,,Bussex" in App Store.</br>
    1.2 User clicks on download button.</br>
    1.3 User clicks on download button.</br>
  2. Software reaction</br>
    2.1 App Store downloads and installs Busex app on iphone.</br>
    2.2 App Store displays information that app is ready to use.</br>
  3. Result </br>
    3.1 Busex app is installed on the device and ready for using</br>

## Test number: T2.1
Requirement number: R2</br>
Purpose of the test: Testing if list of the bus connections is returned</br>
Type of user interaction: Form with fields to fill and check boxes</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User selects bus stop (start)</br>
    1.2 User selects bus stop (end)</br>
    1.3 User sets the time</br>
    1.4 User selects type of sorting</br>
    1.5 User selects timetable type.</br>
  2. Software reaction </br>
    2.1 Busex app searches for bus connections basing on users choices </br>
  3. Result </br>
    3.1 List of the bus connections is returned to user
    
 ## Test number: T2.2
Requirement number: R2</br>
Purpose of the test: Testing the data included in the list</br>
Type of user interaction: Form with fields to fill and check boxes, list type view</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User uses form to search for bus connection </br>
    1.2 User opens bus connection list </br>
  2. Software reaction </br>
    2.1 Busex app downloads data containing available bus connections </br>
    2.1 View displays bus connetion list which includes:
      * Name of the connetion
      * Time of arrival / departure
      * State of connection
      
  3. Result </br>
    3.1 List of buss connections (which includes: Time, Name and State) is displayed to the user
    
## Test number: T2.3
Requirement number: R2</br>
Purpose of the test: Testing if Busex app prompt available connections</br>
Type of user interaction: Form with fields to fill and check boxes</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User fills in ,,Arrival bus stop" and ,,Final bus stop" headings
  2. Software reaction </br>
    2.1 Busex app actively prompts matching (possible) results. </br>
  3. Result </br>
    3.1 List of (possible) results is displayed to the user, and is actively refreshed

## Test number: T3
Requirement number: R3</br>
Purpose of the test: Testing ,,previous' bus connections option</br>
Type of user interaction: Active list type view </br>
### Test scenario:
  1. User's Actions </br>
    1.1 User searches for bus connection </br>
    1.2 User upadets previous connections data by using swipe down gesture </br>
    1.3 User views previous bus connetions by using swipe left gesture </br>
  2. Software reaction </br>
    2.1 Data about previous connections is downloaded </br>
    2.2 List of previous connections is dispalyed </br>
  3. Result </br>
    3.1 Busex app downloads and dispalys list of the previous connections </br>
    
## Test number T4.1: 
Requirement number: R4</br>
Purpose of the test:  Testing searching by busline name option</br>
Type of user interaction: View with search form, list type view of available connections</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User searches for connection using busline name </br>
    1.2 User chooses bus stop and timetable type </br>
    1.3 User chooses departure time </br>
  2. Software reaction </br>
    2.1 Available connections data is downloaded </br>
    2.2 Connections data is returned in list type view </br>
  3. Result </br>
    3.1 List type view is displayed. </br>
    3.2 List type view includes informations about bus stops and arrival time on selected bus connection </br>
    
## Test number: T4.2
Requirement number: R4</br>
Purpose of the test: Testing searching by busline option suggestions</br>
Type of user interaction: Searcher, List type view</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User types in name of bus connection </br>
  2. Software reaction </br>
    2.1 App is actively refreshing possible results </br>
  3. Result </br>
    3.1 Acceptable results are shown on the list, while user types something in search field </br>
  
## Test number: T5
Requirement number: R6</br>
Purpose of the test: Testing searching for buss connections by using bus stop name option</br>
Type of user interaction: Searcher, Interactive list type view </br>
### Test scenario:
  1. User's Actions </br>
    1.1 User types in name of bus stop </br>
    1.2 User chooses the time and timetable type </br>
    1.3 User chooses bus connection </br>
  2. Software reaction </br>
    2.1 Available connections (on choosen bus stop) data is downloaded </br>
    2.1 Data is refactored basing on user's choices </br>
  3. Result </br>
    3.1 Timetable is dispalyed </br>
    3.2 List type view including bus stop name and time on choosen track is displayed
    
## Test number: T6
Requirement number: R6</br>
Purpose of the test: Testing lack of internet connection</br>
Type of user interaction: Message, Operating system</br>
### Test scenario:
  1. User's Actions </br>
    1.1 User open Busex app <br>
  2. Software reaction </br>
    2.1 Internet connection is beeing tested </br>
  3. Result </br>
    3.1 App displays an internet connection warning

## 3. Screenshots
### Bus connections
<img src="https://github.com/mrmatil/Busex/blob/master/screenshots/polaczenia2.gif?raw=true" width="30%">  <img src="https://github.com/mrmatil/Busex/blob/master/screenshots/polaczenia.gif?raw=true" width="30%">

### Bus Lines
<img src="https://github.com/mrmatil/Busex/blob/master/screenshots/linie.gif?raw=true" width="30%">

### Stops
<img src="https://github.com/mrmatil/Busex/blob/master/screenshots/przystanki.gif?raw=true" width="30%">


## 4. Licensing

### 4.1 Authors

1. Mateusz Łukasiński - mat.lukasinski@gmail.com
2. Mateusz Kusiak - timax2@wp.pl
3. Patryk Opis - opis.patryk@gmail.com

### 4.2 License 
```
Copyright © 2020 by Mateusz Łukasiński, Mateusz Kusiak, Patryk Opis. Busex
This application is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-nd/4.0/.
```
