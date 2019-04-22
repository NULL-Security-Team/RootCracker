# comp4801_rootCracker
Gains access to the root user by exploiting the vuln_fast program to add your username to the root user's .rhosts file to allow passwordless login using the rsh and rlogin commands.

vuln.sh :  
Removes the debug file (to clean up from any old exploit attempts) and runs the vulnerable program in a tight loop with a high nice value.

exploit.sh :  
Removes the debug file, and generates a symbolic link to a specified target in its place. This also happens in a tight loop such that exploit.sh and vuln.sh when run at the same time are competing to access the debug file (or symlink).
 
Check permissions of vuln_fast :  
$ ls -la vuln_fast

Verify write to debug file :  
$ cat ~/.debug_log

Trace location of debug file :  
$ sudo strace -e trace=open,close,read,write ./vuln_fast "localhost student"

Run scripts :  
$ sh -x vuln.sh & sh -x exploit.sh

Check if exploit was successful :  
$ rsh -l root localhost whoami

Spawn a new superuser privileged shell : 
$ rsh -l root localhost bash



