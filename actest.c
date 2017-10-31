#include "types.h" 
#include "user.h"
#include "stat.h"
#include "param.h" 
#include "fs.h" 

int main(int argc, char *argv[]) {
/* 
int pid = fork();
	if(pid > 0){
		printf(1, "parent: child=%d\n", pid);
		pid = wait(0);
		printf(1, "child %d is done\n", pid);
	}
	 else if(pid == 0){
		printf(1, "child: exiting\n");
		exit(0);
	} 
	else {
		printf(1, "fork error\n");
	}
exit(0);
*/ 

int pid1, pid2 = 0; 
int i = 3; 
int exit_status, ret_pid; 

pid1 = fork(); 

if( pid1 != 0) {
	printf(1, "%d\n", ++i); 
	pid2 = fork(); 
	if (pid2 != 0) {
		ret_pid = waitpid (pid1, &exit_status, 0);
		printf(1, "Successfully exited", ret_pid, exit_status);
		printf(1, "%d\n", ++i); 
		ret_pid = waitpid(pid2, &exit_status, 0); 
		printf(1, "Successfully exited", ret_pid, exit_status); 
		printf(1, "%d\n", ++i);  
 	} 
	else {	
		fork(); 
		printf(1, "%d\n", ++i); 
	}
exit(0); 
	} 
printf(1, "%d\n", ++i);  

}
