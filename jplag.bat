::Command format    - jplag.bat "Path to Java.exe" "Path to Jplag.jar" "Path to store/read the code submissions" "Path where to store the results" "Name of text file in same directory with GitHub links - NO QUOTES!"
::Example command   - jplag.bat "C:\Program Files\Java\jre1.8.0_111\bin\java.exe" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\jplag-2.11.8.jar" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\submissions" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\results" students.txt
::Example command 2 - jplag.bat "C:\Program Files\Java\jre1.8.0_111\bin\java.exe" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\jplag-2.11.8.jar" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\submissions2" "C:\Users\mechw\Dropbox\School\UOIT\Work\JPlag\results2" students2.txt
@echo off

set java=%1
set jplag=%2
set submissions=%3
set results=%4
set input=%5

mkdir %submissions%
xcopy %input% %submissions%
cd %submissions%
for /F "tokens=*" %%A in (%input%) do (git clone %%A)
%java% -jar %jplag% -l c/c++ %submissions% -r %results%
PAUSE