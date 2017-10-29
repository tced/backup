#include "types.h" 
#include "user.h"
#include "stat.h"
#include "param.h" 
#include "fs.h" 

int main(int argc, char *argv[]) {

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
}
