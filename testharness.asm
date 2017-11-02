
_testharness:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
	
	int exitWait(void);
	int waitPid(void);
	int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  12:	83 ec 08             	sub    $0x8,%esp
  15:	68 1c 0f 00 00       	push   $0xf1c
  1a:	6a 01                	push   $0x1
  1c:	e8 ef 07 00 00       	call   810 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	5a                   	pop    %edx
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 16 06 00 00       	call   640 <atoi>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	83 f8 01             	cmp    $0x1,%eax
  30:	74 4d                	je     7f <main+0x7f>
	exitWait();
  else if (atoi(argv[1]) == 2)
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 03 06 00 00       	call   640 <atoi>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	83 f8 02             	cmp    $0x2,%eax
  43:	74 41                	je     86 <main+0x86>
	waitPid();
  else if (atoi(argv[1]) == 3)
  45:	83 ec 0c             	sub    $0xc,%esp
  48:	ff 73 04             	pushl  0x4(%ebx)
  4b:	e8 f0 05 00 00       	call   640 <atoi>
  50:	83 c4 10             	add    $0x10,%esp
  53:	83 f8 03             	cmp    $0x3,%eax
  56:	74 35                	je     8d <main+0x8d>
	PScheduler();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the priority scheduler \n");
  58:	50                   	push   %eax
  59:	50                   	push   %eax
  5a:	68 50 0f 00 00       	push   $0xf50
  5f:	6a 01                	push   $0x1
  61:	e8 aa 07 00 00       	call   810 <printf>
  66:	83 c4 10             	add    $0x10,%esp
  
    // End of test
	 exit(0);
  69:	83 ec 0c             	sub    $0xc,%esp
  6c:	6a 00                	push   $0x0
  6e:	e8 3f 06 00 00       	call   6b2 <exit>
 }
  73:	8d 65 f8             	lea    -0x8(%ebp),%esp
  76:	31 c0                	xor    %eax,%eax
  78:	59                   	pop    %ecx
  79:	5b                   	pop    %ebx
  7a:	5d                   	pop    %ebp
  7b:	8d 61 fc             	lea    -0x4(%ecx),%esp
  7e:	c3                   	ret    
	int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1)
	exitWait();
  7f:	e8 1c 00 00 00       	call   a0 <exitWait>
  84:	eb e3                	jmp    69 <main+0x69>
  else if (atoi(argv[1]) == 2)
	waitPid();
  86:	e8 f5 00 00 00       	call   180 <waitPid>
  8b:	eb dc                	jmp    69 <main+0x69>
  else if (atoi(argv[1]) == 3)
	PScheduler();
  8d:	e8 9e 02 00 00       	call   330 <PScheduler>
  92:	eb d5                	jmp    69 <main+0x69>
  94:	66 90                	xchg   %ax,%ax
  96:	66 90                	xchg   %ax,%ax
  98:	66 90                	xchg   %ax,%ax
  9a:	66 90                	xchg   %ax,%ax
  9c:	66 90                	xchg   %ax,%ax
  9e:	66 90                	xchg   %ax,%ax

000000a0 <exitWait>:
    // End of test
	 exit(0);
 }
  
int ret_pid;  
int exitWait(void) {
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	53                   	push   %ebx
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  a4:	bb 01 00 00 00       	mov    $0x1,%ebx
    // End of test
	 exit(0);
 }
  
int ret_pid;  
int exitWait(void) {
  a9:	83 ec 1c             	sub    $0x1c,%esp
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  ac:	68 30 0b 00 00       	push   $0xb30
  b1:	6a 01                	push   $0x1
  b3:	e8 58 07 00 00       	call   810 <printf>
  b8:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i < 2; i++) {
    pid = fork();
  bb:	e8 ea 05 00 00       	call   6aa <fork>
    if (pid == 0) { // only the child executed this code
  c0:	83 f8 00             	cmp    $0x0,%eax
  c3:	75 3b                	jne    100 <exitWait+0x60>
      if (i == 0)
  c5:	83 fb 01             	cmp    $0x1,%ebx
  c8:	0f 84 82 00 00 00    	je     150 <exitWait+0xb0>
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);
  }
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
  ce:	e8 5f 06 00 00       	call   732 <getpid>
  d3:	6a ff                	push   $0xffffffff
  d5:	50                   	push   %eax
  d6:	68 6c 0b 00 00       	push   $0xb6c
  db:	6a 01                	push   $0x1
  dd:	e8 2e 07 00 00       	call   810 <printf>
      exit(-1);
  e2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  e9:	e8 c4 05 00 00       	call   6b2 <exit>
  ee:	83 c4 10             	add    $0x10,%esp
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  f1:	83 fb 02             	cmp    $0x2,%ebx
  f4:	75 30                	jne    126 <exitWait+0x86>
	  printf(2, "\nError using fork\n");
      exit(-1);
    }
  }
  return 0;
}
  f6:	31 c0                	xor    %eax,%eax
  f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  fb:	c9                   	leave  
  fc:	c3                   	ret    
  fd:	8d 76 00             	lea    0x0(%esi),%esi
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent exeecutes this code
 100:	7e 2e                	jle    130 <exitWait+0x90>
      ret_pid = wait(&exit_status);
 102:	8d 45 f4             	lea    -0xc(%ebp),%eax
 105:	83 ec 0c             	sub    $0xc,%esp
 108:	50                   	push   %eax
 109:	e8 ac 05 00 00       	call   6ba <wait>
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
 10e:	ff 75 f4             	pushl  -0xc(%ebp)
 111:	50                   	push   %eax
 112:	68 a8 0b 00 00       	push   $0xba8
 117:	6a 01                	push   $0x1
 119:	e8 f2 06 00 00       	call   810 <printf>
 11e:	83 c4 20             	add    $0x20,%esp
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
 121:	83 fb 02             	cmp    $0x2,%ebx
 124:	74 d0                	je     f6 <exitWait+0x56>
 126:	83 c3 01             	add    $0x1,%ebx
 129:	eb 90                	jmp    bb <exitWait+0x1b>
 12b:	90                   	nop
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if (pid > 0) { // only the parent exeecutes this code
      ret_pid = wait(&exit_status);
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
    } else  // something went wrong with fork system call
    {  
	  printf(2, "\nError using fork\n");
 130:	83 ec 08             	sub    $0x8,%esp
 133:	68 c0 0f 00 00       	push   $0xfc0
 138:	6a 02                	push   $0x2
 13a:	e8 d1 06 00 00       	call   810 <printf>
      exit(-1);
 13f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 146:	e8 67 05 00 00       	call   6b2 <exit>
 14b:	83 c4 10             	add    $0x10,%esp
 14e:	eb a1                	jmp    f1 <exitWait+0x51>
  for (i = 0; i < 2; i++) {
    pid = fork();
    if (pid == 0) { // only the child executed this code
      if (i == 0)
      {
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 150:	e8 dd 05 00 00       	call   732 <getpid>
 155:	6a 00                	push   $0x0
 157:	50                   	push   %eax
 158:	68 6c 0b 00 00       	push   $0xb6c
 15d:	6a 01                	push   $0x1
 15f:	e8 ac 06 00 00       	call   810 <printf>
      exit(0);
 164:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 16b:	e8 42 05 00 00       	call   6b2 <exit>
 170:	83 c4 10             	add    $0x10,%esp
 173:	eb b1                	jmp    126 <exitWait+0x86>
 175:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <waitPid>:
    }
  }
  return 0;
}

int waitPid(void){
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 185:	31 db                	xor    %ebx,%ebx
    }
  }
  return 0;
}

int waitPid(void){
 187:	83 ec 28             	sub    $0x28,%esp
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 18a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 191:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 198:	68 ec 0b 00 00       	push   $0xbec
 19d:	6a 01                	push   $0x1

int waitPid(void){
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 19f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 1a6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 1ad:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 1b4:	e8 57 06 00 00       	call   810 <printf>
 1b9:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1bc:	e8 e9 04 00 00       	call   6aa <fork>
	
    if (pid_a[i] == 0) { // only the child executed this code
 1c1:	85 c0                	test   %eax,%eax
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1c3:	89 44 9d e4          	mov    %eax,-0x1c(%ebp,%ebx,4)
	
    if (pid_a[i] == 0) { // only the child executed this code
 1c7:	0f 84 33 01 00 00    	je     300 <waitPid+0x180>
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 1cd:	83 c3 01             	add    $0x1,%ebx
 1d0:	83 fb 05             	cmp    $0x5,%ebx
 1d3:	75 e7                	jne    1bc <waitPid+0x3c>
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);}}
       
      sleep(5);
 1d5:	83 ec 0c             	sub    $0xc,%esp
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1d8:	8d 5d e0             	lea    -0x20(%ebp),%ebx
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);}}
       
      sleep(5);
 1db:	6a 05                	push   $0x5
 1dd:	e8 60 05 00 00       	call   742 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1e2:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1e5:	83 c4 0c             	add    $0xc,%esp
 1e8:	56                   	push   %esi
 1e9:	68 68 0c 00 00       	push   $0xc68
 1ee:	6a 01                	push   $0x1
 1f0:	e8 1b 06 00 00       	call   810 <printf>
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1f5:	83 c4 0c             	add    $0xc,%esp
 1f8:	6a 00                	push   $0x0
 1fa:	53                   	push   %ebx
 1fb:	56                   	push   %esi
 1fc:	e8 51 05 00 00       	call   752 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 201:	ff 75 e0             	pushl  -0x20(%ebp)
 204:	50                   	push   %eax
 205:	68 a4 0c 00 00       	push   $0xca4
 20a:	6a 01                	push   $0x1
 20c:	e8 ff 05 00 00       	call   810 <printf>
      sleep(5);
 211:	83 c4 14             	add    $0x14,%esp
 214:	6a 05                	push   $0x5
 216:	e8 27 05 00 00       	call   742 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 21b:	8b 75 e8             	mov    -0x18(%ebp),%esi
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	56                   	push   %esi
 222:	68 68 0c 00 00       	push   $0xc68
 227:	6a 01                	push   $0x1
 229:	e8 e2 05 00 00       	call   810 <printf>
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
 22e:	83 c4 0c             	add    $0xc,%esp
 231:	6a 00                	push   $0x0
 233:	53                   	push   %ebx
 234:	56                   	push   %esi
 235:	e8 18 05 00 00       	call   752 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 23a:	ff 75 e0             	pushl  -0x20(%ebp)
 23d:	50                   	push   %eax
 23e:	68 a4 0c 00 00       	push   $0xca4
 243:	6a 01                	push   $0x1
 245:	e8 c6 05 00 00       	call   810 <printf>
      sleep(5);
 24a:	83 c4 14             	add    $0x14,%esp
 24d:	6a 05                	push   $0x5
 24f:	e8 ee 04 00 00       	call   742 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 254:	8b 75 ec             	mov    -0x14(%ebp),%esi
 257:	83 c4 0c             	add    $0xc,%esp
 25a:	56                   	push   %esi
 25b:	68 68 0c 00 00       	push   $0xc68
 260:	6a 01                	push   $0x1
 262:	e8 a9 05 00 00       	call   810 <printf>
      ret_pid = waitpid(pid_a[2], &exit_status, 0);
 267:	83 c4 0c             	add    $0xc,%esp
 26a:	6a 00                	push   $0x0
 26c:	53                   	push   %ebx
 26d:	56                   	push   %esi
 26e:	e8 df 04 00 00       	call   752 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 273:	ff 75 e0             	pushl  -0x20(%ebp)
 276:	50                   	push   %eax
 277:	68 a4 0c 00 00       	push   $0xca4
 27c:	6a 01                	push   $0x1
 27e:	e8 8d 05 00 00       	call   810 <printf>
      sleep(5);
 283:	83 c4 14             	add    $0x14,%esp
 286:	6a 05                	push   $0x5
 288:	e8 b5 04 00 00       	call   742 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 28d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 290:	83 c4 0c             	add    $0xc,%esp
 293:	56                   	push   %esi
 294:	68 68 0c 00 00       	push   $0xc68
 299:	6a 01                	push   $0x1
 29b:	e8 70 05 00 00       	call   810 <printf>
      ret_pid = waitpid(pid_a[0], &exit_status, 0);
 2a0:	83 c4 0c             	add    $0xc,%esp
 2a3:	6a 00                	push   $0x0
 2a5:	53                   	push   %ebx
 2a6:	56                   	push   %esi
 2a7:	e8 a6 04 00 00       	call   752 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2ac:	ff 75 e0             	pushl  -0x20(%ebp)
 2af:	50                   	push   %eax
 2b0:	68 a4 0c 00 00       	push   $0xca4
 2b5:	6a 01                	push   $0x1
 2b7:	e8 54 05 00 00       	call   810 <printf>
      sleep(5);
 2bc:	83 c4 14             	add    $0x14,%esp
 2bf:	6a 05                	push   $0x5
 2c1:	e8 7c 04 00 00       	call   742 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 2c6:	8b 75 f4             	mov    -0xc(%ebp),%esi
 2c9:	83 c4 0c             	add    $0xc,%esp
 2cc:	56                   	push   %esi
 2cd:	68 68 0c 00 00       	push   $0xc68
 2d2:	6a 01                	push   $0x1
 2d4:	e8 37 05 00 00       	call   810 <printf>
      ret_pid = waitpid(pid_a[4], &exit_status, 0);
 2d9:	83 c4 0c             	add    $0xc,%esp
 2dc:	6a 00                	push   $0x0
 2de:	53                   	push   %ebx
 2df:	56                   	push   %esi
 2e0:	e8 6d 04 00 00       	call   752 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2e5:	ff 75 e0             	pushl  -0x20(%ebp)
 2e8:	50                   	push   %eax
 2e9:	68 a4 0c 00 00       	push   $0xca4
 2ee:	6a 01                	push   $0x1
 2f0:	e8 1b 05 00 00       	call   810 <printf>
      
      return 0;
  }
 2f5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2f8:	31 c0                	xor    %eax,%eax
 2fa:	5b                   	pop    %ebx
 2fb:	5e                   	pop    %esi
 2fc:	5d                   	pop    %ebp
 2fd:	c3                   	ret    
 2fe:	66 90                	xchg   %ax,%ax
    pid_a[i] = fork();
	
    if (pid_a[i] == 0) { // only the child executed this code
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 300:	e8 2d 04 00 00       	call   732 <getpid>
 305:	6a 00                	push   $0x0
 307:	50                   	push   %eax
 308:	68 2c 0c 00 00       	push   $0xc2c
 30d:	6a 01                	push   $0x1
 30f:	e8 fc 04 00 00       	call   810 <printf>
      exit(0);}}
 314:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 31b:	e8 92 03 00 00       	call   6b2 <exit>
 320:	83 c4 10             	add    $0x10,%esp
 323:	e9 a5 fe ff ff       	jmp    1cd <waitPid+0x4d>
 328:	90                   	nop
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <PScheduler>:
      
      return 0;
  }
      
      
     int PScheduler(void){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
 335:	83 ec 18             	sub    $0x18,%esp
    // 0 is the highest priority. All processes have a default priority of 20 

  int pid,  exit_status;
  int i,j,k;
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
 338:	68 e0 0c 00 00       	push   $0xce0
 33d:	6a 01                	push   $0x1
 33f:	e8 cc 04 00 00       	call   810 <printf>
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
 344:	58                   	pop    %eax
 345:	5a                   	pop    %edx
 346:	68 38 0d 00 00       	push   $0xd38
 34b:	6a 01                	push   $0x1
 34d:	e8 be 04 00 00       	call   810 <printf>
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
 352:	59                   	pop    %ecx
 353:	5b                   	pop    %ebx
 354:	68 88 0d 00 00       	push   $0xd88
 359:	6a 01                	push   $0x1
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
 35b:	bb 3c 00 00 00       	mov    $0x3c,%ebx
  int pid,  exit_status;
  int i,j,k;
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
 360:	e8 ab 04 00 00       	call   810 <printf>
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
 365:	5e                   	pop    %esi
 366:	58                   	pop    %eax
 367:	68 dc 0d 00 00       	push   $0xddc
 36c:	6a 01                	push   $0x1
 36e:	e8 9d 04 00 00       	call   810 <printf>
    setpriority(0);
 373:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 37a:	e8 db 03 00 00       	call   75a <setpriority>
 37f:	83 c4 10             	add    $0x10,%esp
    for (i = 0; i <  3; i++) {
	pid = fork();
 382:	e8 23 03 00 00       	call   6aa <fork>
	if (pid > 0 ) {
 387:	83 f8 00             	cmp    $0x0,%eax
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
    for (i = 0; i <  3; i++) {
	pid = fork();
 38a:	89 c6                	mov    %eax,%esi
	if (pid > 0 ) {
 38c:	7e 52                	jle    3e0 <PScheduler+0xb0>
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
    for (i = 0; i <  3; i++) {
 38e:	83 eb 14             	sub    $0x14,%ebx
 391:	75 ef                	jne    382 <PScheduler+0x52>
			printf(2," \n Error \n");
			exit(-1);
        }
	}

	if(pid > 0) {
 393:	85 f6                	test   %esi,%esi
 395:	7e 40                	jle    3d7 <PScheduler+0xa7>
 397:	8d 75 f4             	lea    -0xc(%ebp),%esi
 39a:	bb 03 00 00 00       	mov    $0x3,%ebx
		for (i = 0; i <  3; i++) {
			ret_pid = wait(&exit_status);
 39f:	83 ec 0c             	sub    $0xc,%esp
 3a2:	56                   	push   %esi
 3a3:	e8 12 03 00 00       	call   6ba <wait>
			printf(1,"\n This is the parent: child with PID# %d has finished with status %d \n",ret_pid,exit_status);
 3a8:	ff 75 f4             	pushl  -0xc(%ebp)
 3ab:	50                   	push   %eax
 3ac:	68 8c 0e 00 00       	push   $0xe8c
 3b1:	6a 01                	push   $0x1
        }
	}

	if(pid > 0) {
		for (i = 0; i <  3; i++) {
			ret_pid = wait(&exit_status);
 3b3:	a3 20 13 00 00       	mov    %eax,0x1320
			printf(1,"\n This is the parent: child with PID# %d has finished with status %d \n",ret_pid,exit_status);
 3b8:	e8 53 04 00 00       	call   810 <printf>
			exit(-1);
        }
	}

	if(pid > 0) {
		for (i = 0; i <  3; i++) {
 3bd:	83 c4 20             	add    $0x20,%esp
 3c0:	83 eb 01             	sub    $0x1,%ebx
 3c3:	75 da                	jne    39f <PScheduler+0x6f>
			ret_pid = wait(&exit_status);
			printf(1,"\n This is the parent: child with PID# %d has finished with status %d \n",ret_pid,exit_status);
			}
                     printf(1,"\n if processes with highest priority finished first then its correct \n");
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	68 d4 0e 00 00       	push   $0xed4
 3cd:	6a 01                	push   $0x1
 3cf:	e8 3c 04 00 00       	call   810 <printf>
 3d4:	83 c4 10             	add    $0x10,%esp
}
			
	return 0;}
 3d7:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3da:	31 c0                	xor    %eax,%eax
 3dc:	5b                   	pop    %ebx
 3dd:	5e                   	pop    %esi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    
    setpriority(0);
    for (i = 0; i <  3; i++) {
	pid = fork();
	if (pid > 0 ) {
		continue;}
	else if ( pid == 0) {
 3e0:	75 60                	jne    442 <PScheduler+0x112>
		printf(1, "\n Hello! this is child# %d and I will change my priority to %d \n",getpid(),60-20*i);
 3e2:	e8 4b 03 00 00       	call   732 <getpid>
 3e7:	53                   	push   %ebx
 3e8:	50                   	push   %eax
 3e9:	68 18 0e 00 00       	push   $0xe18
 3ee:	6a 01                	push   $0x1
 3f0:	e8 1b 04 00 00       	call   810 <printf>
		setpriority(60-20*i);	
 3f5:	89 1c 24             	mov    %ebx,(%esp)
 3f8:	e8 5d 03 00 00       	call   75a <setpriority>
 3fd:	83 c4 10             	add    $0x10,%esp
 400:	ba 50 c3 00 00       	mov    $0xc350,%edx
 405:	8d 76 00             	lea    0x0(%esi),%esi
  
    printf(1, "\n  Step 2: testing the priority scheduler and setpriority(int priority)) systema call:\n");
    printf(1, "\n  Step 2: Assuming that the priorities range between range between 0 to 63\n");
    printf(1, "\n  Step 2: 0 is the highest priority. All processes have a default priority of 20\n");
    printf(1, "\n  Step 2: The parent processes will switch to priority 0\n");
    setpriority(0);
 408:	b8 10 27 00 00       	mov    $0x2710,%eax
 40d:	8d 76 00             	lea    0x0(%esi),%esi
	else if ( pid == 0) {
		printf(1, "\n Hello! this is child# %d and I will change my priority to %d \n",getpid(),60-20*i);
		setpriority(60-20*i);	
		for (j=0;j<50000;j++) {
			for(k=0;k<10000;k++) {
				asm("nop"); }}
 410:	90                   	nop
		continue;}
	else if ( pid == 0) {
		printf(1, "\n Hello! this is child# %d and I will change my priority to %d \n",getpid(),60-20*i);
		setpriority(60-20*i);	
		for (j=0;j<50000;j++) {
			for(k=0;k<10000;k++) {
 411:	83 e8 01             	sub    $0x1,%eax
 414:	75 fa                	jne    410 <PScheduler+0xe0>
	if (pid > 0 ) {
		continue;}
	else if ( pid == 0) {
		printf(1, "\n Hello! this is child# %d and I will change my priority to %d \n",getpid(),60-20*i);
		setpriority(60-20*i);	
		for (j=0;j<50000;j++) {
 416:	83 ea 01             	sub    $0x1,%edx
 419:	75 ed                	jne    408 <PScheduler+0xd8>
			for(k=0;k<10000;k++) {
				asm("nop"); }}
		printf(1, "\n child# %d with priority %d has finished! \n",getpid(),60-20*i);		
 41b:	e8 12 03 00 00       	call   732 <getpid>
 420:	53                   	push   %ebx
 421:	50                   	push   %eax
 422:	68 5c 0e 00 00       	push   $0xe5c
 427:	6a 01                	push   $0x1
 429:	e8 e2 03 00 00       	call   810 <printf>
		exit(0);
 42e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 435:	e8 78 02 00 00       	call   6b2 <exit>
 43a:	83 c4 10             	add    $0x10,%esp
 43d:	e9 4c ff ff ff       	jmp    38e <PScheduler+0x5e>
        }
        else {
			printf(2," \n Error \n");
 442:	83 ec 08             	sub    $0x8,%esp
 445:	68 d3 0f 00 00       	push   $0xfd3
 44a:	6a 02                	push   $0x2
 44c:	e8 bf 03 00 00       	call   810 <printf>
			exit(-1);
 451:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 458:	e8 55 02 00 00       	call   6b2 <exit>
 45d:	83 c4 10             	add    $0x10,%esp
 460:	e9 29 ff ff ff       	jmp    38e <PScheduler+0x5e>
 465:	66 90                	xchg   %ax,%ax
 467:	66 90                	xchg   %ax,%ax
 469:	66 90                	xchg   %ax,%ax
 46b:	66 90                	xchg   %ax,%ax
 46d:	66 90                	xchg   %ax,%ax
 46f:	90                   	nop

00000470 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
 474:	8b 45 08             	mov    0x8(%ebp),%eax
 477:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 47a:	89 c2                	mov    %eax,%edx
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 480:	83 c1 01             	add    $0x1,%ecx
 483:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 487:	83 c2 01             	add    $0x1,%edx
 48a:	84 db                	test   %bl,%bl
 48c:	88 5a ff             	mov    %bl,-0x1(%edx)
 48f:	75 ef                	jne    480 <strcpy+0x10>
    ;
  return os;
}
 491:	5b                   	pop    %ebx
 492:	5d                   	pop    %ebp
 493:	c3                   	ret    
 494:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 49a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000004a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	56                   	push   %esi
 4a4:	53                   	push   %ebx
 4a5:	8b 55 08             	mov    0x8(%ebp),%edx
 4a8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4ab:	0f b6 02             	movzbl (%edx),%eax
 4ae:	0f b6 19             	movzbl (%ecx),%ebx
 4b1:	84 c0                	test   %al,%al
 4b3:	75 1e                	jne    4d3 <strcmp+0x33>
 4b5:	eb 29                	jmp    4e0 <strcmp+0x40>
 4b7:	89 f6                	mov    %esi,%esi
 4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 4c0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 4c3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 4c6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 4c9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 4cd:	84 c0                	test   %al,%al
 4cf:	74 0f                	je     4e0 <strcmp+0x40>
 4d1:	89 f1                	mov    %esi,%ecx
 4d3:	38 d8                	cmp    %bl,%al
 4d5:	74 e9                	je     4c0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 4d7:	29 d8                	sub    %ebx,%eax
}
 4d9:	5b                   	pop    %ebx
 4da:	5e                   	pop    %esi
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
 4dd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 4e0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 4e2:	29 d8                	sub    %ebx,%eax
}
 4e4:	5b                   	pop    %ebx
 4e5:	5e                   	pop    %esi
 4e6:	5d                   	pop    %ebp
 4e7:	c3                   	ret    
 4e8:	90                   	nop
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <strlen>:

uint
strlen(char *s)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 4f6:	80 39 00             	cmpb   $0x0,(%ecx)
 4f9:	74 12                	je     50d <strlen+0x1d>
 4fb:	31 d2                	xor    %edx,%edx
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
 500:	83 c2 01             	add    $0x1,%edx
 503:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 507:	89 d0                	mov    %edx,%eax
 509:	75 f5                	jne    500 <strlen+0x10>
    ;
  return n;
}
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 50d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 50f:	5d                   	pop    %ebp
 510:	c3                   	ret    
 511:	eb 0d                	jmp    520 <memset>
 513:	90                   	nop
 514:	90                   	nop
 515:	90                   	nop
 516:	90                   	nop
 517:	90                   	nop
 518:	90                   	nop
 519:	90                   	nop
 51a:	90                   	nop
 51b:	90                   	nop
 51c:	90                   	nop
 51d:	90                   	nop
 51e:	90                   	nop
 51f:	90                   	nop

00000520 <memset>:

void*
memset(void *dst, int c, uint n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 527:	8b 4d 10             	mov    0x10(%ebp),%ecx
 52a:	8b 45 0c             	mov    0xc(%ebp),%eax
 52d:	89 d7                	mov    %edx,%edi
 52f:	fc                   	cld    
 530:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 532:	89 d0                	mov    %edx,%eax
 534:	5f                   	pop    %edi
 535:	5d                   	pop    %ebp
 536:	c3                   	ret    
 537:	89 f6                	mov    %esi,%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000540 <strchr>:

char*
strchr(const char *s, char c)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 45 08             	mov    0x8(%ebp),%eax
 547:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 54a:	0f b6 10             	movzbl (%eax),%edx
 54d:	84 d2                	test   %dl,%dl
 54f:	74 1d                	je     56e <strchr+0x2e>
    if(*s == c)
 551:	38 d3                	cmp    %dl,%bl
 553:	89 d9                	mov    %ebx,%ecx
 555:	75 0d                	jne    564 <strchr+0x24>
 557:	eb 17                	jmp    570 <strchr+0x30>
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 560:	38 ca                	cmp    %cl,%dl
 562:	74 0c                	je     570 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 564:	83 c0 01             	add    $0x1,%eax
 567:	0f b6 10             	movzbl (%eax),%edx
 56a:	84 d2                	test   %dl,%dl
 56c:	75 f2                	jne    560 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 56e:	31 c0                	xor    %eax,%eax
}
 570:	5b                   	pop    %ebx
 571:	5d                   	pop    %ebp
 572:	c3                   	ret    
 573:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000580 <gets>:

char*
gets(char *buf, int max)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 586:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 588:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 58b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 58e:	eb 29                	jmp    5b9 <gets+0x39>
    cc = read(0, &c, 1);
 590:	83 ec 04             	sub    $0x4,%esp
 593:	6a 01                	push   $0x1
 595:	57                   	push   %edi
 596:	6a 00                	push   $0x0
 598:	e8 2d 01 00 00       	call   6ca <read>
    if(cc < 1)
 59d:	83 c4 10             	add    $0x10,%esp
 5a0:	85 c0                	test   %eax,%eax
 5a2:	7e 1d                	jle    5c1 <gets+0x41>
      break;
    buf[i++] = c;
 5a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5a8:	8b 55 08             	mov    0x8(%ebp),%edx
 5ab:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 5ad:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 5af:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5b3:	74 1b                	je     5d0 <gets+0x50>
 5b5:	3c 0d                	cmp    $0xd,%al
 5b7:	74 17                	je     5d0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5b9:	8d 5e 01             	lea    0x1(%esi),%ebx
 5bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5bf:	7c cf                	jl     590 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 5c1:	8b 45 08             	mov    0x8(%ebp),%eax
 5c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5cb:	5b                   	pop    %ebx
 5cc:	5e                   	pop    %esi
 5cd:	5f                   	pop    %edi
 5ce:	5d                   	pop    %ebp
 5cf:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 5d0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5d3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 5d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5dc:	5b                   	pop    %ebx
 5dd:	5e                   	pop    %esi
 5de:	5f                   	pop    %edi
 5df:	5d                   	pop    %ebp
 5e0:	c3                   	ret    
 5e1:	eb 0d                	jmp    5f0 <stat>
 5e3:	90                   	nop
 5e4:	90                   	nop
 5e5:	90                   	nop
 5e6:	90                   	nop
 5e7:	90                   	nop
 5e8:	90                   	nop
 5e9:	90                   	nop
 5ea:	90                   	nop
 5eb:	90                   	nop
 5ec:	90                   	nop
 5ed:	90                   	nop
 5ee:	90                   	nop
 5ef:	90                   	nop

000005f0 <stat>:

int
stat(char *n, struct stat *st)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	56                   	push   %esi
 5f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5f5:	83 ec 08             	sub    $0x8,%esp
 5f8:	6a 00                	push   $0x0
 5fa:	ff 75 08             	pushl  0x8(%ebp)
 5fd:	e8 f0 00 00 00       	call   6f2 <open>
  if(fd < 0)
 602:	83 c4 10             	add    $0x10,%esp
 605:	85 c0                	test   %eax,%eax
 607:	78 27                	js     630 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 609:	83 ec 08             	sub    $0x8,%esp
 60c:	ff 75 0c             	pushl  0xc(%ebp)
 60f:	89 c3                	mov    %eax,%ebx
 611:	50                   	push   %eax
 612:	e8 f3 00 00 00       	call   70a <fstat>
 617:	89 c6                	mov    %eax,%esi
  close(fd);
 619:	89 1c 24             	mov    %ebx,(%esp)
 61c:	e8 b9 00 00 00       	call   6da <close>
  return r;
 621:	83 c4 10             	add    $0x10,%esp
 624:	89 f0                	mov    %esi,%eax
}
 626:	8d 65 f8             	lea    -0x8(%ebp),%esp
 629:	5b                   	pop    %ebx
 62a:	5e                   	pop    %esi
 62b:	5d                   	pop    %ebp
 62c:	c3                   	ret    
 62d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 630:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 635:	eb ef                	jmp    626 <stat+0x36>
 637:	89 f6                	mov    %esi,%esi
 639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000640 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	53                   	push   %ebx
 644:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 647:	0f be 11             	movsbl (%ecx),%edx
 64a:	8d 42 d0             	lea    -0x30(%edx),%eax
 64d:	3c 09                	cmp    $0x9,%al
 64f:	b8 00 00 00 00       	mov    $0x0,%eax
 654:	77 1f                	ja     675 <atoi+0x35>
 656:	8d 76 00             	lea    0x0(%esi),%esi
 659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 660:	8d 04 80             	lea    (%eax,%eax,4),%eax
 663:	83 c1 01             	add    $0x1,%ecx
 666:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 66a:	0f be 11             	movsbl (%ecx),%edx
 66d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 670:	80 fb 09             	cmp    $0x9,%bl
 673:	76 eb                	jbe    660 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 675:	5b                   	pop    %ebx
 676:	5d                   	pop    %ebp
 677:	c3                   	ret    
 678:	90                   	nop
 679:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000680 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	56                   	push   %esi
 684:	53                   	push   %ebx
 685:	8b 5d 10             	mov    0x10(%ebp),%ebx
 688:	8b 45 08             	mov    0x8(%ebp),%eax
 68b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 68e:	85 db                	test   %ebx,%ebx
 690:	7e 14                	jle    6a6 <memmove+0x26>
 692:	31 d2                	xor    %edx,%edx
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 698:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 69c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 69f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6a2:	39 da                	cmp    %ebx,%edx
 6a4:	75 f2                	jne    698 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 6a6:	5b                   	pop    %ebx
 6a7:	5e                   	pop    %esi
 6a8:	5d                   	pop    %ebp
 6a9:	c3                   	ret    

000006aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6aa:	b8 01 00 00 00       	mov    $0x1,%eax
 6af:	cd 40                	int    $0x40
 6b1:	c3                   	ret    

000006b2 <exit>:
SYSCALL(exit)
 6b2:	b8 02 00 00 00       	mov    $0x2,%eax
 6b7:	cd 40                	int    $0x40
 6b9:	c3                   	ret    

000006ba <wait>:
SYSCALL(wait)
 6ba:	b8 03 00 00 00       	mov    $0x3,%eax
 6bf:	cd 40                	int    $0x40
 6c1:	c3                   	ret    

000006c2 <pipe>:
SYSCALL(pipe)
 6c2:	b8 04 00 00 00       	mov    $0x4,%eax
 6c7:	cd 40                	int    $0x40
 6c9:	c3                   	ret    

000006ca <read>:
SYSCALL(read)
 6ca:	b8 05 00 00 00       	mov    $0x5,%eax
 6cf:	cd 40                	int    $0x40
 6d1:	c3                   	ret    

000006d2 <write>:
SYSCALL(write)
 6d2:	b8 10 00 00 00       	mov    $0x10,%eax
 6d7:	cd 40                	int    $0x40
 6d9:	c3                   	ret    

000006da <close>:
SYSCALL(close)
 6da:	b8 15 00 00 00       	mov    $0x15,%eax
 6df:	cd 40                	int    $0x40
 6e1:	c3                   	ret    

000006e2 <kill>:
SYSCALL(kill)
 6e2:	b8 06 00 00 00       	mov    $0x6,%eax
 6e7:	cd 40                	int    $0x40
 6e9:	c3                   	ret    

000006ea <exec>:
SYSCALL(exec)
 6ea:	b8 07 00 00 00       	mov    $0x7,%eax
 6ef:	cd 40                	int    $0x40
 6f1:	c3                   	ret    

000006f2 <open>:
SYSCALL(open)
 6f2:	b8 0f 00 00 00       	mov    $0xf,%eax
 6f7:	cd 40                	int    $0x40
 6f9:	c3                   	ret    

000006fa <mknod>:
SYSCALL(mknod)
 6fa:	b8 11 00 00 00       	mov    $0x11,%eax
 6ff:	cd 40                	int    $0x40
 701:	c3                   	ret    

00000702 <unlink>:
SYSCALL(unlink)
 702:	b8 12 00 00 00       	mov    $0x12,%eax
 707:	cd 40                	int    $0x40
 709:	c3                   	ret    

0000070a <fstat>:
SYSCALL(fstat)
 70a:	b8 08 00 00 00       	mov    $0x8,%eax
 70f:	cd 40                	int    $0x40
 711:	c3                   	ret    

00000712 <link>:
SYSCALL(link)
 712:	b8 13 00 00 00       	mov    $0x13,%eax
 717:	cd 40                	int    $0x40
 719:	c3                   	ret    

0000071a <mkdir>:
SYSCALL(mkdir)
 71a:	b8 14 00 00 00       	mov    $0x14,%eax
 71f:	cd 40                	int    $0x40
 721:	c3                   	ret    

00000722 <chdir>:
SYSCALL(chdir)
 722:	b8 09 00 00 00       	mov    $0x9,%eax
 727:	cd 40                	int    $0x40
 729:	c3                   	ret    

0000072a <dup>:
SYSCALL(dup)
 72a:	b8 0a 00 00 00       	mov    $0xa,%eax
 72f:	cd 40                	int    $0x40
 731:	c3                   	ret    

00000732 <getpid>:
SYSCALL(getpid)
 732:	b8 0b 00 00 00       	mov    $0xb,%eax
 737:	cd 40                	int    $0x40
 739:	c3                   	ret    

0000073a <sbrk>:
SYSCALL(sbrk)
 73a:	b8 0c 00 00 00       	mov    $0xc,%eax
 73f:	cd 40                	int    $0x40
 741:	c3                   	ret    

00000742 <sleep>:
SYSCALL(sleep)
 742:	b8 0d 00 00 00       	mov    $0xd,%eax
 747:	cd 40                	int    $0x40
 749:	c3                   	ret    

0000074a <uptime>:
SYSCALL(uptime)
 74a:	b8 0e 00 00 00       	mov    $0xe,%eax
 74f:	cd 40                	int    $0x40
 751:	c3                   	ret    

00000752 <waitpid>:
SYSCALL(waitpid)
 752:	b8 16 00 00 00       	mov    $0x16,%eax
 757:	cd 40                	int    $0x40
 759:	c3                   	ret    

0000075a <setpriority>:
SYSCALL(setpriority)
 75a:	b8 17 00 00 00       	mov    $0x17,%eax
 75f:	cd 40                	int    $0x40
 761:	c3                   	ret    
 762:	66 90                	xchg   %ax,%ax
 764:	66 90                	xchg   %ax,%ax
 766:	66 90                	xchg   %ax,%ax
 768:	66 90                	xchg   %ax,%ax
 76a:	66 90                	xchg   %ax,%ax
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax

00000770 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	89 c6                	mov    %eax,%esi
 778:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 77b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 77e:	85 db                	test   %ebx,%ebx
 780:	74 7e                	je     800 <printint+0x90>
 782:	89 d0                	mov    %edx,%eax
 784:	c1 e8 1f             	shr    $0x1f,%eax
 787:	84 c0                	test   %al,%al
 789:	74 75                	je     800 <printint+0x90>
    neg = 1;
    x = -xx;
 78b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 78d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 794:	f7 d8                	neg    %eax
 796:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 799:	31 ff                	xor    %edi,%edi
 79b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 79e:	89 ce                	mov    %ecx,%esi
 7a0:	eb 08                	jmp    7aa <printint+0x3a>
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7a8:	89 cf                	mov    %ecx,%edi
 7aa:	31 d2                	xor    %edx,%edx
 7ac:	8d 4f 01             	lea    0x1(%edi),%ecx
 7af:	f7 f6                	div    %esi
 7b1:	0f b6 92 e8 0f 00 00 	movzbl 0xfe8(%edx),%edx
  }while((x /= base) != 0);
 7b8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 7ba:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 7bd:	75 e9                	jne    7a8 <printint+0x38>
  if(neg)
 7bf:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 7c2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 7c5:	85 c0                	test   %eax,%eax
 7c7:	74 08                	je     7d1 <printint+0x61>
    buf[i++] = '-';
 7c9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 7ce:	8d 4f 02             	lea    0x2(%edi),%ecx
 7d1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 7d5:	8d 76 00             	lea    0x0(%esi),%esi
 7d8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7db:	83 ec 04             	sub    $0x4,%esp
 7de:	83 ef 01             	sub    $0x1,%edi
 7e1:	6a 01                	push   $0x1
 7e3:	53                   	push   %ebx
 7e4:	56                   	push   %esi
 7e5:	88 45 d7             	mov    %al,-0x29(%ebp)
 7e8:	e8 e5 fe ff ff       	call   6d2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 7ed:	83 c4 10             	add    $0x10,%esp
 7f0:	39 df                	cmp    %ebx,%edi
 7f2:	75 e4                	jne    7d8 <printint+0x68>
    putc(fd, buf[i]);
}
 7f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7f7:	5b                   	pop    %ebx
 7f8:	5e                   	pop    %esi
 7f9:	5f                   	pop    %edi
 7fa:	5d                   	pop    %ebp
 7fb:	c3                   	ret    
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 800:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 802:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 809:	eb 8b                	jmp    796 <printint+0x26>
 80b:	90                   	nop
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000810 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 816:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 819:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 81c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 81f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 822:	89 45 d0             	mov    %eax,-0x30(%ebp)
 825:	0f b6 1e             	movzbl (%esi),%ebx
 828:	83 c6 01             	add    $0x1,%esi
 82b:	84 db                	test   %bl,%bl
 82d:	0f 84 b0 00 00 00    	je     8e3 <printf+0xd3>
 833:	31 d2                	xor    %edx,%edx
 835:	eb 39                	jmp    870 <printf+0x60>
 837:	89 f6                	mov    %esi,%esi
 839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 840:	83 f8 25             	cmp    $0x25,%eax
 843:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 846:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 84b:	74 18                	je     865 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 84d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 850:	83 ec 04             	sub    $0x4,%esp
 853:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 856:	6a 01                	push   $0x1
 858:	50                   	push   %eax
 859:	57                   	push   %edi
 85a:	e8 73 fe ff ff       	call   6d2 <write>
 85f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 862:	83 c4 10             	add    $0x10,%esp
 865:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 868:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 86c:	84 db                	test   %bl,%bl
 86e:	74 73                	je     8e3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 870:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 872:	0f be cb             	movsbl %bl,%ecx
 875:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 878:	74 c6                	je     840 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 87a:	83 fa 25             	cmp    $0x25,%edx
 87d:	75 e6                	jne    865 <printf+0x55>
      if(c == 'd'){
 87f:	83 f8 64             	cmp    $0x64,%eax
 882:	0f 84 f8 00 00 00    	je     980 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 888:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 88e:	83 f9 70             	cmp    $0x70,%ecx
 891:	74 5d                	je     8f0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 893:	83 f8 73             	cmp    $0x73,%eax
 896:	0f 84 84 00 00 00    	je     920 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 89c:	83 f8 63             	cmp    $0x63,%eax
 89f:	0f 84 ea 00 00 00    	je     98f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 8a5:	83 f8 25             	cmp    $0x25,%eax
 8a8:	0f 84 c2 00 00 00    	je     970 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8b1:	83 ec 04             	sub    $0x4,%esp
 8b4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8b8:	6a 01                	push   $0x1
 8ba:	50                   	push   %eax
 8bb:	57                   	push   %edi
 8bc:	e8 11 fe ff ff       	call   6d2 <write>
 8c1:	83 c4 0c             	add    $0xc,%esp
 8c4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 8c7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 8ca:	6a 01                	push   $0x1
 8cc:	50                   	push   %eax
 8cd:	57                   	push   %edi
 8ce:	83 c6 01             	add    $0x1,%esi
 8d1:	e8 fc fd ff ff       	call   6d2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8d6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8da:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8dd:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8df:	84 db                	test   %bl,%bl
 8e1:	75 8d                	jne    870 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8e6:	5b                   	pop    %ebx
 8e7:	5e                   	pop    %esi
 8e8:	5f                   	pop    %edi
 8e9:	5d                   	pop    %ebp
 8ea:	c3                   	ret    
 8eb:	90                   	nop
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8f8:	6a 00                	push   $0x0
 8fa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 8fd:	89 f8                	mov    %edi,%eax
 8ff:	8b 13                	mov    (%ebx),%edx
 901:	e8 6a fe ff ff       	call   770 <printint>
        ap++;
 906:	89 d8                	mov    %ebx,%eax
 908:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 90b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 90d:	83 c0 04             	add    $0x4,%eax
 910:	89 45 d0             	mov    %eax,-0x30(%ebp)
 913:	e9 4d ff ff ff       	jmp    865 <printf+0x55>
 918:	90                   	nop
 919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 920:	8b 45 d0             	mov    -0x30(%ebp),%eax
 923:	8b 18                	mov    (%eax),%ebx
        ap++;
 925:	83 c0 04             	add    $0x4,%eax
 928:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 92b:	b8 de 0f 00 00       	mov    $0xfde,%eax
 930:	85 db                	test   %ebx,%ebx
 932:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 935:	0f b6 03             	movzbl (%ebx),%eax
 938:	84 c0                	test   %al,%al
 93a:	74 23                	je     95f <printf+0x14f>
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 940:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 943:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 946:	83 ec 04             	sub    $0x4,%esp
 949:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 94b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 94e:	50                   	push   %eax
 94f:	57                   	push   %edi
 950:	e8 7d fd ff ff       	call   6d2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 955:	0f b6 03             	movzbl (%ebx),%eax
 958:	83 c4 10             	add    $0x10,%esp
 95b:	84 c0                	test   %al,%al
 95d:	75 e1                	jne    940 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 95f:	31 d2                	xor    %edx,%edx
 961:	e9 ff fe ff ff       	jmp    865 <printf+0x55>
 966:	8d 76 00             	lea    0x0(%esi),%esi
 969:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 970:	83 ec 04             	sub    $0x4,%esp
 973:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 976:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 979:	6a 01                	push   $0x1
 97b:	e9 4c ff ff ff       	jmp    8cc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 980:	83 ec 0c             	sub    $0xc,%esp
 983:	b9 0a 00 00 00       	mov    $0xa,%ecx
 988:	6a 01                	push   $0x1
 98a:	e9 6b ff ff ff       	jmp    8fa <printf+0xea>
 98f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 992:	83 ec 04             	sub    $0x4,%esp
 995:	8b 03                	mov    (%ebx),%eax
 997:	6a 01                	push   $0x1
 999:	88 45 e4             	mov    %al,-0x1c(%ebp)
 99c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 99f:	50                   	push   %eax
 9a0:	57                   	push   %edi
 9a1:	e8 2c fd ff ff       	call   6d2 <write>
 9a6:	e9 5b ff ff ff       	jmp    906 <printf+0xf6>
 9ab:	66 90                	xchg   %ax,%ax
 9ad:	66 90                	xchg   %ax,%ax
 9af:	90                   	nop

000009b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	a1 14 13 00 00       	mov    0x1314,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 9b6:	89 e5                	mov    %esp,%ebp
 9b8:	57                   	push   %edi
 9b9:	56                   	push   %esi
 9ba:	53                   	push   %ebx
 9bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9be:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 9c0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c3:	39 c8                	cmp    %ecx,%eax
 9c5:	73 19                	jae    9e0 <free+0x30>
 9c7:	89 f6                	mov    %esi,%esi
 9c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 9d0:	39 d1                	cmp    %edx,%ecx
 9d2:	72 1c                	jb     9f0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d4:	39 d0                	cmp    %edx,%eax
 9d6:	73 18                	jae    9f0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9da:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9dc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9de:	72 f0                	jb     9d0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9e0:	39 d0                	cmp    %edx,%eax
 9e2:	72 f4                	jb     9d8 <free+0x28>
 9e4:	39 d1                	cmp    %edx,%ecx
 9e6:	73 f0                	jae    9d8 <free+0x28>
 9e8:	90                   	nop
 9e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 9f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9f3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9f6:	39 d7                	cmp    %edx,%edi
 9f8:	74 19                	je     a13 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 9fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 9fd:	8b 50 04             	mov    0x4(%eax),%edx
 a00:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a03:	39 f1                	cmp    %esi,%ecx
 a05:	74 23                	je     a2a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 a07:	89 08                	mov    %ecx,(%eax)
  freep = p;
 a09:	a3 14 13 00 00       	mov    %eax,0x1314
}
 a0e:	5b                   	pop    %ebx
 a0f:	5e                   	pop    %esi
 a10:	5f                   	pop    %edi
 a11:	5d                   	pop    %ebp
 a12:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 a13:	03 72 04             	add    0x4(%edx),%esi
 a16:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a19:	8b 10                	mov    (%eax),%edx
 a1b:	8b 12                	mov    (%edx),%edx
 a1d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a20:	8b 50 04             	mov    0x4(%eax),%edx
 a23:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a26:	39 f1                	cmp    %esi,%ecx
 a28:	75 dd                	jne    a07 <free+0x57>
    p->s.size += bp->s.size;
 a2a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 a2d:	a3 14 13 00 00       	mov    %eax,0x1314
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 a32:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 a35:	8b 53 f8             	mov    -0x8(%ebx),%edx
 a38:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a3a:	5b                   	pop    %ebx
 a3b:	5e                   	pop    %esi
 a3c:	5f                   	pop    %edi
 a3d:	5d                   	pop    %ebp
 a3e:	c3                   	ret    
 a3f:	90                   	nop

00000a40 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a40:	55                   	push   %ebp
 a41:	89 e5                	mov    %esp,%ebp
 a43:	57                   	push   %edi
 a44:	56                   	push   %esi
 a45:	53                   	push   %ebx
 a46:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a49:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a4c:	8b 15 14 13 00 00    	mov    0x1314,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a52:	8d 78 07             	lea    0x7(%eax),%edi
 a55:	c1 ef 03             	shr    $0x3,%edi
 a58:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a5b:	85 d2                	test   %edx,%edx
 a5d:	0f 84 a3 00 00 00    	je     b06 <malloc+0xc6>
 a63:	8b 02                	mov    (%edx),%eax
 a65:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 a68:	39 cf                	cmp    %ecx,%edi
 a6a:	76 74                	jbe    ae0 <malloc+0xa0>
 a6c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 a72:	be 00 10 00 00       	mov    $0x1000,%esi
 a77:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 a7e:	0f 43 f7             	cmovae %edi,%esi
 a81:	ba 00 80 00 00       	mov    $0x8000,%edx
 a86:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 a8c:	0f 46 da             	cmovbe %edx,%ebx
 a8f:	eb 10                	jmp    aa1 <malloc+0x61>
 a91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a98:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a9a:	8b 48 04             	mov    0x4(%eax),%ecx
 a9d:	39 cf                	cmp    %ecx,%edi
 a9f:	76 3f                	jbe    ae0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 aa1:	39 05 14 13 00 00    	cmp    %eax,0x1314
 aa7:	89 c2                	mov    %eax,%edx
 aa9:	75 ed                	jne    a98 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 aab:	83 ec 0c             	sub    $0xc,%esp
 aae:	53                   	push   %ebx
 aaf:	e8 86 fc ff ff       	call   73a <sbrk>
  if(p == (char*)-1)
 ab4:	83 c4 10             	add    $0x10,%esp
 ab7:	83 f8 ff             	cmp    $0xffffffff,%eax
 aba:	74 1c                	je     ad8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 abc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 abf:	83 ec 0c             	sub    $0xc,%esp
 ac2:	83 c0 08             	add    $0x8,%eax
 ac5:	50                   	push   %eax
 ac6:	e8 e5 fe ff ff       	call   9b0 <free>
  return freep;
 acb:	8b 15 14 13 00 00    	mov    0x1314,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 ad1:	83 c4 10             	add    $0x10,%esp
 ad4:	85 d2                	test   %edx,%edx
 ad6:	75 c0                	jne    a98 <malloc+0x58>
        return 0;
 ad8:	31 c0                	xor    %eax,%eax
 ada:	eb 1c                	jmp    af8 <malloc+0xb8>
 adc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 ae0:	39 cf                	cmp    %ecx,%edi
 ae2:	74 1c                	je     b00 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 ae4:	29 f9                	sub    %edi,%ecx
 ae6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ae9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aec:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 aef:	89 15 14 13 00 00    	mov    %edx,0x1314
      return (void*)(p + 1);
 af5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 af8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 b00:	8b 08                	mov    (%eax),%ecx
 b02:	89 0a                	mov    %ecx,(%edx)
 b04:	eb e9                	jmp    aef <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 b06:	c7 05 14 13 00 00 18 	movl   $0x1318,0x1314
 b0d:	13 00 00 
 b10:	c7 05 18 13 00 00 18 	movl   $0x1318,0x1318
 b17:	13 00 00 
    base.s.size = 0;
 b1a:	b8 18 13 00 00       	mov    $0x1318,%eax
 b1f:	c7 05 1c 13 00 00 00 	movl   $0x0,0x131c
 b26:	00 00 00 
 b29:	e9 3e ff ff ff       	jmp    a6c <malloc+0x2c>
