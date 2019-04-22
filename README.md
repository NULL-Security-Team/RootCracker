# comp4801_rootCracker
Gain access to the root user by exploiting the vuln_fast program to add your username to the root user's .rhosts file to allow passwordless login using the rsh and rlogin commands.

vuln.sh : 
Removes the debug file (to clean up from any old exploit attempts) and runs the vulnerable program in a tight loop with a high nice value.

exploit.sh : 
Removes the debug file, and generates a symbolic link to a specified target in its place. This also happens in a tight loop such that exploit.sh and vuln.sh when run at the same time are competing to access the debug file (or symlink).

