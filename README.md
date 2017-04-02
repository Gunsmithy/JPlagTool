# JPlagTool
## Windows
1. Install the latest version of Git on your computer [from here](https://git-scm.com/download/win).  
2. During Git's installation, ensure Git is added to PATH as seen in Git_Install.png  
3. Install the latest Java Runtime Environment on your computer which can be [found here](https://ninite.com/java8/).  
4. Gather a list of student submission GitHub links like in student.txt  
5. Keep the list in the same directory as jplag.bat/jplag-2.11.8.jar and name it whatever you like.  
6. Open a command prompt in the directory by Shift+Right-clicking and selecting the option.  
7. Run the batch file in the following format:  
	jplag.bat "Path to Java.exe" "Path to Jplag.jar" "Path to store/read the code submissions" "Path where to store the results" "Name of text file in same directory with GitHub links - NO QUOTES!"  
	  
	as an example...  
	jplag.bat "C:\Program Files\Java\jre1.8.0_111\bin\java.exe" "C:\Users\100384029\Documents\GitHub\JPlagTool\jplag-2.11.8.jar" "C:\Users\100384029\Documents\GitHub\JPlagTool\submissions" "C:\Users\100384029\Documents\GitHub\JPlagTool\results" students.txt  
8. View the possible matches by opening index.html in your results directory  
9. More information on how JPlag works can be [found here](https://jplag.ipd.kit.edu/).  
## Linux (Ubuntu 16.04 Tested)
1. Install git on your computer: `sudo apt-get update && sudo apt-get install git`  
2. Install Java Runtime Environment on your computer: `sudo apt-get install default-jre`  
3. Gather a list of student submission GitHub links like in student.txt  
4. Keep the list in the same directory as jplag.bat/jplag-2.11.8.jar and name it whatever you like.  
5. Make the shell script executable with `chmod +x jplag.sh`  
6. Run the shell script in the following format:  
	./jplag.sh "Path to Jplag.jar" "Path to store/read the code submissions" "Path where to store the results" "Name of text file in same directory with GitHub links - NO QUOTES!"  
	  
	as an example...  
	./jplag.sh 'jplag-2.11.8.jar' 'submissions' 'results' 'students.txt'  
	