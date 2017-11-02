
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 2e 5a 00 00       	push   $0x5a2e
      16:	6a 01                	push   $0x1
      18:	e8 03 47 00 00       	call   4720 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 42 5a 00 00       	push   $0x5a42
      26:	e8 d7 45 00 00       	call   4602 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1d                	js     4f <main+0x4f>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	50                   	push   %eax
      33:	50                   	push   %eax
      34:	68 ac 61 00 00       	push   $0x61ac
      39:	6a 01                	push   $0x1
      3b:	e8 e0 46 00 00       	call   4720 <printf>
    exit(0);
      40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      47:	e8 76 45 00 00       	call   45c2 <exit>
      4c:	83 c4 10             	add    $0x10,%esp
  }
  close(open("usertests.ran", O_CREATE));
      4f:	83 ec 08             	sub    $0x8,%esp
      52:	68 00 02 00 00       	push   $0x200
      57:	68 42 5a 00 00       	push   $0x5a42
      5c:	e8 a1 45 00 00       	call   4602 <open>
      61:	89 04 24             	mov    %eax,(%esp)
      64:	e8 81 45 00 00       	call   45ea <close>

  argptest();
      69:	e8 72 42 00 00       	call   42e0 <argptest>
  createdelete();
      6e:	e8 fd 14 00 00       	call   1570 <createdelete>
  linkunlink();
      73:	e8 28 20 00 00       	call   20a0 <linkunlink>
  concreate();
      78:	e8 23 1c 00 00       	call   1ca0 <concreate>
  fourfiles();
      7d:	e8 7e 12 00 00       	call   1300 <fourfiles>
  sharedfd();
      82:	e8 a9 10 00 00       	call   1130 <sharedfd>

  bigargtest();
      87:	e8 94 3e 00 00       	call   3f20 <bigargtest>
  bigwrite();
      8c:	e8 6f 2c 00 00       	call   2d00 <bigwrite>
  bigargtest();
      91:	e8 8a 3e 00 00       	call   3f20 <bigargtest>
  bsstest();
      96:	e8 05 3e 00 00       	call   3ea0 <bsstest>
  sbrktest();
      9b:	e8 60 38 00 00       	call   3900 <sbrktest>
  validatetest();
      a0:	e8 2b 3d 00 00       	call   3dd0 <validatetest>

  opentest();
      a5:	e8 66 04 00 00       	call   510 <opentest>
  writetest();
      aa:	e8 21 05 00 00       	call   5d0 <writetest>
  writetest1();
      af:	e8 4c 07 00 00       	call   800 <writetest1>
  createtest();
      b4:	e8 67 09 00 00       	call   a20 <createtest>

  openiputtest();
      b9:	e8 02 03 00 00       	call   3c0 <openiputtest>
  exitiputtest();
      be:	e8 ad 01 00 00       	call   270 <exitiputtest>
  iputtest();
      c3:	e8 68 00 00 00       	call   130 <iputtest>

  mem();
      c8:	e8 73 0f 00 00       	call   1040 <mem>
  pipe1();
      cd:	e8 9e 0b 00 00       	call   c70 <pipe1>
  preempt();
      d2:	e8 79 0d 00 00       	call   e50 <preempt>
  exitwait();
      d7:	e8 c4 0e 00 00       	call   fa0 <exitwait>

  rmdot();
      dc:	e8 ff 30 00 00       	call   31e0 <rmdot>
  fourteen();
      e1:	e8 3a 2f 00 00       	call   3020 <fourteen>
  bigfile();
      e6:	e8 15 2d 00 00       	call   2e00 <bigfile>
  subdir();
      eb:	e8 70 22 00 00       	call   2360 <subdir>
  linktest();
      f0:	e8 1b 19 00 00       	call   1a10 <linktest>
  unlinkread();
      f5:	e8 26 17 00 00       	call   1820 <unlinkread>
  dirfile();
      fa:	e8 f1 32 00 00       	call   33f0 <dirfile>
  iref();
      ff:	e8 ac 35 00 00       	call   36b0 <iref>
  forktest();
     104:	e8 e7 36 00 00       	call   37f0 <forktest>
  bigdir(); // slow
     109:	e8 d2 20 00 00       	call   21e0 <bigdir>

  uio();
     10e:	e8 3d 41 00 00       	call   4250 <uio>

  exectest();
     113:	e8 f8 0a 00 00       	call   c10 <exectest>

  exit(0);
     118:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11f:	e8 9e 44 00 00       	call   45c2 <exit>
}
     124:	8b 4d fc             	mov    -0x4(%ebp),%ecx
     127:	31 c0                	xor    %eax,%eax
     129:	c9                   	leave  
     12a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     12d:	c3                   	ret    
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
int stdout = 1;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     136:	68 d4 4a 00 00       	push   $0x4ad4
     13b:	ff 35 00 6b 00 00    	pushl  0x6b00
     141:	e8 da 45 00 00       	call   4720 <printf>

  if(mkdir("iputdir") < 0){
     146:	c7 04 24 67 4a 00 00 	movl   $0x4a67,(%esp)
     14d:	e8 d8 44 00 00       	call   462a <mkdir>
     152:	83 c4 10             	add    $0x10,%esp
     155:	85 c0                	test   %eax,%eax
     157:	0f 88 8b 00 00 00    	js     1e8 <iputtest+0xb8>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
     15d:	83 ec 0c             	sub    $0xc,%esp
     160:	68 67 4a 00 00       	push   $0x4a67
     165:	e8 c8 44 00 00       	call   4632 <chdir>
     16a:	83 c4 10             	add    $0x10,%esp
     16d:	85 c0                	test   %eax,%eax
     16f:	0f 88 9b 00 00 00    	js     210 <iputtest+0xe0>
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 64 4a 00 00       	push   $0x4a64
     17d:	e8 90 44 00 00       	call   4612 <unlink>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	0f 88 b3 00 00 00    	js     240 <iputtest+0x110>
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
     18d:	83 ec 0c             	sub    $0xc,%esp
     190:	68 89 4a 00 00       	push   $0x4a89
     195:	e8 98 44 00 00       	call   4632 <chdir>
     19a:	83 c4 10             	add    $0x10,%esp
     19d:	85 c0                	test   %eax,%eax
     19f:	78 1f                	js     1c0 <iputtest+0x90>
    printf(stdout, "chdir / failed\n");
    exit(0);
  }
  printf(stdout, "iput test ok\n");
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	68 0c 4b 00 00       	push   $0x4b0c
     1a9:	ff 35 00 6b 00 00    	pushl  0x6b00
     1af:	e8 6c 45 00 00       	call   4720 <printf>
}
     1b4:	83 c4 10             	add    $0x10,%esp
     1b7:	c9                   	leave  
     1b8:	c3                   	ret    
     1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1c0:	83 ec 08             	sub    $0x8,%esp
     1c3:	68 8b 4a 00 00       	push   $0x4a8b
     1c8:	ff 35 00 6b 00 00    	pushl  0x6b00
     1ce:	e8 4d 45 00 00       	call   4720 <printf>
    exit(0);
     1d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1da:	e8 e3 43 00 00       	call   45c2 <exit>
     1df:	83 c4 10             	add    $0x10,%esp
     1e2:	eb bd                	jmp    1a1 <iputtest+0x71>
     1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1e8:	83 ec 08             	sub    $0x8,%esp
     1eb:	68 40 4a 00 00       	push   $0x4a40
     1f0:	ff 35 00 6b 00 00    	pushl  0x6b00
     1f6:	e8 25 45 00 00       	call   4720 <printf>
    exit(0);
     1fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     202:	e8 bb 43 00 00       	call   45c2 <exit>
     207:	83 c4 10             	add    $0x10,%esp
     20a:	e9 4e ff ff ff       	jmp    15d <iputtest+0x2d>
     20f:	90                   	nop
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     210:	83 ec 08             	sub    $0x8,%esp
     213:	68 4e 4a 00 00       	push   $0x4a4e
     218:	ff 35 00 6b 00 00    	pushl  0x6b00
     21e:	e8 fd 44 00 00       	call   4720 <printf>
    exit(0);
     223:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     22a:	e8 93 43 00 00       	call   45c2 <exit>
     22f:	83 c4 10             	add    $0x10,%esp
     232:	e9 3e ff ff ff       	jmp    175 <iputtest+0x45>
     237:	89 f6                	mov    %esi,%esi
     239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     240:	83 ec 08             	sub    $0x8,%esp
     243:	68 6f 4a 00 00       	push   $0x4a6f
     248:	ff 35 00 6b 00 00    	pushl  0x6b00
     24e:	e8 cd 44 00 00       	call   4720 <printf>
    exit(0);
     253:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     25a:	e8 63 43 00 00       	call   45c2 <exit>
     25f:	83 c4 10             	add    $0x10,%esp
     262:	e9 26 ff ff ff       	jmp    18d <iputtest+0x5d>
     267:	89 f6                	mov    %esi,%esi
     269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000270 <exitiputtest>:
}

// does exit(0) call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     270:	55                   	push   %ebp
     271:	89 e5                	mov    %esp,%ebp
     273:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "exitiput test\n");
     276:	68 9b 4a 00 00       	push   $0x4a9b
     27b:	ff 35 00 6b 00 00    	pushl  0x6b00
     281:	e8 9a 44 00 00       	call   4720 <printf>

  pid = fork();
     286:	e8 2f 43 00 00       	call   45ba <fork>
  if(pid < 0){
     28b:	83 c4 10             	add    $0x10,%esp
     28e:	85 c0                	test   %eax,%eax
     290:	78 7e                	js     310 <exitiputtest+0xa0>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     292:	74 24                	je     2b8 <exitiputtest+0x48>
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
  }
  wait(0);
     294:	83 ec 0c             	sub    $0xc,%esp
     297:	6a 00                	push   $0x0
     299:	e8 2c 43 00 00       	call   45ca <wait>
  printf(stdout, "exitiput test ok\n");
     29e:	58                   	pop    %eax
     29f:	5a                   	pop    %edx
     2a0:	68 be 4a 00 00       	push   $0x4abe
     2a5:	ff 35 00 6b 00 00    	pushl  0x6b00
     2ab:	e8 70 44 00 00       	call   4720 <printf>
}
     2b0:	83 c4 10             	add    $0x10,%esp
     2b3:	c9                   	leave  
     2b4:	c3                   	ret    
     2b5:	8d 76 00             	lea    0x0(%esi),%esi
  if(pid < 0){
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
     2b8:	83 ec 0c             	sub    $0xc,%esp
     2bb:	68 67 4a 00 00       	push   $0x4a67
     2c0:	e8 65 43 00 00       	call   462a <mkdir>
     2c5:	83 c4 10             	add    $0x10,%esp
     2c8:	85 c0                	test   %eax,%eax
     2ca:	0f 88 c0 00 00 00    	js     390 <exitiputtest+0x120>
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
     2d0:	83 ec 0c             	sub    $0xc,%esp
     2d3:	68 67 4a 00 00       	push   $0x4a67
     2d8:	e8 55 43 00 00       	call   4632 <chdir>
     2dd:	83 c4 10             	add    $0x10,%esp
     2e0:	85 c0                	test   %eax,%eax
     2e2:	0f 88 80 00 00 00    	js     368 <exitiputtest+0xf8>
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
     2e8:	83 ec 0c             	sub    $0xc,%esp
     2eb:	68 64 4a 00 00       	push   $0x4a64
     2f0:	e8 1d 43 00 00       	call   4612 <unlink>
     2f5:	83 c4 10             	add    $0x10,%esp
     2f8:	85 c0                	test   %eax,%eax
     2fa:	78 44                	js     340 <exitiputtest+0xd0>
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
     2fc:	83 ec 0c             	sub    $0xc,%esp
     2ff:	6a 00                	push   $0x0
     301:	e8 bc 42 00 00       	call   45c2 <exit>
     306:	83 c4 10             	add    $0x10,%esp
     309:	eb 89                	jmp    294 <exitiputtest+0x24>
     30b:	90                   	nop
     30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     310:	83 ec 08             	sub    $0x8,%esp
     313:	68 81 59 00 00       	push   $0x5981
     318:	ff 35 00 6b 00 00    	pushl  0x6b00
     31e:	e8 fd 43 00 00       	call   4720 <printf>
    exit(0);
     323:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     32a:	e8 93 42 00 00       	call   45c2 <exit>
     32f:	83 c4 10             	add    $0x10,%esp
     332:	e9 5d ff ff ff       	jmp    294 <exitiputtest+0x24>
     337:	89 f6                	mov    %esi,%esi
     339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     340:	83 ec 08             	sub    $0x8,%esp
     343:	68 6f 4a 00 00       	push   $0x4a6f
     348:	ff 35 00 6b 00 00    	pushl  0x6b00
     34e:	e8 cd 43 00 00       	call   4720 <printf>
      exit(0);
     353:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     35a:	e8 63 42 00 00       	call   45c2 <exit>
     35f:	83 c4 10             	add    $0x10,%esp
     362:	eb 98                	jmp    2fc <exitiputtest+0x8c>
     364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     368:	83 ec 08             	sub    $0x8,%esp
     36b:	68 aa 4a 00 00       	push   $0x4aaa
     370:	ff 35 00 6b 00 00    	pushl  0x6b00
     376:	e8 a5 43 00 00       	call   4720 <printf>
      exit(0);
     37b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     382:	e8 3b 42 00 00       	call   45c2 <exit>
     387:	83 c4 10             	add    $0x10,%esp
     38a:	e9 59 ff ff ff       	jmp    2e8 <exitiputtest+0x78>
     38f:	90                   	nop
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     390:	83 ec 08             	sub    $0x8,%esp
     393:	68 40 4a 00 00       	push   $0x4a40
     398:	ff 35 00 6b 00 00    	pushl  0x6b00
     39e:	e8 7d 43 00 00       	call   4720 <printf>
      exit(0);
     3a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3aa:	e8 13 42 00 00       	call   45c2 <exit>
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	e9 19 ff ff ff       	jmp    2d0 <exitiputtest+0x60>
     3b7:	89 f6                	mov    %esi,%esi
     3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "openiput test\n");
     3c6:	68 d0 4a 00 00       	push   $0x4ad0
     3cb:	ff 35 00 6b 00 00    	pushl  0x6b00
     3d1:	e8 4a 43 00 00       	call   4720 <printf>
  if(mkdir("oidir") < 0){
     3d6:	c7 04 24 df 4a 00 00 	movl   $0x4adf,(%esp)
     3dd:	e8 48 42 00 00       	call   462a <mkdir>
     3e2:	83 c4 10             	add    $0x10,%esp
     3e5:	85 c0                	test   %eax,%eax
     3e7:	0f 88 c3 00 00 00    	js     4b0 <openiputtest+0xf0>
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
     3ed:	e8 c8 41 00 00       	call   45ba <fork>
  if(pid < 0){
     3f2:	85 c0                	test   %eax,%eax
     3f4:	0f 88 e6 00 00 00    	js     4e0 <openiputtest+0x120>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     3fa:	74 64                	je     460 <openiputtest+0xa0>
      printf(stdout, "open directory for write succeeded\n");
      exit(0);
    }
    exit(0);
  }
  sleep(1);
     3fc:	83 ec 0c             	sub    $0xc,%esp
     3ff:	6a 01                	push   $0x1
     401:	e8 4c 42 00 00       	call   4652 <sleep>
  if(unlink("oidir") != 0){
     406:	c7 04 24 df 4a 00 00 	movl   $0x4adf,(%esp)
     40d:	e8 00 42 00 00       	call   4612 <unlink>
     412:	83 c4 10             	add    $0x10,%esp
     415:	85 c0                	test   %eax,%eax
     417:	74 22                	je     43b <openiputtest+0x7b>
    printf(stdout, "unlink failed\n");
     419:	83 ec 08             	sub    $0x8,%esp
     41c:	68 f9 4a 00 00       	push   $0x4af9
     421:	ff 35 00 6b 00 00    	pushl  0x6b00
     427:	e8 f4 42 00 00       	call   4720 <printf>
    exit(0);
     42c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     433:	e8 8a 41 00 00       	call   45c2 <exit>
     438:	83 c4 10             	add    $0x10,%esp
  }
  wait(0);
     43b:	83 ec 0c             	sub    $0xc,%esp
     43e:	6a 00                	push   $0x0
     440:	e8 85 41 00 00       	call   45ca <wait>
  printf(stdout, "openiput test ok\n");
     445:	58                   	pop    %eax
     446:	5a                   	pop    %edx
     447:	68 08 4b 00 00       	push   $0x4b08
     44c:	ff 35 00 6b 00 00    	pushl  0x6b00
     452:	e8 c9 42 00 00       	call   4720 <printf>
}
     457:	83 c4 10             	add    $0x10,%esp
     45a:	c9                   	leave  
     45b:	c3                   	ret    
     45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid < 0){
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    int fd = open("oidir", O_RDWR);
     460:	83 ec 08             	sub    $0x8,%esp
     463:	6a 02                	push   $0x2
     465:	68 df 4a 00 00       	push   $0x4adf
     46a:	e8 93 41 00 00       	call   4602 <open>
    if(fd >= 0){
     46f:	83 c4 10             	add    $0x10,%esp
     472:	85 c0                	test   %eax,%eax
     474:	78 22                	js     498 <openiputtest+0xd8>
      printf(stdout, "open directory for write succeeded\n");
     476:	83 ec 08             	sub    $0x8,%esp
     479:	68 64 5a 00 00       	push   $0x5a64
     47e:	ff 35 00 6b 00 00    	pushl  0x6b00
     484:	e8 97 42 00 00       	call   4720 <printf>
      exit(0);
     489:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     490:	e8 2d 41 00 00       	call   45c2 <exit>
     495:	83 c4 10             	add    $0x10,%esp
    }
    exit(0);
     498:	83 ec 0c             	sub    $0xc,%esp
     49b:	6a 00                	push   $0x0
     49d:	e8 20 41 00 00       	call   45c2 <exit>
     4a2:	83 c4 10             	add    $0x10,%esp
     4a5:	e9 52 ff ff ff       	jmp    3fc <openiputtest+0x3c>
     4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
{
  int pid;

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     4b0:	83 ec 08             	sub    $0x8,%esp
     4b3:	68 e5 4a 00 00       	push   $0x4ae5
     4b8:	ff 35 00 6b 00 00    	pushl  0x6b00
     4be:	e8 5d 42 00 00       	call   4720 <printf>
    exit(0);
     4c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4ca:	e8 f3 40 00 00       	call   45c2 <exit>
     4cf:	83 c4 10             	add    $0x10,%esp
  }
  pid = fork();
     4d2:	e8 e3 40 00 00       	call   45ba <fork>
  if(pid < 0){
     4d7:	85 c0                	test   %eax,%eax
     4d9:	0f 89 1b ff ff ff    	jns    3fa <openiputtest+0x3a>
     4df:	90                   	nop
    printf(stdout, "fork failed\n");
     4e0:	83 ec 08             	sub    $0x8,%esp
     4e3:	68 81 59 00 00       	push   $0x5981
     4e8:	ff 35 00 6b 00 00    	pushl  0x6b00
     4ee:	e8 2d 42 00 00       	call   4720 <printf>
    exit(0);
     4f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4fa:	e8 c3 40 00 00       	call   45c2 <exit>
     4ff:	83 c4 10             	add    $0x10,%esp
     502:	e9 f5 fe ff ff       	jmp    3fc <openiputtest+0x3c>
     507:	89 f6                	mov    %esi,%esi
     509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000510 <opentest>:

// simple file system tests

void
opentest(void)
{
     510:	55                   	push   %ebp
     511:	89 e5                	mov    %esp,%ebp
     513:	83 ec 20             	sub    $0x20,%esp
  int fd;

  printf(stdout, "open test\n");
     516:	68 1a 4b 00 00       	push   $0x4b1a
     51b:	ff 35 00 6b 00 00    	pushl  0x6b00
     521:	e8 fa 41 00 00       	call   4720 <printf>
  fd = open("echo", 0);
     526:	59                   	pop    %ecx
     527:	58                   	pop    %eax
     528:	6a 00                	push   $0x0
     52a:	68 25 4b 00 00       	push   $0x4b25
     52f:	e8 ce 40 00 00       	call   4602 <open>
  if(fd < 0){
     534:	83 c4 10             	add    $0x10,%esp
     537:	85 c0                	test   %eax,%eax
     539:	78 5d                	js     598 <opentest+0x88>
    printf(stdout, "open echo failed!\n");
    exit(0);
  }
  close(fd);
     53b:	83 ec 0c             	sub    $0xc,%esp
     53e:	50                   	push   %eax
     53f:	e8 a6 40 00 00       	call   45ea <close>
  fd = open("doesnotexist", 0);
     544:	58                   	pop    %eax
     545:	5a                   	pop    %edx
     546:	6a 00                	push   $0x0
     548:	68 3d 4b 00 00       	push   $0x4b3d
     54d:	e8 b0 40 00 00       	call   4602 <open>
  if(fd >= 0){
     552:	83 c4 10             	add    $0x10,%esp
     555:	85 c0                	test   %eax,%eax
     557:	78 22                	js     57b <opentest+0x6b>
    printf(stdout, "open doesnotexist succeeded!\n");
     559:	83 ec 08             	sub    $0x8,%esp
     55c:	68 4a 4b 00 00       	push   $0x4b4a
     561:	ff 35 00 6b 00 00    	pushl  0x6b00
     567:	e8 b4 41 00 00       	call   4720 <printf>
    exit(0);
     56c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     573:	e8 4a 40 00 00       	call   45c2 <exit>
     578:	83 c4 10             	add    $0x10,%esp
  }
  printf(stdout, "open test ok\n");
     57b:	83 ec 08             	sub    $0x8,%esp
     57e:	68 68 4b 00 00       	push   $0x4b68
     583:	ff 35 00 6b 00 00    	pushl  0x6b00
     589:	e8 92 41 00 00       	call   4720 <printf>
}
     58e:	83 c4 10             	add    $0x10,%esp
     591:	c9                   	leave  
     592:	c3                   	ret    
     593:	90                   	nop
     594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     598:	83 ec 08             	sub    $0x8,%esp
     59b:	89 45 f4             	mov    %eax,-0xc(%ebp)
     59e:	68 2a 4b 00 00       	push   $0x4b2a
     5a3:	ff 35 00 6b 00 00    	pushl  0x6b00
     5a9:	e8 72 41 00 00       	call   4720 <printf>
    exit(0);
     5ae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5b5:	e8 08 40 00 00       	call   45c2 <exit>
     5ba:	83 c4 10             	add    $0x10,%esp
     5bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
     5c0:	e9 76 ff ff ff       	jmp    53b <opentest+0x2b>
     5c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005d0 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	56                   	push   %esi
     5d4:	53                   	push   %ebx
  int fd;
  int i;

  printf(stdout, "small file test\n");
     5d5:	83 ec 08             	sub    $0x8,%esp
     5d8:	68 76 4b 00 00       	push   $0x4b76
     5dd:	ff 35 00 6b 00 00    	pushl  0x6b00
     5e3:	e8 38 41 00 00       	call   4720 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     5e8:	59                   	pop    %ecx
     5e9:	5b                   	pop    %ebx
     5ea:	68 02 02 00 00       	push   $0x202
     5ef:	68 87 4b 00 00       	push   $0x4b87
     5f4:	e8 09 40 00 00       	call   4602 <open>
  if(fd >= 0){
     5f9:	83 c4 10             	add    $0x10,%esp
     5fc:	85 c0                	test   %eax,%eax
{
  int fd;
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
     5fe:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     600:	0f 88 9f 01 00 00    	js     7a5 <writetest+0x1d5>
    printf(stdout, "creat small succeeded; ok\n");
     606:	83 ec 08             	sub    $0x8,%esp
     609:	68 8d 4b 00 00       	push   $0x4b8d
     60e:	ff 35 00 6b 00 00    	pushl  0x6b00
     614:	e8 07 41 00 00       	call   4720 <printf>
     619:	83 c4 10             	add    $0x10,%esp
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     61c:	31 db                	xor    %ebx,%ebx
     61e:	66 90                	xchg   %ax,%ax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     620:	83 ec 04             	sub    $0x4,%esp
     623:	6a 0a                	push   $0xa
     625:	68 c4 4b 00 00       	push   $0x4bc4
     62a:	56                   	push   %esi
     62b:	e8 b2 3f 00 00       	call   45e2 <write>
     630:	83 c4 10             	add    $0x10,%esp
     633:	83 f8 0a             	cmp    $0xa,%eax
     636:	74 23                	je     65b <writetest+0x8b>
      printf(stdout, "error: write aa %d new file failed\n", i);
     638:	83 ec 04             	sub    $0x4,%esp
     63b:	53                   	push   %ebx
     63c:	68 88 5a 00 00       	push   $0x5a88
     641:	ff 35 00 6b 00 00    	pushl  0x6b00
     647:	e8 d4 40 00 00       	call   4720 <printf>
      exit(0);
     64c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     653:	e8 6a 3f 00 00       	call   45c2 <exit>
     658:	83 c4 10             	add    $0x10,%esp
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     65b:	83 ec 04             	sub    $0x4,%esp
     65e:	6a 0a                	push   $0xa
     660:	68 cf 4b 00 00       	push   $0x4bcf
     665:	56                   	push   %esi
     666:	e8 77 3f 00 00       	call   45e2 <write>
     66b:	83 c4 10             	add    $0x10,%esp
     66e:	83 f8 0a             	cmp    $0xa,%eax
     671:	74 23                	je     696 <writetest+0xc6>
      printf(stdout, "error: write bb %d new file failed\n", i);
     673:	83 ec 04             	sub    $0x4,%esp
     676:	53                   	push   %ebx
     677:	68 ac 5a 00 00       	push   $0x5aac
     67c:	ff 35 00 6b 00 00    	pushl  0x6b00
     682:	e8 99 40 00 00       	call   4720 <printf>
      exit(0);
     687:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     68e:	e8 2f 3f 00 00       	call   45c2 <exit>
     693:	83 c4 10             	add    $0x10,%esp
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     696:	83 c3 01             	add    $0x1,%ebx
     699:	83 fb 64             	cmp    $0x64,%ebx
     69c:	75 82                	jne    620 <writetest+0x50>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
     69e:	83 ec 08             	sub    $0x8,%esp
     6a1:	68 da 4b 00 00       	push   $0x4bda
     6a6:	ff 35 00 6b 00 00    	pushl  0x6b00
     6ac:	e8 6f 40 00 00       	call   4720 <printf>
  close(fd);
     6b1:	89 34 24             	mov    %esi,(%esp)
     6b4:	e8 31 3f 00 00       	call   45ea <close>
  fd = open("small", O_RDONLY);
     6b9:	58                   	pop    %eax
     6ba:	5a                   	pop    %edx
     6bb:	6a 00                	push   $0x0
     6bd:	68 87 4b 00 00       	push   $0x4b87
     6c2:	e8 3b 3f 00 00       	call   4602 <open>
  if(fd >= 0){
     6c7:	83 c4 10             	add    $0x10,%esp
     6ca:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     6cc:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6ce:	0f 88 aa 00 00 00    	js     77e <writetest+0x1ae>
    printf(stdout, "open small succeeded ok\n");
     6d4:	83 ec 08             	sub    $0x8,%esp
     6d7:	68 e5 4b 00 00       	push   $0x4be5
     6dc:	ff 35 00 6b 00 00    	pushl  0x6b00
     6e2:	e8 39 40 00 00       	call   4720 <printf>
     6e7:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
     6ea:	83 ec 04             	sub    $0x4,%esp
     6ed:	68 d0 07 00 00       	push   $0x7d0
     6f2:	68 e0 92 00 00       	push   $0x92e0
     6f7:	53                   	push   %ebx
     6f8:	e8 dd 3e 00 00       	call   45da <read>
  if(i == 2000){
     6fd:	83 c4 10             	add    $0x10,%esp
     700:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     705:	74 5f                	je     766 <writetest+0x196>
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     707:	83 ec 08             	sub    $0x8,%esp
     70a:	68 45 4f 00 00       	push   $0x4f45
     70f:	ff 35 00 6b 00 00    	pushl  0x6b00
     715:	e8 06 40 00 00       	call   4720 <printf>
    exit(0);
     71a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     721:	e8 9c 3e 00 00       	call   45c2 <exit>
     726:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     729:	83 ec 0c             	sub    $0xc,%esp
     72c:	53                   	push   %ebx
     72d:	e8 b8 3e 00 00       	call   45ea <close>

  if(unlink("small") < 0){
     732:	c7 04 24 87 4b 00 00 	movl   $0x4b87,(%esp)
     739:	e8 d4 3e 00 00       	call   4612 <unlink>
     73e:	83 c4 10             	add    $0x10,%esp
     741:	85 c0                	test   %eax,%eax
     743:	0f 88 83 00 00 00    	js     7cc <writetest+0x1fc>
    printf(stdout, "unlink small failed\n");
    exit(0);
  }
  printf(stdout, "small file test ok\n");
     749:	83 ec 08             	sub    $0x8,%esp
     74c:	68 41 4c 00 00       	push   $0x4c41
     751:	ff 35 00 6b 00 00    	pushl  0x6b00
     757:	e8 c4 3f 00 00       	call   4720 <printf>
}
     75c:	83 c4 10             	add    $0x10,%esp
     75f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     762:	5b                   	pop    %ebx
     763:	5e                   	pop    %esi
     764:	5d                   	pop    %ebp
     765:	c3                   	ret    
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
     766:	83 ec 08             	sub    $0x8,%esp
     769:	68 19 4c 00 00       	push   $0x4c19
     76e:	ff 35 00 6b 00 00    	pushl  0x6b00
     774:	e8 a7 3f 00 00       	call   4720 <printf>
     779:	83 c4 10             	add    $0x10,%esp
     77c:	eb ab                	jmp    729 <writetest+0x159>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     77e:	83 ec 08             	sub    $0x8,%esp
     781:	68 fe 4b 00 00       	push   $0x4bfe
     786:	ff 35 00 6b 00 00    	pushl  0x6b00
     78c:	e8 8f 3f 00 00       	call   4720 <printf>
    exit(0);
     791:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     798:	e8 25 3e 00 00       	call   45c2 <exit>
     79d:	83 c4 10             	add    $0x10,%esp
     7a0:	e9 45 ff ff ff       	jmp    6ea <writetest+0x11a>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     7a5:	83 ec 08             	sub    $0x8,%esp
     7a8:	68 a8 4b 00 00       	push   $0x4ba8
     7ad:	ff 35 00 6b 00 00    	pushl  0x6b00
     7b3:	e8 68 3f 00 00       	call   4720 <printf>
    exit(0);
     7b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7bf:	e8 fe 3d 00 00       	call   45c2 <exit>
     7c4:	83 c4 10             	add    $0x10,%esp
     7c7:	e9 50 fe ff ff       	jmp    61c <writetest+0x4c>
    exit(0);
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     7cc:	83 ec 08             	sub    $0x8,%esp
     7cf:	68 2c 4c 00 00       	push   $0x4c2c
     7d4:	ff 35 00 6b 00 00    	pushl  0x6b00
     7da:	e8 41 3f 00 00       	call   4720 <printf>
    exit(0);
     7df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7e6:	e8 d7 3d 00 00       	call   45c2 <exit>
     7eb:	83 c4 10             	add    $0x10,%esp
     7ee:	e9 56 ff ff ff       	jmp    749 <writetest+0x179>
     7f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     7f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000800 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     800:	55                   	push   %ebp
     801:	89 e5                	mov    %esp,%ebp
     803:	56                   	push   %esi
     804:	53                   	push   %ebx
  int i, fd, n;

  printf(stdout, "big files test\n");
     805:	83 ec 08             	sub    $0x8,%esp
     808:	68 55 4c 00 00       	push   $0x4c55
     80d:	ff 35 00 6b 00 00    	pushl  0x6b00
     813:	e8 08 3f 00 00       	call   4720 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     818:	59                   	pop    %ecx
     819:	5b                   	pop    %ebx
     81a:	68 02 02 00 00       	push   $0x202
     81f:	68 cf 4c 00 00       	push   $0x4ccf
     824:	e8 d9 3d 00 00       	call   4602 <open>
  if(fd < 0){
     829:	83 c4 10             	add    $0x10,%esp
     82c:	85 c0                	test   %eax,%eax
{
  int i, fd, n;

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
     82e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     830:	0f 88 64 01 00 00    	js     99a <writetest1+0x19a>
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     836:	31 db                	xor    %ebx,%ebx
     838:	90                   	nop
     839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     840:	83 ec 04             	sub    $0x4,%esp
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     843:	89 1d e0 92 00 00    	mov    %ebx,0x92e0
    if(write(fd, buf, 512) != 512){
     849:	68 00 02 00 00       	push   $0x200
     84e:	68 e0 92 00 00       	push   $0x92e0
     853:	56                   	push   %esi
     854:	e8 89 3d 00 00       	call   45e2 <write>
     859:	83 c4 10             	add    $0x10,%esp
     85c:	3d 00 02 00 00       	cmp    $0x200,%eax
     861:	74 23                	je     886 <writetest1+0x86>
      printf(stdout, "error: write big file failed\n", i);
     863:	83 ec 04             	sub    $0x4,%esp
     866:	53                   	push   %ebx
     867:	68 7f 4c 00 00       	push   $0x4c7f
     86c:	ff 35 00 6b 00 00    	pushl  0x6b00
     872:	e8 a9 3e 00 00       	call   4720 <printf>
      exit(0);
     877:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     87e:	e8 3f 3d 00 00       	call   45c2 <exit>
     883:	83 c4 10             	add    $0x10,%esp
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
     886:	83 c3 01             	add    $0x1,%ebx
     889:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     88f:	75 af                	jne    840 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit(0);
    }
  }

  close(fd);
     891:	83 ec 0c             	sub    $0xc,%esp
     894:	56                   	push   %esi
     895:	e8 50 3d 00 00       	call   45ea <close>

  fd = open("big", O_RDONLY);
     89a:	58                   	pop    %eax
     89b:	5a                   	pop    %edx
     89c:	6a 00                	push   $0x0
     89e:	68 cf 4c 00 00       	push   $0x4ccf
     8a3:	e8 5a 3d 00 00       	call   4602 <open>
  if(fd < 0){
     8a8:	83 c4 10             	add    $0x10,%esp
     8ab:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     8ad:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     8af:	0f 88 be 00 00 00    	js     973 <writetest1+0x173>
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     8b5:	31 db                	xor    %ebx,%ebx
     8b7:	eb 5e                	jmp    917 <writetest1+0x117>
     8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
     8c0:	3d 00 02 00 00       	cmp    $0x200,%eax
     8c5:	74 23                	je     8ea <writetest1+0xea>
      printf(stdout, "read failed %d\n", i);
     8c7:	83 ec 04             	sub    $0x4,%esp
     8ca:	50                   	push   %eax
     8cb:	68 d3 4c 00 00       	push   $0x4cd3
     8d0:	ff 35 00 6b 00 00    	pushl  0x6b00
     8d6:	e8 45 3e 00 00       	call   4720 <printf>
      exit(0);
     8db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8e2:	e8 db 3c 00 00       	call   45c2 <exit>
     8e7:	83 c4 10             	add    $0x10,%esp
    }
    if(((int*)buf)[0] != n){
     8ea:	a1 e0 92 00 00       	mov    0x92e0,%eax
     8ef:	39 c3                	cmp    %eax,%ebx
     8f1:	74 21                	je     914 <writetest1+0x114>
      printf(stdout, "read content of block %d is %d\n",
     8f3:	50                   	push   %eax
     8f4:	53                   	push   %ebx
     8f5:	68 d0 5a 00 00       	push   $0x5ad0
     8fa:	ff 35 00 6b 00 00    	pushl  0x6b00
     900:	e8 1b 3e 00 00       	call   4720 <printf>
             n, ((int*)buf)[0]);
      exit(0);
     905:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     90c:	e8 b1 3c 00 00       	call   45c2 <exit>
     911:	83 c4 10             	add    $0x10,%esp
    }
    n++;
     914:	83 c3 01             	add    $0x1,%ebx
    exit(0);
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     917:	83 ec 04             	sub    $0x4,%esp
     91a:	68 00 02 00 00       	push   $0x200
     91f:	68 e0 92 00 00       	push   $0x92e0
     924:	56                   	push   %esi
     925:	e8 b0 3c 00 00       	call   45da <read>
    if(i == 0){
     92a:	83 c4 10             	add    $0x10,%esp
     92d:	85 c0                	test   %eax,%eax
     92f:	75 8f                	jne    8c0 <writetest1+0xc0>
      if(n == MAXFILE - 1){
     931:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     937:	0f 84 ab 00 00 00    	je     9e8 <writetest1+0x1e8>
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
  }
  close(fd);
     93d:	83 ec 0c             	sub    $0xc,%esp
     940:	56                   	push   %esi
     941:	e8 a4 3c 00 00       	call   45ea <close>
  if(unlink("big") < 0){
     946:	c7 04 24 cf 4c 00 00 	movl   $0x4ccf,(%esp)
     94d:	e8 c0 3c 00 00       	call   4612 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 68                	js     9c1 <writetest1+0x1c1>
    printf(stdout, "unlink big failed\n");
    exit(0);
  }
  printf(stdout, "big files ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 f6 4c 00 00       	push   $0x4cf6
     961:	ff 35 00 6b 00 00    	pushl  0x6b00
     967:	e8 b4 3d 00 00       	call   4720 <printf>
}
     96c:	8d 65 f8             	lea    -0x8(%ebp),%esp
     96f:	5b                   	pop    %ebx
     970:	5e                   	pop    %esi
     971:	5d                   	pop    %ebp
     972:	c3                   	ret    

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     973:	83 ec 08             	sub    $0x8,%esp
     976:	68 9d 4c 00 00       	push   $0x4c9d
     97b:	ff 35 00 6b 00 00    	pushl  0x6b00
     981:	e8 9a 3d 00 00       	call   4720 <printf>
    exit(0);
     986:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     98d:	e8 30 3c 00 00       	call   45c2 <exit>
     992:	83 c4 10             	add    $0x10,%esp
     995:	e9 1b ff ff ff       	jmp    8b5 <writetest1+0xb5>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     99a:	83 ec 08             	sub    $0x8,%esp
     99d:	68 65 4c 00 00       	push   $0x4c65
     9a2:	ff 35 00 6b 00 00    	pushl  0x6b00
     9a8:	e8 73 3d 00 00       	call   4720 <printf>
    exit(0);
     9ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b4:	e8 09 3c 00 00       	call   45c2 <exit>
     9b9:	83 c4 10             	add    $0x10,%esp
     9bc:	e9 75 fe ff ff       	jmp    836 <writetest1+0x36>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     9c1:	83 ec 08             	sub    $0x8,%esp
     9c4:	68 e3 4c 00 00       	push   $0x4ce3
     9c9:	ff 35 00 6b 00 00    	pushl  0x6b00
     9cf:	e8 4c 3d 00 00       	call   4720 <printf>
    exit(0);
     9d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9db:	e8 e2 3b 00 00       	call   45c2 <exit>
     9e0:	83 c4 10             	add    $0x10,%esp
     9e3:	e9 71 ff ff ff       	jmp    959 <writetest1+0x159>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     9e8:	83 ec 04             	sub    $0x4,%esp
     9eb:	68 8b 00 00 00       	push   $0x8b
     9f0:	68 b6 4c 00 00       	push   $0x4cb6
     9f5:	ff 35 00 6b 00 00    	pushl  0x6b00
     9fb:	e8 20 3d 00 00       	call   4720 <printf>
        exit(0);
     a00:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a07:	e8 b6 3b 00 00       	call   45c2 <exit>
     a0c:	83 c4 10             	add    $0x10,%esp
     a0f:	e9 29 ff ff ff       	jmp    93d <writetest1+0x13d>
     a14:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     a1a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000a20 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     a24:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     a29:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     a2c:	68 f0 5a 00 00       	push   $0x5af0
     a31:	ff 35 00 6b 00 00    	pushl  0x6b00
     a37:	e8 e4 3c 00 00       	call   4720 <printf>

  name[0] = 'a';
     a3c:	c6 05 e0 b2 00 00 61 	movb   $0x61,0xb2e0
  name[2] = '\0';
     a43:	c6 05 e2 b2 00 00 00 	movb   $0x0,0xb2e2
     a4a:	83 c4 10             	add    $0x10,%esp
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     a50:	83 ec 08             	sub    $0x8,%esp
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     a53:	88 1d e1 b2 00 00    	mov    %bl,0xb2e1
     a59:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     a5c:	68 02 02 00 00       	push   $0x202
     a61:	68 e0 b2 00 00       	push   $0xb2e0
     a66:	e8 97 3b 00 00       	call   4602 <open>
    close(fd);
     a6b:	89 04 24             	mov    %eax,(%esp)
     a6e:	e8 77 3b 00 00       	call   45ea <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     a73:	83 c4 10             	add    $0x10,%esp
     a76:	80 fb 64             	cmp    $0x64,%bl
     a79:	75 d5                	jne    a50 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     a7b:	c6 05 e0 b2 00 00 61 	movb   $0x61,0xb2e0
  name[2] = '\0';
     a82:	c6 05 e2 b2 00 00 00 	movb   $0x0,0xb2e2
     a89:	bb 30 00 00 00       	mov    $0x30,%ebx
     a8e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    unlink(name);
     a90:	83 ec 0c             	sub    $0xc,%esp
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     a93:	88 1d e1 b2 00 00    	mov    %bl,0xb2e1
     a99:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     a9c:	68 e0 b2 00 00       	push   $0xb2e0
     aa1:	e8 6c 3b 00 00       	call   4612 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     aa6:	83 c4 10             	add    $0x10,%esp
     aa9:	80 fb 64             	cmp    $0x64,%bl
     aac:	75 e2                	jne    a90 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     aae:	83 ec 08             	sub    $0x8,%esp
     ab1:	68 18 5b 00 00       	push   $0x5b18
     ab6:	ff 35 00 6b 00 00    	pushl  0x6b00
     abc:	e8 5f 3c 00 00       	call   4720 <printf>
}
     ac1:	83 c4 10             	add    $0x10,%esp
     ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ac7:	c9                   	leave  
     ac8:	c3                   	ret    
     ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ad0 <dirtest>:

void dirtest(void)
{
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     ad6:	68 04 4d 00 00       	push   $0x4d04
     adb:	ff 35 00 6b 00 00    	pushl  0x6b00
     ae1:	e8 3a 3c 00 00       	call   4720 <printf>

  if(mkdir("dir0") < 0){
     ae6:	c7 04 24 10 4d 00 00 	movl   $0x4d10,(%esp)
     aed:	e8 38 3b 00 00       	call   462a <mkdir>
     af2:	83 c4 10             	add    $0x10,%esp
     af5:	85 c0                	test   %eax,%eax
     af7:	0f 88 8b 00 00 00    	js     b88 <dirtest+0xb8>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
     afd:	83 ec 0c             	sub    $0xc,%esp
     b00:	68 10 4d 00 00       	push   $0x4d10
     b05:	e8 28 3b 00 00       	call   4632 <chdir>
     b0a:	83 c4 10             	add    $0x10,%esp
     b0d:	85 c0                	test   %eax,%eax
     b0f:	0f 88 9b 00 00 00    	js     bb0 <dirtest+0xe0>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
     b15:	83 ec 0c             	sub    $0xc,%esp
     b18:	68 b5 52 00 00       	push   $0x52b5
     b1d:	e8 10 3b 00 00       	call   4632 <chdir>
     b22:	83 c4 10             	add    $0x10,%esp
     b25:	85 c0                	test   %eax,%eax
     b27:	0f 88 b3 00 00 00    	js     be0 <dirtest+0x110>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
     b2d:	83 ec 0c             	sub    $0xc,%esp
     b30:	68 10 4d 00 00       	push   $0x4d10
     b35:	e8 d8 3a 00 00       	call   4612 <unlink>
     b3a:	83 c4 10             	add    $0x10,%esp
     b3d:	85 c0                	test   %eax,%eax
     b3f:	78 1f                	js     b60 <dirtest+0x90>
    printf(stdout, "unlink dir0 failed\n");
    exit(0);
  }
  printf(stdout, "mkdir test ok\n");
     b41:	83 ec 08             	sub    $0x8,%esp
     b44:	68 4d 4d 00 00       	push   $0x4d4d
     b49:	ff 35 00 6b 00 00    	pushl  0x6b00
     b4f:	e8 cc 3b 00 00       	call   4720 <printf>
}
     b54:	83 c4 10             	add    $0x10,%esp
     b57:	c9                   	leave  
     b58:	c3                   	ret    
     b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     b60:	83 ec 08             	sub    $0x8,%esp
     b63:	68 39 4d 00 00       	push   $0x4d39
     b68:	ff 35 00 6b 00 00    	pushl  0x6b00
     b6e:	e8 ad 3b 00 00       	call   4720 <printf>
    exit(0);
     b73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b7a:	e8 43 3a 00 00       	call   45c2 <exit>
     b7f:	83 c4 10             	add    $0x10,%esp
     b82:	eb bd                	jmp    b41 <dirtest+0x71>
     b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     b88:	83 ec 08             	sub    $0x8,%esp
     b8b:	68 40 4a 00 00       	push   $0x4a40
     b90:	ff 35 00 6b 00 00    	pushl  0x6b00
     b96:	e8 85 3b 00 00       	call   4720 <printf>
    exit(0);
     b9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ba2:	e8 1b 3a 00 00       	call   45c2 <exit>
     ba7:	83 c4 10             	add    $0x10,%esp
     baa:	e9 4e ff ff ff       	jmp    afd <dirtest+0x2d>
     baf:	90                   	nop
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     bb0:	83 ec 08             	sub    $0x8,%esp
     bb3:	68 15 4d 00 00       	push   $0x4d15
     bb8:	ff 35 00 6b 00 00    	pushl  0x6b00
     bbe:	e8 5d 3b 00 00       	call   4720 <printf>
    exit(0);
     bc3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bca:	e8 f3 39 00 00       	call   45c2 <exit>
     bcf:	83 c4 10             	add    $0x10,%esp
     bd2:	e9 3e ff ff ff       	jmp    b15 <dirtest+0x45>
     bd7:	89 f6                	mov    %esi,%esi
     bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     be0:	83 ec 08             	sub    $0x8,%esp
     be3:	68 28 4d 00 00       	push   $0x4d28
     be8:	ff 35 00 6b 00 00    	pushl  0x6b00
     bee:	e8 2d 3b 00 00       	call   4720 <printf>
    exit(0);
     bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bfa:	e8 c3 39 00 00       	call   45c2 <exit>
     bff:	83 c4 10             	add    $0x10,%esp
     c02:	e9 26 ff ff ff       	jmp    b2d <dirtest+0x5d>
     c07:	89 f6                	mov    %esi,%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c10 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     c16:	68 5c 4d 00 00       	push   $0x4d5c
     c1b:	ff 35 00 6b 00 00    	pushl  0x6b00
     c21:	e8 fa 3a 00 00       	call   4720 <printf>
  if(exec("echo", echoargv) < 0){
     c26:	58                   	pop    %eax
     c27:	5a                   	pop    %edx
     c28:	68 04 6b 00 00       	push   $0x6b04
     c2d:	68 25 4b 00 00       	push   $0x4b25
     c32:	e8 c3 39 00 00       	call   45fa <exec>
     c37:	83 c4 10             	add    $0x10,%esp
     c3a:	85 c0                	test   %eax,%eax
     c3c:	78 02                	js     c40 <exectest+0x30>
    printf(stdout, "exec echo failed\n");
    exit(0);
  }
}
     c3e:	c9                   	leave  
     c3f:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     c40:	83 ec 08             	sub    $0x8,%esp
     c43:	68 67 4d 00 00       	push   $0x4d67
     c48:	ff 35 00 6b 00 00    	pushl  0x6b00
     c4e:	e8 cd 3a 00 00       	call   4720 <printf>
    exit(0);
     c53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c5a:	e8 63 39 00 00       	call   45c2 <exit>
     c5f:	83 c4 10             	add    $0x10,%esp
  }
}
     c62:	c9                   	leave  
     c63:	c3                   	ret    
     c64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c70 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	57                   	push   %edi
     c74:	56                   	push   %esi
     c75:	53                   	push   %ebx
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     c76:	8d 45 e0             	lea    -0x20(%ebp),%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     c79:	83 ec 38             	sub    $0x38,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     c7c:	50                   	push   %eax
     c7d:	e8 50 39 00 00       	call   45d2 <pipe>
     c82:	83 c4 10             	add    $0x10,%esp
     c85:	85 c0                	test   %eax,%eax
     c87:	0f 85 2f 01 00 00    	jne    dbc <pipe1+0x14c>
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
     c8d:	e8 28 39 00 00       	call   45ba <fork>
  seq = 0;
  if(pid == 0){
     c92:	83 f8 00             	cmp    $0x0,%eax
     c95:	0f 84 86 00 00 00    	je     d21 <pipe1+0xb1>
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
     c9b:	0f 8e 3e 01 00 00    	jle    ddf <pipe1+0x16f>
    close(fds[1]);
     ca1:	83 ec 0c             	sub    $0xc,%esp
     ca4:	ff 75 e4             	pushl  -0x1c(%ebp)
    total = 0;
    cc = 1;
     ca7:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     cac:	31 db                	xor    %ebx,%ebx
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
     cae:	e8 37 39 00 00       	call   45ea <close>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     cb3:	83 c4 10             	add    $0x10,%esp
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
     cb6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     cbd:	83 ec 04             	sub    $0x4,%esp
     cc0:	57                   	push   %edi
     cc1:	68 e0 92 00 00       	push   $0x92e0
     cc6:	ff 75 e0             	pushl  -0x20(%ebp)
     cc9:	e8 0c 39 00 00       	call   45da <read>
     cce:	83 c4 10             	add    $0x10,%esp
     cd1:	85 c0                	test   %eax,%eax
     cd3:	0f 8e 26 01 00 00    	jle    dff <pipe1+0x18f>
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     cd9:	89 d9                	mov    %ebx,%ecx
     cdb:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     cde:	f7 d9                	neg    %ecx
     ce0:	38 9c 0b e0 92 00 00 	cmp    %bl,0x92e0(%ebx,%ecx,1)
     ce7:	8d 53 01             	lea    0x1(%ebx),%edx
     cea:	75 1b                	jne    d07 <pipe1+0x97>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     cec:	39 d6                	cmp    %edx,%esi
     cee:	89 d3                	mov    %edx,%ebx
     cf0:	75 ee                	jne    ce0 <pipe1+0x70>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     cf2:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     cf4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     cf7:	b8 00 20 00 00       	mov    $0x2000,%eax
     cfc:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     d02:	0f 4f f8             	cmovg  %eax,%edi
     d05:	eb b6                	jmp    cbd <pipe1+0x4d>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     d07:	83 ec 08             	sub    $0x8,%esp
     d0a:	68 96 4d 00 00       	push   $0x4d96
     d0f:	6a 01                	push   $0x1
     d11:	e8 0a 3a 00 00       	call   4720 <printf>
          return;
     d16:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
}
     d19:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d1c:	5b                   	pop    %ebx
     d1d:	5e                   	pop    %esi
     d1e:	5f                   	pop    %edi
     d1f:	5d                   	pop    %ebp
     d20:	c3                   	ret    
    exit(0);
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     d21:	83 ec 0c             	sub    $0xc,%esp
     d24:	ff 75 e0             	pushl  -0x20(%ebp)
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     d27:	31 db                	xor    %ebx,%ebx
  if(pid == 0){
    close(fds[0]);
     d29:	e8 bc 38 00 00       	call   45ea <close>
     d2e:	83 c4 10             	add    $0x10,%esp
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     d31:	89 da                	mov    %ebx,%edx
     d33:	8d b3 09 04 00 00    	lea    0x409(%ebx),%esi

// simple fork and pipe read/write

void
pipe1(void)
{
     d39:	89 d8                	mov    %ebx,%eax
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     d3b:	f7 da                	neg    %edx
     d3d:	8d 76 00             	lea    0x0(%esi),%esi
     d40:	88 84 02 e0 92 00 00 	mov    %al,0x92e0(%edx,%eax,1)
     d47:	83 c0 01             	add    $0x1,%eax
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     d4a:	39 f0                	cmp    %esi,%eax
     d4c:	75 f2                	jne    d40 <pipe1+0xd0>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     d4e:	83 ec 04             	sub    $0x4,%esp
     d51:	89 f3                	mov    %esi,%ebx
     d53:	68 09 04 00 00       	push   $0x409
     d58:	68 e0 92 00 00       	push   $0x92e0
     d5d:	ff 75 e4             	pushl  -0x1c(%ebp)
     d60:	e8 7d 38 00 00       	call   45e2 <write>
     d65:	83 c4 10             	add    $0x10,%esp
     d68:	3d 09 04 00 00       	cmp    $0x409,%eax
     d6d:	74 1e                	je     d8d <pipe1+0x11d>
        printf(1, "pipe1 oops 1\n");
     d6f:	83 ec 08             	sub    $0x8,%esp
     d72:	68 88 4d 00 00       	push   $0x4d88
     d77:	6a 01                	push   $0x1
     d79:	e8 a2 39 00 00       	call   4720 <printf>
        exit(0);
     d7e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d85:	e8 38 38 00 00       	call   45c2 <exit>
     d8a:	83 c4 10             	add    $0x10,%esp
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     d8d:	81 fe 2d 14 00 00    	cmp    $0x142d,%esi
     d93:	75 9c                	jne    d31 <pipe1+0xc1>
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
     d95:	83 ec 0c             	sub    $0xc,%esp
     d98:	6a 00                	push   $0x0
     d9a:	e8 23 38 00 00       	call   45c2 <exit>
     d9f:	83 c4 10             	add    $0x10,%esp
    wait(0);
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
     da2:	83 ec 08             	sub    $0x8,%esp
     da5:	68 ca 4d 00 00       	push   $0x4dca
     daa:	6a 01                	push   $0x1
     dac:	e8 6f 39 00 00       	call   4720 <printf>
     db1:	83 c4 10             	add    $0x10,%esp
}
     db4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     db7:	5b                   	pop    %ebx
     db8:	5e                   	pop    %esi
     db9:	5f                   	pop    %edi
     dba:	5d                   	pop    %ebp
     dbb:	c3                   	ret    
{
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     dbc:	83 ec 08             	sub    $0x8,%esp
     dbf:	68 79 4d 00 00       	push   $0x4d79
     dc4:	6a 01                	push   $0x1
     dc6:	e8 55 39 00 00       	call   4720 <printf>
    exit(0);
     dcb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dd2:	e8 eb 37 00 00       	call   45c2 <exit>
     dd7:	83 c4 10             	add    $0x10,%esp
     dda:	e9 ae fe ff ff       	jmp    c8d <pipe1+0x1d>
      exit(0);
    }
    close(fds[0]);
    wait(0);
  } else {
    printf(1, "fork() failed\n");
     ddf:	83 ec 08             	sub    $0x8,%esp
     de2:	68 bb 4d 00 00       	push   $0x4dbb
     de7:	6a 01                	push   $0x1
     de9:	e8 32 39 00 00       	call   4720 <printf>
    exit(0);
     dee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     df5:	e8 c8 37 00 00       	call   45c2 <exit>
     dfa:	83 c4 10             	add    $0x10,%esp
     dfd:	eb a3                	jmp    da2 <pipe1+0x132>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     dff:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e02:	3d 2d 14 00 00       	cmp    $0x142d,%eax
     e07:	74 1f                	je     e28 <pipe1+0x1b8>
      printf(1, "pipe1 oops 3 total %d\n", total);
     e09:	83 ec 04             	sub    $0x4,%esp
     e0c:	50                   	push   %eax
     e0d:	68 a4 4d 00 00       	push   $0x4da4
     e12:	6a 01                	push   $0x1
     e14:	e8 07 39 00 00       	call   4720 <printf>
      exit(0);
     e19:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e20:	e8 9d 37 00 00       	call   45c2 <exit>
     e25:	83 c4 10             	add    $0x10,%esp
    }
    close(fds[0]);
     e28:	83 ec 0c             	sub    $0xc,%esp
     e2b:	ff 75 e0             	pushl  -0x20(%ebp)
     e2e:	e8 b7 37 00 00       	call   45ea <close>
    wait(0);
     e33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e3a:	e8 8b 37 00 00       	call   45ca <wait>
     e3f:	83 c4 10             	add    $0x10,%esp
     e42:	e9 5b ff ff ff       	jmp    da2 <pipe1+0x132>
     e47:	89 f6                	mov    %esi,%esi
     e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e50 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 24             	sub    $0x24,%esp
  int pid1, pid2, pid3;
  int pfds[2];

  printf(1, "preempt: ");
     e59:	68 d4 4d 00 00       	push   $0x4dd4
     e5e:	6a 01                	push   $0x1
     e60:	e8 bb 38 00 00       	call   4720 <printf>
  pid1 = fork();
     e65:	e8 50 37 00 00       	call   45ba <fork>
  if(pid1 == 0)
     e6a:	83 c4 10             	add    $0x10,%esp
     e6d:	85 c0                	test   %eax,%eax
     e6f:	75 02                	jne    e73 <preempt+0x23>
     e71:	eb fe                	jmp    e71 <preempt+0x21>
     e73:	89 c7                	mov    %eax,%edi
    for(;;)
      ;

  pid2 = fork();
     e75:	e8 40 37 00 00       	call   45ba <fork>
  if(pid2 == 0)
     e7a:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     e7c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     e7e:	75 02                	jne    e82 <preempt+0x32>
     e80:	eb fe                	jmp    e80 <preempt+0x30>
    for(;;)
      ;

  pipe(pfds);
     e82:	8d 45 e0             	lea    -0x20(%ebp),%eax
     e85:	83 ec 0c             	sub    $0xc,%esp
     e88:	50                   	push   %eax
     e89:	e8 44 37 00 00       	call   45d2 <pipe>
  pid3 = fork();
     e8e:	e8 27 37 00 00       	call   45ba <fork>
  if(pid3 == 0){
     e93:	83 c4 10             	add    $0x10,%esp
     e96:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     e98:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     e9a:	75 47                	jne    ee3 <preempt+0x93>
    close(pfds[0]);
     e9c:	83 ec 0c             	sub    $0xc,%esp
     e9f:	ff 75 e0             	pushl  -0x20(%ebp)
     ea2:	e8 43 37 00 00       	call   45ea <close>
    if(write(pfds[1], "x", 1) != 1)
     ea7:	83 c4 0c             	add    $0xc,%esp
     eaa:	6a 01                	push   $0x1
     eac:	68 99 53 00 00       	push   $0x5399
     eb1:	ff 75 e4             	pushl  -0x1c(%ebp)
     eb4:	e8 29 37 00 00       	call   45e2 <write>
     eb9:	83 c4 10             	add    $0x10,%esp
     ebc:	83 f8 01             	cmp    $0x1,%eax
     ebf:	74 12                	je     ed3 <preempt+0x83>
      printf(1, "preempt write error");
     ec1:	83 ec 08             	sub    $0x8,%esp
     ec4:	68 de 4d 00 00       	push   $0x4dde
     ec9:	6a 01                	push   $0x1
     ecb:	e8 50 38 00 00       	call   4720 <printf>
     ed0:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     ed3:	83 ec 0c             	sub    $0xc,%esp
     ed6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ed9:	e8 0c 37 00 00       	call   45ea <close>
     ede:	83 c4 10             	add    $0x10,%esp
     ee1:	eb fe                	jmp    ee1 <preempt+0x91>
    for(;;)
      ;
  }

  close(pfds[1]);
     ee3:	83 ec 0c             	sub    $0xc,%esp
     ee6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ee9:	e8 fc 36 00 00       	call   45ea <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     eee:	83 c4 0c             	add    $0xc,%esp
     ef1:	68 00 20 00 00       	push   $0x2000
     ef6:	68 e0 92 00 00       	push   $0x92e0
     efb:	ff 75 e0             	pushl  -0x20(%ebp)
     efe:	e8 d7 36 00 00       	call   45da <read>
     f03:	83 c4 10             	add    $0x10,%esp
     f06:	83 f8 01             	cmp    $0x1,%eax
     f09:	74 1a                	je     f25 <preempt+0xd5>
    printf(1, "preempt read error");
     f0b:	83 ec 08             	sub    $0x8,%esp
     f0e:	68 f2 4d 00 00       	push   $0x4df2
     f13:	6a 01                	push   $0x1
     f15:	e8 06 38 00 00       	call   4720 <printf>
    return;
     f1a:	83 c4 10             	add    $0x10,%esp
  printf(1, "wait... ");
  wait(0);
  wait(0);
  wait(0);
  printf(1, "preempt ok\n");
}
     f1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f20:	5b                   	pop    %ebx
     f21:	5e                   	pop    %esi
     f22:	5f                   	pop    %edi
     f23:	5d                   	pop    %ebp
     f24:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     f25:	83 ec 0c             	sub    $0xc,%esp
     f28:	ff 75 e0             	pushl  -0x20(%ebp)
     f2b:	e8 ba 36 00 00       	call   45ea <close>
  printf(1, "kill... ");
     f30:	58                   	pop    %eax
     f31:	5a                   	pop    %edx
     f32:	68 05 4e 00 00       	push   $0x4e05
     f37:	6a 01                	push   $0x1
     f39:	e8 e2 37 00 00       	call   4720 <printf>
  kill(pid1);
     f3e:	89 3c 24             	mov    %edi,(%esp)
     f41:	e8 ac 36 00 00       	call   45f2 <kill>
  kill(pid2);
     f46:	89 34 24             	mov    %esi,(%esp)
     f49:	e8 a4 36 00 00       	call   45f2 <kill>
  kill(pid3);
     f4e:	89 1c 24             	mov    %ebx,(%esp)
     f51:	e8 9c 36 00 00       	call   45f2 <kill>
  printf(1, "wait... ");
     f56:	59                   	pop    %ecx
     f57:	5b                   	pop    %ebx
     f58:	68 0e 4e 00 00       	push   $0x4e0e
     f5d:	6a 01                	push   $0x1
     f5f:	e8 bc 37 00 00       	call   4720 <printf>
  wait(0);
     f64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f6b:	e8 5a 36 00 00       	call   45ca <wait>
  wait(0);
     f70:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f77:	e8 4e 36 00 00       	call   45ca <wait>
  wait(0);
     f7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f83:	e8 42 36 00 00       	call   45ca <wait>
  printf(1, "preempt ok\n");
     f88:	5e                   	pop    %esi
     f89:	5f                   	pop    %edi
     f8a:	68 17 4e 00 00       	push   $0x4e17
     f8f:	6a 01                	push   $0x1
     f91:	e8 8a 37 00 00       	call   4720 <printf>
     f96:	83 c4 10             	add    $0x10,%esp
     f99:	eb 82                	jmp    f1d <preempt+0xcd>
     f9b:	90                   	nop
     f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000fa0 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	56                   	push   %esi
     fa4:	53                   	push   %ebx
     fa5:	bb 64 00 00 00       	mov    $0x64,%ebx
     faa:	eb 1a                	jmp    fc6 <exitwait+0x26>
     fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(0) != pid){
     fb0:	83 ec 0c             	sub    $0xc,%esp
     fb3:	6a 00                	push   $0x0
     fb5:	e8 10 36 00 00       	call   45ca <wait>
     fba:	83 c4 10             	add    $0x10,%esp
     fbd:	39 c6                	cmp    %eax,%esi
     fbf:	75 5f                	jne    1020 <exitwait+0x80>
void
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
     fc1:	83 eb 01             	sub    $0x1,%ebx
     fc4:	74 1f                	je     fe5 <exitwait+0x45>
    pid = fork();
     fc6:	e8 ef 35 00 00       	call   45ba <fork>
    if(pid < 0){
     fcb:	85 c0                	test   %eax,%eax
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
    pid = fork();
     fcd:	89 c6                	mov    %eax,%esi
    if(pid < 0){
     fcf:	78 2f                	js     1000 <exitwait+0x60>
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     fd1:	75 dd                	jne    fb0 <exitwait+0x10>
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit(0);
     fd3:	83 ec 0c             	sub    $0xc,%esp
     fd6:	6a 00                	push   $0x0
     fd8:	e8 e5 35 00 00       	call   45c2 <exit>
     fdd:	83 c4 10             	add    $0x10,%esp
void
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
     fe0:	83 eb 01             	sub    $0x1,%ebx
     fe3:	75 e1                	jne    fc6 <exitwait+0x26>
      }
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
     fe5:	83 ec 08             	sub    $0x8,%esp
     fe8:	68 33 4e 00 00       	push   $0x4e33
     fed:	6a 01                	push   $0x1
     fef:	e8 2c 37 00 00       	call   4720 <printf>
     ff4:	83 c4 10             	add    $0x10,%esp
}
     ff7:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ffa:	5b                   	pop    %ebx
     ffb:	5e                   	pop    %esi
     ffc:	5d                   	pop    %ebp
     ffd:	c3                   	ret    
     ffe:	66 90                	xchg   %ax,%ax
  int i, pid;

  for(i = 0; i < 100; i++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1000:	83 ec 08             	sub    $0x8,%esp
    1003:	68 81 59 00 00       	push   $0x5981
    1008:	6a 01                	push   $0x1
    100a:	e8 11 37 00 00       	call   4720 <printf>
      return;
    100f:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
    1012:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1015:	5b                   	pop    %ebx
    1016:	5e                   	pop    %esi
    1017:	5d                   	pop    %ebp
    1018:	c3                   	ret    
    1019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
    1020:	83 ec 08             	sub    $0x8,%esp
    1023:	68 23 4e 00 00       	push   $0x4e23
    1028:	6a 01                	push   $0x1
    102a:	e8 f1 36 00 00       	call   4720 <printf>
        return;
    102f:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
    1032:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1035:	5b                   	pop    %ebx
    1036:	5e                   	pop    %esi
    1037:	5d                   	pop    %ebp
    1038:	c3                   	ret    
    1039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001040 <mem>:

void
mem(void)
{
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	57                   	push   %edi
    1044:	56                   	push   %esi
    1045:	53                   	push   %ebx
    1046:	31 db                	xor    %ebx,%ebx
    1048:	83 ec 14             	sub    $0x14,%esp
  void *m1, *m2;
  int pid, ppid;

  printf(1, "mem test\n");
    104b:	68 40 4e 00 00       	push   $0x4e40
    1050:	6a 01                	push   $0x1
    1052:	e8 c9 36 00 00       	call   4720 <printf>
  ppid = getpid();
    1057:	e8 e6 35 00 00       	call   4642 <getpid>
    105c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    105e:	e8 57 35 00 00       	call   45ba <fork>
    1063:	83 c4 10             	add    $0x10,%esp
    1066:	85 c0                	test   %eax,%eax
    1068:	74 0a                	je     1074 <mem+0x34>
    106a:	e9 81 00 00 00       	jmp    10f0 <mem+0xb0>
    106f:	90                   	nop
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
    1070:	89 18                	mov    %ebx,(%eax)
    1072:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
    1074:	83 ec 0c             	sub    $0xc,%esp
    1077:	68 11 27 00 00       	push   $0x2711
    107c:	e8 cf 38 00 00       	call   4950 <malloc>
    1081:	83 c4 10             	add    $0x10,%esp
    1084:	85 c0                	test   %eax,%eax
    1086:	75 e8                	jne    1070 <mem+0x30>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
    1088:	85 db                	test   %ebx,%ebx
    108a:	74 18                	je     10a4 <mem+0x64>
    108c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    1090:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    1092:	83 ec 0c             	sub    $0xc,%esp
    1095:	53                   	push   %ebx
    1096:	89 fb                	mov    %edi,%ebx
    1098:	e8 23 38 00 00       	call   48c0 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
    109d:	83 c4 10             	add    $0x10,%esp
    10a0:	85 db                	test   %ebx,%ebx
    10a2:	75 ec                	jne    1090 <mem+0x50>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    10a4:	83 ec 0c             	sub    $0xc,%esp
    10a7:	68 00 50 00 00       	push   $0x5000
    10ac:	e8 9f 38 00 00       	call   4950 <malloc>
    if(m1 == 0){
    10b1:	83 c4 10             	add    $0x10,%esp
    10b4:	85 c0                	test   %eax,%eax
    while(m1){
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    10b6:	89 c3                	mov    %eax,%ebx
    if(m1 == 0){
    10b8:	74 4b                	je     1105 <mem+0xc5>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit(0);
    }
    free(m1);
    10ba:	83 ec 0c             	sub    $0xc,%esp
    10bd:	53                   	push   %ebx
    10be:	e8 fd 37 00 00       	call   48c0 <free>
    printf(1, "mem ok\n");
    10c3:	58                   	pop    %eax
    10c4:	5a                   	pop    %edx
    10c5:	68 64 4e 00 00       	push   $0x4e64
    10ca:	6a 01                	push   $0x1
    10cc:	e8 4f 36 00 00       	call   4720 <printf>
    exit(0);
    10d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10d8:	e8 e5 34 00 00       	call   45c2 <exit>
    10dd:	83 c4 10             	add    $0x10,%esp
  } else {
    wait(0);
  }
}
    10e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10e3:	5b                   	pop    %ebx
    10e4:	5e                   	pop    %esi
    10e5:	5f                   	pop    %edi
    10e6:	5d                   	pop    %ebp
    10e7:	c3                   	ret    
    10e8:	90                   	nop
    10e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    free(m1);
    printf(1, "mem ok\n");
    exit(0);
  } else {
    wait(0);
    10f0:	83 ec 0c             	sub    $0xc,%esp
    10f3:	6a 00                	push   $0x0
    10f5:	e8 d0 34 00 00       	call   45ca <wait>
    10fa:	83 c4 10             	add    $0x10,%esp
  }
}
    10fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1100:	5b                   	pop    %ebx
    1101:	5e                   	pop    %esi
    1102:	5f                   	pop    %edi
    1103:	5d                   	pop    %ebp
    1104:	c3                   	ret    
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
    1105:	83 ec 08             	sub    $0x8,%esp
    1108:	68 4a 4e 00 00       	push   $0x4e4a
    110d:	6a 01                	push   $0x1
    110f:	e8 0c 36 00 00       	call   4720 <printf>
      kill(ppid);
    1114:	89 34 24             	mov    %esi,(%esp)
    1117:	e8 d6 34 00 00       	call   45f2 <kill>
      exit(0);
    111c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1123:	e8 9a 34 00 00       	call   45c2 <exit>
    1128:	83 c4 10             	add    $0x10,%esp
    112b:	eb 8d                	jmp    10ba <mem+0x7a>
    112d:	8d 76 00             	lea    0x0(%esi),%esi

00001130 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
    1130:	55                   	push   %ebp
    1131:	89 e5                	mov    %esp,%ebp
    1133:	57                   	push   %edi
    1134:	56                   	push   %esi
    1135:	53                   	push   %ebx
    1136:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];

  printf(1, "sharedfd test\n");
    1139:	68 6c 4e 00 00       	push   $0x4e6c
    113e:	6a 01                	push   $0x1
    1140:	e8 db 35 00 00       	call   4720 <printf>

  unlink("sharedfd");
    1145:	c7 04 24 7b 4e 00 00 	movl   $0x4e7b,(%esp)
    114c:	e8 c1 34 00 00       	call   4612 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1151:	5b                   	pop    %ebx
    1152:	5e                   	pop    %esi
    1153:	68 02 02 00 00       	push   $0x202
    1158:	68 7b 4e 00 00       	push   $0x4e7b
    115d:	e8 a0 34 00 00       	call   4602 <open>
  if(fd < 0){
    1162:	83 c4 10             	add    $0x10,%esp
    1165:	85 c0                	test   %eax,%eax
    1167:	0f 88 5d 01 00 00    	js     12ca <sharedfd+0x19a>
    116d:	89 c7                	mov    %eax,%edi
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
  memset(buf, pid==0?'c':'p', sizeof(buf));
    116f:	8d 75 de             	lea    -0x22(%ebp),%esi
    1172:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    1177:	e8 3e 34 00 00       	call   45ba <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    117c:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    117f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1182:	19 c0                	sbb    %eax,%eax
    1184:	83 ec 04             	sub    $0x4,%esp
    1187:	83 e0 f3             	and    $0xfffffff3,%eax
    118a:	6a 0a                	push   $0xa
    118c:	83 c0 70             	add    $0x70,%eax
    118f:	50                   	push   %eax
    1190:	56                   	push   %esi
    1191:	e8 9a 32 00 00       	call   4430 <memset>
    1196:	83 c4 10             	add    $0x10,%esp
    1199:	eb 0a                	jmp    11a5 <sharedfd+0x75>
    119b:	90                   	nop
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
    11a0:	83 eb 01             	sub    $0x1,%ebx
    11a3:	74 26                	je     11cb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    11a5:	83 ec 04             	sub    $0x4,%esp
    11a8:	6a 0a                	push   $0xa
    11aa:	56                   	push   %esi
    11ab:	57                   	push   %edi
    11ac:	e8 31 34 00 00       	call   45e2 <write>
    11b1:	83 c4 10             	add    $0x10,%esp
    11b4:	83 f8 0a             	cmp    $0xa,%eax
    11b7:	74 e7                	je     11a0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    11b9:	83 ec 08             	sub    $0x8,%esp
    11bc:	68 6c 5b 00 00       	push   $0x5b6c
    11c1:	6a 01                	push   $0x1
    11c3:	e8 58 35 00 00       	call   4720 <printf>
      break;
    11c8:	83 c4 10             	add    $0x10,%esp
    }
  }
  if(pid == 0)
    11cb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    11ce:	85 c9                	test   %ecx,%ecx
    11d0:	74 7d                	je     124f <sharedfd+0x11f>
    exit(0);
  else
    wait(0);
    11d2:	83 ec 0c             	sub    $0xc,%esp
    11d5:	6a 00                	push   $0x0
    11d7:	e8 ee 33 00 00       	call   45ca <wait>
    11dc:	83 c4 10             	add    $0x10,%esp
  close(fd);
    11df:	83 ec 0c             	sub    $0xc,%esp
    11e2:	31 db                	xor    %ebx,%ebx
    11e4:	57                   	push   %edi
    11e5:	8d 7d e8             	lea    -0x18(%ebp),%edi
    11e8:	e8 fd 33 00 00       	call   45ea <close>
  fd = open("sharedfd", 0);
    11ed:	58                   	pop    %eax
    11ee:	5a                   	pop    %edx
    11ef:	6a 00                	push   $0x0
    11f1:	68 7b 4e 00 00       	push   $0x4e7b
    11f6:	e8 07 34 00 00       	call   4602 <open>
  if(fd < 0){
    11fb:	83 c4 10             	add    $0x10,%esp
    11fe:	31 d2                	xor    %edx,%edx
    1200:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit(0);
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
    1202:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1205:	0f 88 d9 00 00 00    	js     12e4 <sharedfd+0x1b4>
    120b:	90                   	nop
    120c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1210:	83 ec 04             	sub    $0x4,%esp
    1213:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1216:	6a 0a                	push   $0xa
    1218:	56                   	push   %esi
    1219:	ff 75 d0             	pushl  -0x30(%ebp)
    121c:	e8 b9 33 00 00       	call   45da <read>
    1221:	83 c4 10             	add    $0x10,%esp
    1224:	85 c0                	test   %eax,%eax
    1226:	7e 36                	jle    125e <sharedfd+0x12e>
    1228:	89 f0                	mov    %esi,%eax
    122a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    122d:	eb 13                	jmp    1242 <sharedfd+0x112>
    122f:	90                   	nop
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
    1230:	80 f9 70             	cmp    $0x70,%cl
    1233:	0f 94 c1             	sete   %cl
    1236:	0f b6 c9             	movzbl %cl,%ecx
    1239:	01 cb                	add    %ecx,%ebx
    123b:	83 c0 01             	add    $0x1,%eax
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
    123e:	39 c7                	cmp    %eax,%edi
    1240:	74 ce                	je     1210 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1242:	0f b6 08             	movzbl (%eax),%ecx
    1245:	80 f9 63             	cmp    $0x63,%cl
    1248:	75 e6                	jne    1230 <sharedfd+0x100>
        nc++;
    124a:	83 c2 01             	add    $0x1,%edx
    124d:	eb ec                	jmp    123b <sharedfd+0x10b>
      printf(1, "fstests: write sharedfd failed\n");
      break;
    }
  }
  if(pid == 0)
    exit(0);
    124f:	83 ec 0c             	sub    $0xc,%esp
    1252:	6a 00                	push   $0x0
    1254:	e8 69 33 00 00       	call   45c2 <exit>
    1259:	83 c4 10             	add    $0x10,%esp
    125c:	eb 81                	jmp    11df <sharedfd+0xaf>
        nc++;
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
    125e:	83 ec 0c             	sub    $0xc,%esp
    1261:	ff 75 d0             	pushl  -0x30(%ebp)
    1264:	e8 81 33 00 00       	call   45ea <close>
  unlink("sharedfd");
    1269:	c7 04 24 7b 4e 00 00 	movl   $0x4e7b,(%esp)
    1270:	e8 9d 33 00 00       	call   4612 <unlink>
  if(nc == 10000 && np == 10000){
    1275:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1278:	83 c4 10             	add    $0x10,%esp
    127b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1281:	75 22                	jne    12a5 <sharedfd+0x175>
    1283:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1289:	75 1a                	jne    12a5 <sharedfd+0x175>
    printf(1, "sharedfd ok\n");
    128b:	83 ec 08             	sub    $0x8,%esp
    128e:	68 84 4e 00 00       	push   $0x4e84
    1293:	6a 01                	push   $0x1
    1295:	e8 86 34 00 00       	call   4720 <printf>
    129a:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    129d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12a0:	5b                   	pop    %ebx
    12a1:	5e                   	pop    %esi
    12a2:	5f                   	pop    %edi
    12a3:	5d                   	pop    %ebp
    12a4:	c3                   	ret    
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    12a5:	53                   	push   %ebx
    12a6:	52                   	push   %edx
    12a7:	68 91 4e 00 00       	push   $0x4e91
    12ac:	6a 01                	push   $0x1
    12ae:	e8 6d 34 00 00       	call   4720 <printf>
    exit(0);
    12b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12ba:	e8 03 33 00 00       	call   45c2 <exit>
    12bf:	83 c4 10             	add    $0x10,%esp
  }
}
    12c2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12c5:	5b                   	pop    %ebx
    12c6:	5e                   	pop    %esi
    12c7:	5f                   	pop    %edi
    12c8:	5d                   	pop    %ebp
    12c9:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    12ca:	83 ec 08             	sub    $0x8,%esp
    12cd:	68 40 5b 00 00       	push   $0x5b40
    12d2:	6a 01                	push   $0x1
    12d4:	e8 47 34 00 00       	call   4720 <printf>
    return;
    12d9:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    12dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12df:	5b                   	pop    %ebx
    12e0:	5e                   	pop    %esi
    12e1:	5f                   	pop    %edi
    12e2:	5d                   	pop    %ebp
    12e3:	c3                   	ret    
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
    12e4:	83 ec 08             	sub    $0x8,%esp
    12e7:	68 8c 5b 00 00       	push   $0x5b8c
    12ec:	6a 01                	push   $0x1
    12ee:	e8 2d 34 00 00       	call   4720 <printf>
    return;
    12f3:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    12f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12f9:	5b                   	pop    %ebx
    12fa:	5e                   	pop    %esi
    12fb:	5f                   	pop    %edi
    12fc:	5d                   	pop    %ebp
    12fd:	c3                   	ret    
    12fe:	66 90                	xchg   %ax,%ax

00001300 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1300:	55                   	push   %ebp
    1301:	89 e5                	mov    %esp,%ebp
    1303:	57                   	push   %edi
    1304:	56                   	push   %esi
    1305:	53                   	push   %ebx
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");
    1306:	be 30 00 00 00       	mov    $0x30,%esi
    130b:	bb a6 4e 00 00       	mov    $0x4ea6,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1310:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1313:	c7 45 d8 a6 4e 00 00 	movl   $0x4ea6,-0x28(%ebp)
    131a:	c7 45 dc ef 4f 00 00 	movl   $0x4fef,-0x24(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    1321:	68 ac 4e 00 00       	push   $0x4eac
    1326:	6a 01                	push   $0x1
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1328:	c7 45 e0 f3 4f 00 00 	movl   $0x4ff3,-0x20(%ebp)
    132f:	c7 45 e4 a9 4e 00 00 	movl   $0x4ea9,-0x1c(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    1336:	e8 e5 33 00 00       	call   4720 <printf>
    133b:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    133e:	83 ec 0c             	sub    $0xc,%esp
    1341:	53                   	push   %ebx
    1342:	e8 cb 32 00 00       	call   4612 <unlink>

    pid = fork();
    1347:	e8 6e 32 00 00       	call   45ba <fork>
    if(pid < 0){
    134c:	83 c4 10             	add    $0x10,%esp
    134f:	85 c0                	test   %eax,%eax
    1351:	0f 88 d0 01 00 00    	js     1527 <fourfiles+0x227>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    1357:	74 15                	je     136e <fourfiles+0x6e>
    1359:	83 c6 01             	add    $0x1,%esi
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    135c:	83 fe 34             	cmp    $0x34,%esi
    135f:	0f 84 99 00 00 00    	je     13fe <fourfiles+0xfe>
    1365:	8b 9c b5 18 ff ff ff 	mov    -0xe8(%ebp,%esi,4),%ebx
    136c:	eb d0                	jmp    133e <fourfiles+0x3e>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    136e:	83 ec 08             	sub    $0x8,%esp
    1371:	68 02 02 00 00       	push   $0x202
    1376:	53                   	push   %ebx
    1377:	e8 86 32 00 00       	call   4602 <open>
      if(fd < 0){
    137c:	83 c4 10             	add    $0x10,%esp
    137f:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    1381:	89 c7                	mov    %eax,%edi
      if(fd < 0){
    1383:	0f 88 c1 01 00 00    	js     154a <fourfiles+0x24a>
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
    1389:	83 ec 04             	sub    $0x4,%esp
    138c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1391:	68 00 02 00 00       	push   $0x200
    1396:	56                   	push   %esi
    1397:	68 e0 92 00 00       	push   $0x92e0
    139c:	e8 8f 30 00 00       	call   4430 <memset>
    13a1:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
    13a4:	83 ec 04             	sub    $0x4,%esp
    13a7:	68 f4 01 00 00       	push   $0x1f4
    13ac:	68 e0 92 00 00       	push   $0x92e0
    13b1:	57                   	push   %edi
    13b2:	e8 2b 32 00 00       	call   45e2 <write>
    13b7:	83 c4 10             	add    $0x10,%esp
    13ba:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    13bf:	74 1f                	je     13e0 <fourfiles+0xe0>
          printf(1, "write failed %d\n", n);
    13c1:	83 ec 04             	sub    $0x4,%esp
    13c4:	50                   	push   %eax
    13c5:	68 bc 4e 00 00       	push   $0x4ebc
    13ca:	6a 01                	push   $0x1
    13cc:	e8 4f 33 00 00       	call   4720 <printf>
          exit(0);
    13d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13d8:	e8 e5 31 00 00       	call   45c2 <exit>
    13dd:	83 c4 10             	add    $0x10,%esp
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
    13e0:	83 eb 01             	sub    $0x1,%ebx
    13e3:	75 bf                	jne    13a4 <fourfiles+0xa4>
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
          exit(0);
        }
      }
      exit(0);
    13e5:	83 ec 0c             	sub    $0xc,%esp
    13e8:	83 c6 01             	add    $0x1,%esi
    13eb:	6a 00                	push   $0x0
    13ed:	e8 d0 31 00 00       	call   45c2 <exit>
    13f2:	83 c4 10             	add    $0x10,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    13f5:	83 fe 34             	cmp    $0x34,%esi
    13f8:	0f 85 67 ff ff ff    	jne    1365 <fourfiles+0x65>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    13fe:	83 ec 0c             	sub    $0xc,%esp
    1401:	be 30 00 00 00       	mov    $0x30,%esi
    1406:	6a 00                	push   $0x0
    1408:	e8 bd 31 00 00       	call   45ca <wait>
    140d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1414:	e8 b1 31 00 00       	call   45ca <wait>
    1419:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1420:	e8 a5 31 00 00       	call   45ca <wait>
    1425:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    142c:	e8 99 31 00 00       	call   45ca <wait>
    1431:	83 c4 10             	add    $0x10,%esp
    1434:	c7 45 cc a6 4e 00 00 	movl   $0x4ea6,-0x34(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    143b:	83 ec 08             	sub    $0x8,%esp
    143e:	6a 00                	push   $0x0
    1440:	ff 75 cc             	pushl  -0x34(%ebp)
    1443:	e8 ba 31 00 00       	call   4602 <open>
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1448:	83 c4 10             	add    $0x10,%esp
    wait(0);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    144b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    total = 0;
    144e:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    1455:	8d 76 00             	lea    0x0(%esi),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1458:	83 ec 04             	sub    $0x4,%esp
    145b:	68 00 20 00 00       	push   $0x2000
    1460:	68 e0 92 00 00       	push   $0x92e0
    1465:	ff 75 d4             	pushl  -0x2c(%ebp)
    1468:	e8 6d 31 00 00       	call   45da <read>
    146d:	83 c4 10             	add    $0x10,%esp
    1470:	85 c0                	test   %eax,%eax
    1472:	89 c3                	mov    %eax,%ebx
    1474:	7e 3f                	jle    14b5 <fourfiles+0x1b5>
    1476:	31 ff                	xor    %edi,%edi
    1478:	90                   	nop
    1479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    1480:	0f be 87 e0 92 00 00 	movsbl 0x92e0(%edi),%eax
    1487:	39 f0                	cmp    %esi,%eax
    1489:	74 1e                	je     14a9 <fourfiles+0x1a9>
          printf(1, "wrong char\n");
    148b:	83 ec 08             	sub    $0x8,%esp
    148e:	68 cd 4e 00 00       	push   $0x4ecd
    1493:	6a 01                	push   $0x1
    1495:	e8 86 32 00 00       	call   4720 <printf>
          exit(0);
    149a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14a1:	e8 1c 31 00 00       	call   45c2 <exit>
    14a6:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    14a9:	83 c7 01             	add    $0x1,%edi
    14ac:	39 fb                	cmp    %edi,%ebx
    14ae:	75 d0                	jne    1480 <fourfiles+0x180>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit(0);
        }
      }
      total += n;
    14b0:	01 5d d0             	add    %ebx,-0x30(%ebp)
    14b3:	eb a3                	jmp    1458 <fourfiles+0x158>
    }
    close(fd);
    14b5:	83 ec 0c             	sub    $0xc,%esp
    14b8:	ff 75 d4             	pushl  -0x2c(%ebp)
    14bb:	e8 2a 31 00 00       	call   45ea <close>
    if(total != 12*500){
    14c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    14c3:	83 c4 10             	add    $0x10,%esp
    14c6:	3d 70 17 00 00       	cmp    $0x1770,%eax
    14cb:	74 1f                	je     14ec <fourfiles+0x1ec>
      printf(1, "wrong length %d\n", total);
    14cd:	83 ec 04             	sub    $0x4,%esp
    14d0:	50                   	push   %eax
    14d1:	68 d9 4e 00 00       	push   $0x4ed9
    14d6:	6a 01                	push   $0x1
    14d8:	e8 43 32 00 00       	call   4720 <printf>
      exit(0);
    14dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14e4:	e8 d9 30 00 00       	call   45c2 <exit>
    14e9:	83 c4 10             	add    $0x10,%esp
    }
    unlink(fname);
    14ec:	83 ec 0c             	sub    $0xc,%esp
    14ef:	ff 75 cc             	pushl  -0x34(%ebp)
    14f2:	83 c6 01             	add    $0x1,%esi
    14f5:	e8 18 31 00 00       	call   4612 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  for(i = 0; i < 2; i++){
    14fa:	83 c4 10             	add    $0x10,%esp
    14fd:	83 fe 32             	cmp    $0x32,%esi
    1500:	74 0b                	je     150d <fourfiles+0x20d>
    1502:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1505:	89 45 cc             	mov    %eax,-0x34(%ebp)
    1508:	e9 2e ff ff ff       	jmp    143b <fourfiles+0x13b>
      exit(0);
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    150d:	83 ec 08             	sub    $0x8,%esp
    1510:	68 ea 4e 00 00       	push   $0x4eea
    1515:	6a 01                	push   $0x1
    1517:	e8 04 32 00 00       	call   4720 <printf>
}
    151c:	83 c4 10             	add    $0x10,%esp
    151f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1522:	5b                   	pop    %ebx
    1523:	5e                   	pop    %esi
    1524:	5f                   	pop    %edi
    1525:	5d                   	pop    %ebp
    1526:	c3                   	ret    
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1527:	83 ec 08             	sub    $0x8,%esp
    152a:	68 81 59 00 00       	push   $0x5981
    152f:	6a 01                	push   $0x1
    1531:	e8 ea 31 00 00       	call   4720 <printf>
      exit(0);
    1536:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    153d:	e8 80 30 00 00       	call   45c2 <exit>
    1542:	83 c4 10             	add    $0x10,%esp
    1545:	e9 0f fe ff ff       	jmp    1359 <fourfiles+0x59>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    154a:	83 ec 08             	sub    $0x8,%esp
    154d:	68 47 51 00 00       	push   $0x5147
    1552:	6a 01                	push   $0x1
    1554:	e8 c7 31 00 00       	call   4720 <printf>
        exit(0);
    1559:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1560:	e8 5d 30 00 00       	call   45c2 <exit>
    1565:	83 c4 10             	add    $0x10,%esp
    1568:	e9 1c fe ff ff       	jmp    1389 <fourfiles+0x89>
    156d:	8d 76 00             	lea    0x0(%esi),%esi

00001570 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1570:	55                   	push   %ebp
    1571:	89 e5                	mov    %esp,%ebp
    1573:	57                   	push   %edi
    1574:	56                   	push   %esi
    1575:	53                   	push   %ebx
    1576:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1579:	83 ec 44             	sub    $0x44,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");
    157c:	68 f8 4e 00 00       	push   $0x4ef8
    1581:	6a 01                	push   $0x1
    1583:	e8 98 31 00 00       	call   4720 <printf>
    1588:	83 c4 10             	add    $0x10,%esp
    158b:	c6 45 c7 70          	movb   $0x70,-0x39(%ebp)

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    158f:	e8 26 30 00 00       	call   45ba <fork>
    if(pid < 0){
    1594:	85 c0                	test   %eax,%eax
    1596:	0f 88 18 02 00 00    	js     17b4 <createdelete+0x244>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    159c:	0f 85 ab 00 00 00    	jne    164d <createdelete+0xdd>
      name[0] = 'p' + pi;
    15a2:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[2] = '\0';
    15a6:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    15aa:	be 01 00 00 00       	mov    $0x1,%esi
    15af:	31 db                	xor    %ebx,%ebx
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    15b1:	88 45 c8             	mov    %al,-0x38(%ebp)
    15b4:	eb 15                	jmp    15cb <createdelete+0x5b>
    15b6:	8d 76 00             	lea    0x0(%esi),%esi
    15b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      name[2] = '\0';
      for(i = 0; i < N; i++){
    15c0:	83 fe 14             	cmp    $0x14,%esi
    15c3:	74 7b                	je     1640 <createdelete+0xd0>
    15c5:	83 c3 01             	add    $0x1,%ebx
    15c8:	83 c6 01             	add    $0x1,%esi
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    15cb:	83 ec 08             	sub    $0x8,%esp

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    15ce:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    15d1:	68 02 02 00 00       	push   $0x202
    15d6:	57                   	push   %edi

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    15d7:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    15da:	e8 23 30 00 00       	call   4602 <open>
        if(fd < 0){
    15df:	83 c4 10             	add    $0x10,%esp
    15e2:	85 c0                	test   %eax,%eax
    15e4:	0f 88 76 01 00 00    	js     1760 <createdelete+0x1f0>
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
    15ea:	83 ec 0c             	sub    $0xc,%esp
    15ed:	50                   	push   %eax
    15ee:	e8 f7 2f 00 00       	call   45ea <close>
        if(i > 0 && (i % 2 ) == 0){
    15f3:	83 c4 10             	add    $0x10,%esp
    15f6:	85 db                	test   %ebx,%ebx
    15f8:	74 cb                	je     15c5 <createdelete+0x55>
    15fa:	f6 c3 01             	test   $0x1,%bl
    15fd:	75 c1                	jne    15c0 <createdelete+0x50>
          name[1] = '0' + (i / 2);
          if(unlink(name) < 0){
    15ff:	83 ec 0c             	sub    $0xc,%esp
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1602:	89 d8                	mov    %ebx,%eax
    1604:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    1606:	57                   	push   %edi
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1607:	83 c0 30             	add    $0x30,%eax
    160a:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    160d:	e8 00 30 00 00       	call   4612 <unlink>
    1612:	83 c4 10             	add    $0x10,%esp
    1615:	85 c0                	test   %eax,%eax
    1617:	79 a7                	jns    15c0 <createdelete+0x50>
            printf(1, "unlink failed\n");
    1619:	83 ec 08             	sub    $0x8,%esp
    161c:	68 f9 4a 00 00       	push   $0x4af9
    1621:	6a 01                	push   $0x1
    1623:	e8 f8 30 00 00       	call   4720 <printf>
            exit(0);
    1628:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    162f:	e8 8e 2f 00 00       	call   45c2 <exit>
    1634:	83 c4 10             	add    $0x10,%esp
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
    1637:	83 fe 14             	cmp    $0x14,%esi
    163a:	75 89                	jne    15c5 <createdelete+0x55>
    163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            printf(1, "unlink failed\n");
            exit(0);
          }
        }
      }
      exit(0);
    1640:	83 ec 0c             	sub    $0xc,%esp
    1643:	6a 00                	push   $0x0
    1645:	e8 78 2f 00 00       	call   45c2 <exit>
    164a:	83 c4 10             	add    $0x10,%esp
    164d:	80 45 c7 01          	addb   $0x1,-0x39(%ebp)
    1651:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1655:	3c 74                	cmp    $0x74,%al
    1657:	0f 85 32 ff ff ff    	jne    158f <createdelete+0x1f>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    165d:	83 ec 0c             	sub    $0xc,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    1660:	31 f6                	xor    %esi,%esi
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    1662:	6a 00                	push   $0x0
    1664:	e8 61 2f 00 00       	call   45ca <wait>
    1669:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1670:	e8 55 2f 00 00       	call   45ca <wait>
    1675:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    167c:	e8 49 2f 00 00       	call   45ca <wait>
    1681:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1688:	e8 3d 2f 00 00       	call   45ca <wait>
  }

  name[0] = name[1] = name[2] = 0;
    168d:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1691:	83 c4 10             	add    $0x10,%esp
    1694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1698:	8d 46 30             	lea    0x30(%esi),%eax
    169b:	85 f6                	test   %esi,%esi
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    169d:	bb 70 00 00 00       	mov    $0x70,%ebx
    16a2:	0f 94 c2             	sete   %dl
    16a5:	83 fe 09             	cmp    $0x9,%esi
    16a8:	88 45 c7             	mov    %al,-0x39(%ebp)
    16ab:	0f 9f c0             	setg   %al
    16ae:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16b0:	8d 46 ff             	lea    -0x1(%esi),%eax
    16b3:	88 55 c6             	mov    %dl,-0x3a(%ebp)
    16b6:	89 45 c0             	mov    %eax,-0x40(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    16b9:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    16bd:	83 ec 08             	sub    $0x8,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    16c0:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
      fd = open(name, 0);
    16c3:	6a 00                	push   $0x0
    16c5:	57                   	push   %edi

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    16c6:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    16c9:	e8 34 2f 00 00       	call   4602 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    16ce:	89 c1                	mov    %eax,%ecx
    16d0:	83 c4 10             	add    $0x10,%esp
    16d3:	c1 e9 1f             	shr    $0x1f,%ecx
    16d6:	84 c9                	test   %cl,%cl
    16d8:	74 0a                	je     16e4 <createdelete+0x174>
    16da:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    16de:	0f 85 ac 00 00 00    	jne    1790 <createdelete+0x220>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16e4:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    16e8:	0f 86 f9 00 00 00    	jbe    17e7 <createdelete+0x277>
        printf(1, "oops createdelete %s did exist\n", name);
        exit(0);
      }
      if(fd >= 0)
    16ee:	85 c0                	test   %eax,%eax
    16f0:	78 0c                	js     16fe <createdelete+0x18e>
        close(fd);
    16f2:	83 ec 0c             	sub    $0xc,%esp
    16f5:	50                   	push   %eax
    16f6:	e8 ef 2e 00 00       	call   45ea <close>
    16fb:	83 c4 10             	add    $0x10,%esp
    16fe:	83 c3 01             	add    $0x1,%ebx
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1701:	80 fb 74             	cmp    $0x74,%bl
    1704:	75 b3                	jne    16b9 <createdelete+0x149>
  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    1706:	83 c6 01             	add    $0x1,%esi
    1709:	83 fe 14             	cmp    $0x14,%esi
    170c:	75 8a                	jne    1698 <createdelete+0x128>
    170e:	be 70 00 00 00       	mov    $0x70,%esi
    1713:	90                   	nop
    1714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1718:	8d 46 c0             	lea    -0x40(%esi),%eax
    171b:	bb 04 00 00 00       	mov    $0x4,%ebx
    1720:	88 45 c7             	mov    %al,-0x39(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    1723:	89 f0                	mov    %esi,%eax
      name[1] = '0' + i;
      unlink(name);
    1725:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    1728:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    172b:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    172f:	57                   	push   %edi
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    1730:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    1733:	e8 da 2e 00 00       	call   4612 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1738:	83 c4 10             	add    $0x10,%esp
    173b:	83 eb 01             	sub    $0x1,%ebx
    173e:	75 e3                	jne    1723 <createdelete+0x1b3>
    1740:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    1743:	89 f0                	mov    %esi,%eax
    1745:	3c 84                	cmp    $0x84,%al
    1747:	75 cf                	jne    1718 <createdelete+0x1a8>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    1749:	83 ec 08             	sub    $0x8,%esp
    174c:	68 0b 4f 00 00       	push   $0x4f0b
    1751:	6a 01                	push   $0x1
    1753:	e8 c8 2f 00 00       	call   4720 <printf>
}
    1758:	8d 65 f4             	lea    -0xc(%ebp),%esp
    175b:	5b                   	pop    %ebx
    175c:	5e                   	pop    %esi
    175d:	5f                   	pop    %edi
    175e:	5d                   	pop    %ebp
    175f:	c3                   	ret    
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    1760:	83 ec 08             	sub    $0x8,%esp
    1763:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1766:	68 47 51 00 00       	push   $0x5147
    176b:	6a 01                	push   $0x1
    176d:	e8 ae 2f 00 00       	call   4720 <printf>
          exit(0);
    1772:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1779:	e8 44 2e 00 00       	call   45c2 <exit>
    177e:	83 c4 10             	add    $0x10,%esp
    1781:	8b 45 c0             	mov    -0x40(%ebp),%eax
    1784:	e9 61 fe ff ff       	jmp    15ea <createdelete+0x7a>
    1789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    1790:	83 ec 04             	sub    $0x4,%esp
    1793:	57                   	push   %edi
    1794:	68 b8 5b 00 00       	push   $0x5bb8
    1799:	6a 01                	push   $0x1
    179b:	e8 80 2f 00 00       	call   4720 <printf>
        exit(0);
    17a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17a7:	e8 16 2e 00 00       	call   45c2 <exit>
    17ac:	83 c4 10             	add    $0x10,%esp
    17af:	e9 4a ff ff ff       	jmp    16fe <createdelete+0x18e>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    17b4:	83 ec 08             	sub    $0x8,%esp
    17b7:	68 81 59 00 00       	push   $0x5981
    17bc:	6a 01                	push   $0x1
    17be:	e8 5d 2f 00 00       	call   4720 <printf>
      exit(0);
    17c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17ca:	e8 f3 2d 00 00       	call   45c2 <exit>
    17cf:	80 45 c7 01          	addb   $0x1,-0x39(%ebp)
    17d3:	83 c4 10             	add    $0x10,%esp
    17d6:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    17da:	3c 74                	cmp    $0x74,%al
    17dc:	0f 85 ad fd ff ff    	jne    158f <createdelete+0x1f>
    17e2:	e9 76 fe ff ff       	jmp    165d <createdelete+0xed>
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    17e7:	85 c0                	test   %eax,%eax
    17e9:	89 45 bc             	mov    %eax,-0x44(%ebp)
    17ec:	0f 88 0c ff ff ff    	js     16fe <createdelete+0x18e>
        printf(1, "oops createdelete %s did exist\n", name);
    17f2:	83 ec 04             	sub    $0x4,%esp
    17f5:	57                   	push   %edi
    17f6:	68 dc 5b 00 00       	push   $0x5bdc
    17fb:	6a 01                	push   $0x1
    17fd:	e8 1e 2f 00 00       	call   4720 <printf>
        exit(0);
    1802:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1809:	e8 b4 2d 00 00       	call   45c2 <exit>
    180e:	83 c4 10             	add    $0x10,%esp
    1811:	8b 45 bc             	mov    -0x44(%ebp),%eax
    1814:	e9 d9 fe ff ff       	jmp    16f2 <createdelete+0x182>
    1819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001820 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1820:	55                   	push   %ebp
    1821:	89 e5                	mov    %esp,%ebp
    1823:	56                   	push   %esi
    1824:	53                   	push   %ebx
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1825:	83 ec 08             	sub    $0x8,%esp
    1828:	68 1c 4f 00 00       	push   $0x4f1c
    182d:	6a 01                	push   $0x1
    182f:	e8 ec 2e 00 00       	call   4720 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1834:	5e                   	pop    %esi
    1835:	58                   	pop    %eax
    1836:	68 02 02 00 00       	push   $0x202
    183b:	68 2d 4f 00 00       	push   $0x4f2d
    1840:	e8 bd 2d 00 00       	call   4602 <open>
  if(fd < 0){
    1845:	83 c4 10             	add    $0x10,%esp
    1848:	85 c0                	test   %eax,%eax
unlinkread(void)
{
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
    184a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    184c:	0f 88 8e 01 00 00    	js     19e0 <unlinkread+0x1c0>
    printf(1, "create unlinkread failed\n");
    exit(0);
  }
  write(fd, "hello", 5);
    1852:	83 ec 04             	sub    $0x4,%esp
    1855:	6a 05                	push   $0x5
    1857:	68 52 4f 00 00       	push   $0x4f52
    185c:	53                   	push   %ebx
    185d:	e8 80 2d 00 00       	call   45e2 <write>
  close(fd);
    1862:	89 1c 24             	mov    %ebx,(%esp)
    1865:	e8 80 2d 00 00       	call   45ea <close>

  fd = open("unlinkread", O_RDWR);
    186a:	59                   	pop    %ecx
    186b:	5b                   	pop    %ebx
    186c:	6a 02                	push   $0x2
    186e:	68 2d 4f 00 00       	push   $0x4f2d
    1873:	e8 8a 2d 00 00       	call   4602 <open>
  if(fd < 0){
    1878:	83 c4 10             	add    $0x10,%esp
    187b:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    187d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    187f:	0f 88 33 01 00 00    	js     19b8 <unlinkread+0x198>
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    1885:	83 ec 0c             	sub    $0xc,%esp
    1888:	68 2d 4f 00 00       	push   $0x4f2d
    188d:	e8 80 2d 00 00       	call   4612 <unlink>
    1892:	83 c4 10             	add    $0x10,%esp
    1895:	85 c0                	test   %eax,%eax
    1897:	0f 85 f3 00 00 00    	jne    1990 <unlinkread+0x170>
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    189d:	83 ec 08             	sub    $0x8,%esp
    18a0:	68 02 02 00 00       	push   $0x202
    18a5:	68 2d 4f 00 00       	push   $0x4f2d
    18aa:	e8 53 2d 00 00       	call   4602 <open>
  write(fd1, "yyy", 3);
    18af:	83 c4 0c             	add    $0xc,%esp
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    18b2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    18b4:	6a 03                	push   $0x3
    18b6:	68 8a 4f 00 00       	push   $0x4f8a
    18bb:	50                   	push   %eax
    18bc:	e8 21 2d 00 00       	call   45e2 <write>
  close(fd1);
    18c1:	89 34 24             	mov    %esi,(%esp)
    18c4:	e8 21 2d 00 00       	call   45ea <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    18c9:	83 c4 0c             	add    $0xc,%esp
    18cc:	68 00 20 00 00       	push   $0x2000
    18d1:	68 e0 92 00 00       	push   $0x92e0
    18d6:	53                   	push   %ebx
    18d7:	e8 fe 2c 00 00       	call   45da <read>
    18dc:	83 c4 10             	add    $0x10,%esp
    18df:	83 f8 05             	cmp    $0x5,%eax
    18e2:	74 1e                	je     1902 <unlinkread+0xe2>
    printf(1, "unlinkread read failed");
    18e4:	83 ec 08             	sub    $0x8,%esp
    18e7:	68 8e 4f 00 00       	push   $0x4f8e
    18ec:	6a 01                	push   $0x1
    18ee:	e8 2d 2e 00 00       	call   4720 <printf>
    exit(0);
    18f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18fa:	e8 c3 2c 00 00       	call   45c2 <exit>
    18ff:	83 c4 10             	add    $0x10,%esp
  }
  if(buf[0] != 'h'){
    1902:	80 3d e0 92 00 00 68 	cmpb   $0x68,0x92e0
    1909:	74 1e                	je     1929 <unlinkread+0x109>
    printf(1, "unlinkread wrong data\n");
    190b:	83 ec 08             	sub    $0x8,%esp
    190e:	68 a5 4f 00 00       	push   $0x4fa5
    1913:	6a 01                	push   $0x1
    1915:	e8 06 2e 00 00       	call   4720 <printf>
    exit(0);
    191a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1921:	e8 9c 2c 00 00       	call   45c2 <exit>
    1926:	83 c4 10             	add    $0x10,%esp
  }
  if(write(fd, buf, 10) != 10){
    1929:	83 ec 04             	sub    $0x4,%esp
    192c:	6a 0a                	push   $0xa
    192e:	68 e0 92 00 00       	push   $0x92e0
    1933:	53                   	push   %ebx
    1934:	e8 a9 2c 00 00       	call   45e2 <write>
    1939:	83 c4 10             	add    $0x10,%esp
    193c:	83 f8 0a             	cmp    $0xa,%eax
    193f:	74 1e                	je     195f <unlinkread+0x13f>
    printf(1, "unlinkread write failed\n");
    1941:	83 ec 08             	sub    $0x8,%esp
    1944:	68 bc 4f 00 00       	push   $0x4fbc
    1949:	6a 01                	push   $0x1
    194b:	e8 d0 2d 00 00       	call   4720 <printf>
    exit(0);
    1950:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1957:	e8 66 2c 00 00       	call   45c2 <exit>
    195c:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    195f:	83 ec 0c             	sub    $0xc,%esp
    1962:	53                   	push   %ebx
    1963:	e8 82 2c 00 00       	call   45ea <close>
  unlink("unlinkread");
    1968:	c7 04 24 2d 4f 00 00 	movl   $0x4f2d,(%esp)
    196f:	e8 9e 2c 00 00       	call   4612 <unlink>
  printf(1, "unlinkread ok\n");
    1974:	58                   	pop    %eax
    1975:	5a                   	pop    %edx
    1976:	68 d5 4f 00 00       	push   $0x4fd5
    197b:	6a 01                	push   $0x1
    197d:	e8 9e 2d 00 00       	call   4720 <printf>
}
    1982:	83 c4 10             	add    $0x10,%esp
    1985:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1988:	5b                   	pop    %ebx
    1989:	5e                   	pop    %esi
    198a:	5d                   	pop    %ebp
    198b:	c3                   	ret    
    198c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    1990:	83 ec 08             	sub    $0x8,%esp
    1993:	68 70 4f 00 00       	push   $0x4f70
    1998:	6a 01                	push   $0x1
    199a:	e8 81 2d 00 00       	call   4720 <printf>
    exit(0);
    199f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19a6:	e8 17 2c 00 00       	call   45c2 <exit>
    19ab:	83 c4 10             	add    $0x10,%esp
    19ae:	e9 ea fe ff ff       	jmp    189d <unlinkread+0x7d>
    19b3:	90                   	nop
    19b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    19b8:	83 ec 08             	sub    $0x8,%esp
    19bb:	68 58 4f 00 00       	push   $0x4f58
    19c0:	6a 01                	push   $0x1
    19c2:	e8 59 2d 00 00       	call   4720 <printf>
    exit(0);
    19c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19ce:	e8 ef 2b 00 00       	call   45c2 <exit>
    19d3:	83 c4 10             	add    $0x10,%esp
    19d6:	e9 aa fe ff ff       	jmp    1885 <unlinkread+0x65>
    19db:	90                   	nop
    19dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    19e0:	83 ec 08             	sub    $0x8,%esp
    19e3:	68 38 4f 00 00       	push   $0x4f38
    19e8:	6a 01                	push   $0x1
    19ea:	e8 31 2d 00 00       	call   4720 <printf>
    exit(0);
    19ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19f6:	e8 c7 2b 00 00       	call   45c2 <exit>
    19fb:	83 c4 10             	add    $0x10,%esp
    19fe:	e9 4f fe ff ff       	jmp    1852 <unlinkread+0x32>
    1a03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a10 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    1a10:	55                   	push   %ebp
    1a11:	89 e5                	mov    %esp,%ebp
    1a13:	53                   	push   %ebx
    1a14:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "linktest\n");
    1a17:	68 e4 4f 00 00       	push   $0x4fe4
    1a1c:	6a 01                	push   $0x1
    1a1e:	e8 fd 2c 00 00       	call   4720 <printf>

  unlink("lf1");
    1a23:	c7 04 24 ee 4f 00 00 	movl   $0x4fee,(%esp)
    1a2a:	e8 e3 2b 00 00       	call   4612 <unlink>
  unlink("lf2");
    1a2f:	c7 04 24 f2 4f 00 00 	movl   $0x4ff2,(%esp)
    1a36:	e8 d7 2b 00 00       	call   4612 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    1a3b:	58                   	pop    %eax
    1a3c:	5a                   	pop    %edx
    1a3d:	68 02 02 00 00       	push   $0x202
    1a42:	68 ee 4f 00 00       	push   $0x4fee
    1a47:	e8 b6 2b 00 00       	call   4602 <open>
  if(fd < 0){
    1a4c:	83 c4 10             	add    $0x10,%esp
    1a4f:	85 c0                	test   %eax,%eax
  printf(1, "linktest\n");

  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
    1a51:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1a53:	0f 88 c7 01 00 00    	js     1c20 <linktest+0x210>
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    1a59:	83 ec 04             	sub    $0x4,%esp
    1a5c:	6a 05                	push   $0x5
    1a5e:	68 52 4f 00 00       	push   $0x4f52
    1a63:	53                   	push   %ebx
    1a64:	e8 79 2b 00 00       	call   45e2 <write>
    1a69:	83 c4 10             	add    $0x10,%esp
    1a6c:	83 f8 05             	cmp    $0x5,%eax
    1a6f:	74 1e                	je     1a8f <linktest+0x7f>
    printf(1, "write lf1 failed\n");
    1a71:	83 ec 08             	sub    $0x8,%esp
    1a74:	68 09 50 00 00       	push   $0x5009
    1a79:	6a 01                	push   $0x1
    1a7b:	e8 a0 2c 00 00       	call   4720 <printf>
    exit(0);
    1a80:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a87:	e8 36 2b 00 00       	call   45c2 <exit>
    1a8c:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    1a8f:	83 ec 0c             	sub    $0xc,%esp
    1a92:	53                   	push   %ebx
    1a93:	e8 52 2b 00 00       	call   45ea <close>

  if(link("lf1", "lf2") < 0){
    1a98:	59                   	pop    %ecx
    1a99:	5b                   	pop    %ebx
    1a9a:	68 f2 4f 00 00       	push   $0x4ff2
    1a9f:	68 ee 4f 00 00       	push   $0x4fee
    1aa4:	e8 79 2b 00 00       	call   4622 <link>
    1aa9:	83 c4 10             	add    $0x10,%esp
    1aac:	85 c0                	test   %eax,%eax
    1aae:	0f 88 94 01 00 00    	js     1c48 <linktest+0x238>
    printf(1, "link lf1 lf2 failed\n");
    exit(0);
  }
  unlink("lf1");
    1ab4:	83 ec 0c             	sub    $0xc,%esp
    1ab7:	68 ee 4f 00 00       	push   $0x4fee
    1abc:	e8 51 2b 00 00       	call   4612 <unlink>

  if(open("lf1", 0) >= 0){
    1ac1:	58                   	pop    %eax
    1ac2:	5a                   	pop    %edx
    1ac3:	6a 00                	push   $0x0
    1ac5:	68 ee 4f 00 00       	push   $0x4fee
    1aca:	e8 33 2b 00 00       	call   4602 <open>
    1acf:	83 c4 10             	add    $0x10,%esp
    1ad2:	85 c0                	test   %eax,%eax
    1ad4:	78 1e                	js     1af4 <linktest+0xe4>
    printf(1, "unlinked lf1 but it is still there!\n");
    1ad6:	83 ec 08             	sub    $0x8,%esp
    1ad9:	68 fc 5b 00 00       	push   $0x5bfc
    1ade:	6a 01                	push   $0x1
    1ae0:	e8 3b 2c 00 00       	call   4720 <printf>
    exit(0);
    1ae5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1aec:	e8 d1 2a 00 00       	call   45c2 <exit>
    1af1:	83 c4 10             	add    $0x10,%esp
  }

  fd = open("lf2", 0);
    1af4:	83 ec 08             	sub    $0x8,%esp
    1af7:	6a 00                	push   $0x0
    1af9:	68 f2 4f 00 00       	push   $0x4ff2
    1afe:	e8 ff 2a 00 00       	call   4602 <open>
  if(fd < 0){
    1b03:	83 c4 10             	add    $0x10,%esp
    1b06:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    1b08:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1b0a:	0f 88 60 01 00 00    	js     1c70 <linktest+0x260>
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    1b10:	83 ec 04             	sub    $0x4,%esp
    1b13:	68 00 20 00 00       	push   $0x2000
    1b18:	68 e0 92 00 00       	push   $0x92e0
    1b1d:	53                   	push   %ebx
    1b1e:	e8 b7 2a 00 00       	call   45da <read>
    1b23:	83 c4 10             	add    $0x10,%esp
    1b26:	83 f8 05             	cmp    $0x5,%eax
    1b29:	74 1e                	je     1b49 <linktest+0x139>
    printf(1, "read lf2 failed\n");
    1b2b:	83 ec 08             	sub    $0x8,%esp
    1b2e:	68 41 50 00 00       	push   $0x5041
    1b33:	6a 01                	push   $0x1
    1b35:	e8 e6 2b 00 00       	call   4720 <printf>
    exit(0);
    1b3a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b41:	e8 7c 2a 00 00       	call   45c2 <exit>
    1b46:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    1b49:	83 ec 0c             	sub    $0xc,%esp
    1b4c:	53                   	push   %ebx
    1b4d:	e8 98 2a 00 00       	call   45ea <close>

  if(link("lf2", "lf2") >= 0){
    1b52:	59                   	pop    %ecx
    1b53:	5b                   	pop    %ebx
    1b54:	68 f2 4f 00 00       	push   $0x4ff2
    1b59:	68 f2 4f 00 00       	push   $0x4ff2
    1b5e:	e8 bf 2a 00 00       	call   4622 <link>
    1b63:	83 c4 10             	add    $0x10,%esp
    1b66:	85 c0                	test   %eax,%eax
    1b68:	78 1e                	js     1b88 <linktest+0x178>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1b6a:	83 ec 08             	sub    $0x8,%esp
    1b6d:	68 52 50 00 00       	push   $0x5052
    1b72:	6a 01                	push   $0x1
    1b74:	e8 a7 2b 00 00       	call   4720 <printf>
    exit(0);
    1b79:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b80:	e8 3d 2a 00 00       	call   45c2 <exit>
    1b85:	83 c4 10             	add    $0x10,%esp
  }

  unlink("lf2");
    1b88:	83 ec 0c             	sub    $0xc,%esp
    1b8b:	68 f2 4f 00 00       	push   $0x4ff2
    1b90:	e8 7d 2a 00 00       	call   4612 <unlink>
  if(link("lf2", "lf1") >= 0){
    1b95:	58                   	pop    %eax
    1b96:	5a                   	pop    %edx
    1b97:	68 ee 4f 00 00       	push   $0x4fee
    1b9c:	68 f2 4f 00 00       	push   $0x4ff2
    1ba1:	e8 7c 2a 00 00       	call   4622 <link>
    1ba6:	83 c4 10             	add    $0x10,%esp
    1ba9:	85 c0                	test   %eax,%eax
    1bab:	78 1e                	js     1bcb <linktest+0x1bb>
    printf(1, "link non-existant succeeded! oops\n");
    1bad:	83 ec 08             	sub    $0x8,%esp
    1bb0:	68 24 5c 00 00       	push   $0x5c24
    1bb5:	6a 01                	push   $0x1
    1bb7:	e8 64 2b 00 00       	call   4720 <printf>
    exit(0);
    1bbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bc3:	e8 fa 29 00 00       	call   45c2 <exit>
    1bc8:	83 c4 10             	add    $0x10,%esp
  }

  if(link(".", "lf1") >= 0){
    1bcb:	83 ec 08             	sub    $0x8,%esp
    1bce:	68 ee 4f 00 00       	push   $0x4fee
    1bd3:	68 b6 52 00 00       	push   $0x52b6
    1bd8:	e8 45 2a 00 00       	call   4622 <link>
    1bdd:	83 c4 10             	add    $0x10,%esp
    1be0:	85 c0                	test   %eax,%eax
    1be2:	78 1e                	js     1c02 <linktest+0x1f2>
    printf(1, "link . lf1 succeeded! oops\n");
    1be4:	83 ec 08             	sub    $0x8,%esp
    1be7:	68 70 50 00 00       	push   $0x5070
    1bec:	6a 01                	push   $0x1
    1bee:	e8 2d 2b 00 00       	call   4720 <printf>
    exit(0);
    1bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bfa:	e8 c3 29 00 00       	call   45c2 <exit>
    1bff:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "linktest ok\n");
    1c02:	83 ec 08             	sub    $0x8,%esp
    1c05:	68 8c 50 00 00       	push   $0x508c
    1c0a:	6a 01                	push   $0x1
    1c0c:	e8 0f 2b 00 00       	call   4720 <printf>
}
    1c11:	83 c4 10             	add    $0x10,%esp
    1c14:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1c17:	c9                   	leave  
    1c18:	c3                   	ret    
    1c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    1c20:	83 ec 08             	sub    $0x8,%esp
    1c23:	68 f6 4f 00 00       	push   $0x4ff6
    1c28:	6a 01                	push   $0x1
    1c2a:	e8 f1 2a 00 00       	call   4720 <printf>
    exit(0);
    1c2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c36:	e8 87 29 00 00       	call   45c2 <exit>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	e9 16 fe ff ff       	jmp    1a59 <linktest+0x49>
    1c43:	90                   	nop
    1c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    1c48:	83 ec 08             	sub    $0x8,%esp
    1c4b:	68 1b 50 00 00       	push   $0x501b
    1c50:	6a 01                	push   $0x1
    1c52:	e8 c9 2a 00 00       	call   4720 <printf>
    exit(0);
    1c57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c5e:	e8 5f 29 00 00       	call   45c2 <exit>
    1c63:	83 c4 10             	add    $0x10,%esp
    1c66:	e9 49 fe ff ff       	jmp    1ab4 <linktest+0xa4>
    1c6b:	90                   	nop
    1c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    1c70:	83 ec 08             	sub    $0x8,%esp
    1c73:	68 30 50 00 00       	push   $0x5030
    1c78:	6a 01                	push   $0x1
    1c7a:	e8 a1 2a 00 00       	call   4720 <printf>
    exit(0);
    1c7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c86:	e8 37 29 00 00       	call   45c2 <exit>
    1c8b:	83 c4 10             	add    $0x10,%esp
    1c8e:	e9 7d fe ff ff       	jmp    1b10 <linktest+0x100>
    1c93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001ca0 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1ca0:	55                   	push   %ebp
    1ca1:	89 e5                	mov    %esp,%ebp
    1ca3:	57                   	push   %edi
    1ca4:	56                   	push   %esi
    1ca5:	53                   	push   %ebx
    1ca6:	8d 75 ad             	lea    -0x53(%ebp),%esi
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1ca9:	31 db                	xor    %ebx,%ebx
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1cab:	bf 67 66 66 66       	mov    $0x66666667,%edi
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1cb0:	83 ec 64             	sub    $0x64,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    1cb3:	68 99 50 00 00       	push   $0x5099
    1cb8:	6a 01                	push   $0x1
    1cba:	e8 61 2a 00 00       	call   4720 <printf>
  file[0] = 'C';
    1cbf:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1cc3:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1cc7:	83 c4 10             	add    $0x10,%esp
    1cca:	eb 5c                	jmp    1d28 <concreate+0x88>
    1ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1cd0:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1cd5:	89 d9                	mov    %ebx,%ecx
    1cd7:	f7 eb                	imul   %ebx
    1cd9:	89 d8                	mov    %ebx,%eax
    1cdb:	c1 f8 1f             	sar    $0x1f,%eax
    1cde:	29 c2                	sub    %eax,%edx
    1ce0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1ce3:	29 c1                	sub    %eax,%ecx
    1ce5:	83 f9 01             	cmp    $0x1,%ecx
    1ce8:	0f 84 82 01 00 00    	je     1e70 <concreate+0x1d0>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1cee:	83 ec 08             	sub    $0x8,%esp
    1cf1:	68 02 02 00 00       	push   $0x202
    1cf6:	56                   	push   %esi
    1cf7:	e8 06 29 00 00       	call   4602 <open>
      if(fd < 0){
    1cfc:	83 c4 10             	add    $0x10,%esp
    1cff:	85 c0                	test   %eax,%eax
    1d01:	0f 88 5c 03 00 00    	js     2063 <concreate+0x3c3>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1d07:	83 ec 0c             	sub    $0xc,%esp
    1d0a:	50                   	push   %eax
    1d0b:	e8 da 28 00 00       	call   45ea <close>
    1d10:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1d13:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d16:	83 c3 01             	add    $0x1,%ebx
      close(fd);
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1d19:	6a 00                	push   $0x0
    1d1b:	e8 aa 28 00 00       	call   45ca <wait>
    1d20:	83 c4 10             	add    $0x10,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d23:	83 fb 28             	cmp    $0x28,%ebx
    1d26:	74 72                	je     1d9a <concreate+0xfa>
    file[1] = '0' + i;
    unlink(file);
    1d28:	83 ec 0c             	sub    $0xc,%esp

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1d2b:	8d 43 30             	lea    0x30(%ebx),%eax
    unlink(file);
    1d2e:	56                   	push   %esi

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1d2f:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1d32:	e8 db 28 00 00       	call   4612 <unlink>
    pid = fork();
    1d37:	e8 7e 28 00 00       	call   45ba <fork>
    if(pid && (i % 3) == 1){
    1d3c:	83 c4 10             	add    $0x10,%esp
    1d3f:	85 c0                	test   %eax,%eax
    1d41:	75 8d                	jne    1cd0 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1d43:	89 d8                	mov    %ebx,%eax
    1d45:	89 d9                	mov    %ebx,%ecx
    1d47:	f7 ef                	imul   %edi
    1d49:	89 d8                	mov    %ebx,%eax
    1d4b:	c1 f8 1f             	sar    $0x1f,%eax
    1d4e:	d1 fa                	sar    %edx
    1d50:	29 c2                	sub    %eax,%edx
    1d52:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1d55:	29 c1                	sub    %eax,%ecx
    1d57:	83 f9 01             	cmp    $0x1,%ecx
    1d5a:	0f 84 f8 00 00 00    	je     1e58 <concreate+0x1b8>
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1d60:	83 ec 08             	sub    $0x8,%esp
    1d63:	68 02 02 00 00       	push   $0x202
    1d68:	56                   	push   %esi
    1d69:	e8 94 28 00 00       	call   4602 <open>
      if(fd < 0){
    1d6e:	83 c4 10             	add    $0x10,%esp
    1d71:	85 c0                	test   %eax,%eax
    1d73:	0f 88 a7 00 00 00    	js     1e20 <concreate+0x180>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1d79:	83 ec 0c             	sub    $0xc,%esp
    1d7c:	50                   	push   %eax
    1d7d:	e8 68 28 00 00       	call   45ea <close>
    1d82:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit(0);
    1d85:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d88:	83 c3 01             	add    $0x1,%ebx
        exit(0);
      }
      close(fd);
    }
    if(pid == 0)
      exit(0);
    1d8b:	6a 00                	push   $0x0
    1d8d:	e8 30 28 00 00       	call   45c2 <exit>
    1d92:	83 c4 10             	add    $0x10,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d95:	83 fb 28             	cmp    $0x28,%ebx
    1d98:	75 8e                	jne    1d28 <concreate+0x88>
      exit(0);
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
    1d9a:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1d9d:	83 ec 04             	sub    $0x4,%esp
    1da0:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1da3:	6a 28                	push   $0x28
    1da5:	6a 00                	push   $0x0
    1da7:	50                   	push   %eax
    1da8:	e8 83 26 00 00       	call   4430 <memset>
  fd = open(".", 0);
    1dad:	59                   	pop    %ecx
    1dae:	5b                   	pop    %ebx
    1daf:	6a 00                	push   $0x0
    1db1:	68 b6 52 00 00       	push   $0x52b6
    1db6:	e8 47 28 00 00       	call   4602 <open>
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1dbb:	83 c4 10             	add    $0x10,%esp
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1dbe:	89 c3                	mov    %eax,%ebx
  n = 0;
    1dc0:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    1dc7:	89 f6                	mov    %esi,%esi
    1dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(read(fd, &de, sizeof(de)) > 0){
    1dd0:	83 ec 04             	sub    $0x4,%esp
    1dd3:	6a 10                	push   $0x10
    1dd5:	57                   	push   %edi
    1dd6:	53                   	push   %ebx
    1dd7:	e8 fe 27 00 00       	call   45da <read>
    1ddc:	83 c4 10             	add    $0x10,%esp
    1ddf:	85 c0                	test   %eax,%eax
    1de1:	0f 8e a9 00 00 00    	jle    1e90 <concreate+0x1f0>
    if(de.inum == 0)
    1de7:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1dec:	74 e2                	je     1dd0 <concreate+0x130>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1dee:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1df2:	75 dc                	jne    1dd0 <concreate+0x130>
    1df4:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1df8:	75 d6                	jne    1dd0 <concreate+0x130>
      i = de.name[1] - '0';
    1dfa:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1dfe:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1e01:	83 f8 27             	cmp    $0x27,%eax
    1e04:	0f 87 f9 01 00 00    	ja     2003 <concreate+0x363>
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
    1e0a:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1e0f:	0f 85 21 02 00 00    	jne    2036 <concreate+0x396>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit(0);
      }
      fa[i] = 1;
    1e15:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1e1a:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1e1e:	eb b0                	jmp    1dd0 <concreate+0x130>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    1e20:	83 ec 04             	sub    $0x4,%esp
    1e23:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    1e26:	56                   	push   %esi
    1e27:	68 f0 50 00 00       	push   $0x50f0
    1e2c:	6a 01                	push   $0x1
    1e2e:	e8 ed 28 00 00       	call   4720 <printf>
        exit(0);
    1e33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e3a:	e8 83 27 00 00       	call   45c2 <exit>
      }
      close(fd);
    1e3f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    1e42:	89 04 24             	mov    %eax,(%esp)
    1e45:	e8 a0 27 00 00       	call   45ea <close>
    1e4a:	83 c4 10             	add    $0x10,%esp
    1e4d:	e9 33 ff ff ff       	jmp    1d85 <concreate+0xe5>
    1e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    1e58:	83 ec 08             	sub    $0x8,%esp
    1e5b:	56                   	push   %esi
    1e5c:	68 a9 50 00 00       	push   $0x50a9
    1e61:	e8 bc 27 00 00       	call   4622 <link>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	e9 17 ff ff ff       	jmp    1d85 <concreate+0xe5>
    1e6e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1e70:	83 ec 08             	sub    $0x8,%esp
    1e73:	56                   	push   %esi
    1e74:	68 a9 50 00 00       	push   $0x50a9
    1e79:	e8 a4 27 00 00       	call   4622 <link>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	e9 8d fe ff ff       	jmp    1d13 <concreate+0x73>
    1e86:	8d 76 00             	lea    0x0(%esi),%esi
    1e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      }
      fa[i] = 1;
      n++;
    }
  }
  close(fd);
    1e90:	83 ec 0c             	sub    $0xc,%esp
    1e93:	53                   	push   %ebx
    1e94:	e8 51 27 00 00       	call   45ea <close>

  if(n != 40){
    1e99:	83 c4 10             	add    $0x10,%esp
    1e9c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1ea0:	74 1e                	je     1ec0 <concreate+0x220>
    printf(1, "concreate not enough files in directory listing\n");
    1ea2:	83 ec 08             	sub    $0x8,%esp
    1ea5:	68 48 5c 00 00       	push   $0x5c48
    1eaa:	6a 01                	push   $0x1
    1eac:	e8 6f 28 00 00       	call   4720 <printf>
    exit(0);
    1eb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1eb8:	e8 05 27 00 00       	call   45c2 <exit>
    1ebd:	83 c4 10             	add    $0x10,%esp
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
  n = 0;
    1ec0:	31 db                	xor    %ebx,%ebx
    1ec2:	eb 1d                	jmp    1ee1 <concreate+0x241>
    1ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    1ec8:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1ecb:	83 c3 01             	add    $0x1,%ebx
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    1ece:	6a 00                	push   $0x0
    1ed0:	e8 ed 26 00 00       	call   45c2 <exit>
    1ed5:	83 c4 10             	add    $0x10,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1ed8:	83 fb 28             	cmp    $0x28,%ebx
    1edb:	0f 84 ae 00 00 00    	je     1f8f <concreate+0x2ef>
    file[1] = '0' + i;
    1ee1:	8d 43 30             	lea    0x30(%ebx),%eax
    1ee4:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1ee7:	e8 ce 26 00 00       	call   45ba <fork>
    if(pid < 0){
    1eec:	85 c0                	test   %eax,%eax
    exit(0);
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1eee:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1ef0:	0f 88 ea 00 00 00    	js     1fe0 <concreate+0x340>
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
    1ef6:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1efb:	f7 eb                	imul   %ebx
    1efd:	89 d8                	mov    %ebx,%eax
    1eff:	c1 f8 1f             	sar    $0x1f,%eax
    1f02:	29 c2                	sub    %eax,%edx
    1f04:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1f07:	89 da                	mov    %ebx,%edx
    1f09:	29 c2                	sub    %eax,%edx
    1f0b:	89 f8                	mov    %edi,%eax
    1f0d:	09 d0                	or     %edx,%eax
    1f0f:	74 11                	je     1f22 <concreate+0x282>
       ((i % 3) == 1 && pid != 0)){
    1f11:	83 fa 01             	cmp    $0x1,%edx
    1f14:	0f 85 96 00 00 00    	jne    1fb0 <concreate+0x310>
    1f1a:	85 ff                	test   %edi,%edi
    1f1c:	0f 84 8e 00 00 00    	je     1fb0 <concreate+0x310>
      close(open(file, 0));
    1f22:	83 ec 08             	sub    $0x8,%esp
    1f25:	6a 00                	push   $0x0
    1f27:	56                   	push   %esi
    1f28:	e8 d5 26 00 00       	call   4602 <open>
    1f2d:	89 04 24             	mov    %eax,(%esp)
    1f30:	e8 b5 26 00 00       	call   45ea <close>
      close(open(file, 0));
    1f35:	58                   	pop    %eax
    1f36:	5a                   	pop    %edx
    1f37:	6a 00                	push   $0x0
    1f39:	56                   	push   %esi
    1f3a:	e8 c3 26 00 00       	call   4602 <open>
    1f3f:	89 04 24             	mov    %eax,(%esp)
    1f42:	e8 a3 26 00 00       	call   45ea <close>
      close(open(file, 0));
    1f47:	59                   	pop    %ecx
    1f48:	58                   	pop    %eax
    1f49:	6a 00                	push   $0x0
    1f4b:	56                   	push   %esi
    1f4c:	e8 b1 26 00 00       	call   4602 <open>
    1f51:	89 04 24             	mov    %eax,(%esp)
    1f54:	e8 91 26 00 00       	call   45ea <close>
      close(open(file, 0));
    1f59:	58                   	pop    %eax
    1f5a:	5a                   	pop    %edx
    1f5b:	6a 00                	push   $0x0
    1f5d:	56                   	push   %esi
    1f5e:	e8 9f 26 00 00       	call   4602 <open>
    1f63:	89 04 24             	mov    %eax,(%esp)
    1f66:	e8 7f 26 00 00       	call   45ea <close>
    1f6b:	83 c4 10             	add    $0x10,%esp
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1f6e:	85 ff                	test   %edi,%edi
    1f70:	0f 84 52 ff ff ff    	je     1ec8 <concreate+0x228>
      exit(0);
    else
      wait(0);
    1f76:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1f79:	83 c3 01             	add    $0x1,%ebx
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1f7c:	6a 00                	push   $0x0
    1f7e:	e8 47 26 00 00       	call   45ca <wait>
    1f83:	83 c4 10             	add    $0x10,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1f86:	83 fb 28             	cmp    $0x28,%ebx
    1f89:	0f 85 52 ff ff ff    	jne    1ee1 <concreate+0x241>
      exit(0);
    else
      wait(0);
  }

  printf(1, "concreate ok\n");
    1f8f:	83 ec 08             	sub    $0x8,%esp
    1f92:	68 e2 50 00 00       	push   $0x50e2
    1f97:	6a 01                	push   $0x1
    1f99:	e8 82 27 00 00       	call   4720 <printf>
}
    1f9e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fa1:	5b                   	pop    %ebx
    1fa2:	5e                   	pop    %esi
    1fa3:	5f                   	pop    %edi
    1fa4:	5d                   	pop    %ebp
    1fa5:	c3                   	ret    
    1fa6:	8d 76 00             	lea    0x0(%esi),%esi
    1fa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1fb0:	83 ec 0c             	sub    $0xc,%esp
    1fb3:	56                   	push   %esi
    1fb4:	e8 59 26 00 00       	call   4612 <unlink>
      unlink(file);
    1fb9:	89 34 24             	mov    %esi,(%esp)
    1fbc:	e8 51 26 00 00       	call   4612 <unlink>
      unlink(file);
    1fc1:	89 34 24             	mov    %esi,(%esp)
    1fc4:	e8 49 26 00 00       	call   4612 <unlink>
      unlink(file);
    1fc9:	89 34 24             	mov    %esi,(%esp)
    1fcc:	e8 41 26 00 00       	call   4612 <unlink>
    1fd1:	83 c4 10             	add    $0x10,%esp
    1fd4:	eb 98                	jmp    1f6e <concreate+0x2ce>
    1fd6:	8d 76 00             	lea    0x0(%esi),%esi
    1fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1fe0:	83 ec 08             	sub    $0x8,%esp
    1fe3:	68 81 59 00 00       	push   $0x5981
    1fe8:	6a 01                	push   $0x1
    1fea:	e8 31 27 00 00       	call   4720 <printf>
      exit(0);
    1fef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ff6:	e8 c7 25 00 00       	call   45c2 <exit>
    1ffb:	83 c4 10             	add    $0x10,%esp
    1ffe:	e9 f3 fe ff ff       	jmp    1ef6 <concreate+0x256>
    2003:	89 45 a0             	mov    %eax,-0x60(%ebp)
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    2006:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2009:	83 ec 04             	sub    $0x4,%esp
    200c:	50                   	push   %eax
    200d:	68 ac 50 00 00       	push   $0x50ac
    2012:	6a 01                	push   $0x1
    2014:	e8 07 27 00 00       	call   4720 <printf>
        exit(0);
    2019:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2020:	e8 9d 25 00 00       	call   45c2 <exit>
    2025:	8b 45 a0             	mov    -0x60(%ebp),%eax
    2028:	83 c4 10             	add    $0x10,%esp
      }
      if(fa[i]){
    202b:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    2030:	0f 84 df fd ff ff    	je     1e15 <concreate+0x175>
    2036:	89 45 a0             	mov    %eax,-0x60(%ebp)
        printf(1, "concreate duplicate file %s\n", de.name);
    2039:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    203c:	83 ec 04             	sub    $0x4,%esp
    203f:	50                   	push   %eax
    2040:	68 c5 50 00 00       	push   $0x50c5
    2045:	6a 01                	push   $0x1
    2047:	e8 d4 26 00 00       	call   4720 <printf>
        exit(0);
    204c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2053:	e8 6a 25 00 00       	call   45c2 <exit>
    2058:	83 c4 10             	add    $0x10,%esp
    205b:	8b 45 a0             	mov    -0x60(%ebp),%eax
    205e:	e9 b2 fd ff ff       	jmp    1e15 <concreate+0x175>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    2063:	83 ec 04             	sub    $0x4,%esp
    2066:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    2069:	56                   	push   %esi
    206a:	68 f0 50 00 00       	push   $0x50f0
    206f:	6a 01                	push   $0x1
    2071:	e8 aa 26 00 00       	call   4720 <printf>
        exit(0);
    2076:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    207d:	e8 40 25 00 00       	call   45c2 <exit>
      }
      close(fd);
    2082:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2085:	89 04 24             	mov    %eax,(%esp)
    2088:	e8 5d 25 00 00       	call   45ea <close>
    208d:	83 c4 10             	add    $0x10,%esp
    2090:	e9 7e fc ff ff       	jmp    1d13 <concreate+0x73>
    2095:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000020a0 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    20a0:	55                   	push   %ebp
    20a1:	89 e5                	mov    %esp,%ebp
    20a3:	57                   	push   %edi
    20a4:	56                   	push   %esi
    20a5:	53                   	push   %ebx
    20a6:	83 ec 24             	sub    $0x24,%esp
  int pid, i;

  printf(1, "linkunlink test\n");
    20a9:	68 0c 51 00 00       	push   $0x510c
    20ae:	6a 01                	push   $0x1
    20b0:	e8 6b 26 00 00       	call   4720 <printf>

  unlink("x");
    20b5:	c7 04 24 99 53 00 00 	movl   $0x5399,(%esp)
    20bc:	e8 51 25 00 00       	call   4612 <unlink>
  pid = fork();
    20c1:	e8 f4 24 00 00       	call   45ba <fork>
  if(pid < 0){
    20c6:	83 c4 10             	add    $0x10,%esp
    20c9:	85 c0                	test   %eax,%eax
  int pid, i;

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    20cb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    20ce:	0f 88 c6 00 00 00    	js     219a <linkunlink+0xfa>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    20d4:	bf 61 00 00 00       	mov    $0x61,%edi
    20d9:	0f 85 d9 00 00 00    	jne    21b8 <linkunlink+0x118>
    20df:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    20e4:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    20e9:	eb 23                	jmp    210e <linkunlink+0x6e>
    20eb:	90                   	nop
    20ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    20f0:	83 fa 01             	cmp    $0x1,%edx
    20f3:	0f 84 87 00 00 00    	je     2180 <linkunlink+0xe0>
      link("cat", "x");
    } else {
      unlink("x");
    20f9:	83 ec 0c             	sub    $0xc,%esp
    20fc:	68 99 53 00 00       	push   $0x5399
    2101:	e8 0c 25 00 00       	call   4612 <unlink>
    2106:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    2109:	83 eb 01             	sub    $0x1,%ebx
    210c:	74 3d                	je     214b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    210e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2114:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    211a:	89 f8                	mov    %edi,%eax
    211c:	f7 e6                	mul    %esi
    211e:	d1 ea                	shr    %edx
    2120:	8d 04 52             	lea    (%edx,%edx,2),%eax
    2123:	89 fa                	mov    %edi,%edx
    2125:	29 c2                	sub    %eax,%edx
    2127:	75 c7                	jne    20f0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2129:	83 ec 08             	sub    $0x8,%esp
    212c:	68 02 02 00 00       	push   $0x202
    2131:	68 99 53 00 00       	push   $0x5399
    2136:	e8 c7 24 00 00       	call   4602 <open>
    213b:	89 04 24             	mov    %eax,(%esp)
    213e:	e8 a7 24 00 00       	call   45ea <close>
    2143:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    2146:	83 eb 01             	sub    $0x1,%ebx
    2149:	75 c3                	jne    210e <linkunlink+0x6e>
    } else {
      unlink("x");
    }
  }

  if(pid)
    214b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    214e:	85 c0                	test   %eax,%eax
    2150:	75 70                	jne    21c2 <linkunlink+0x122>
    wait(0);
  else
    exit(0);
    2152:	83 ec 0c             	sub    $0xc,%esp
    2155:	6a 00                	push   $0x0
    2157:	e8 66 24 00 00       	call   45c2 <exit>
    215c:	83 c4 10             	add    $0x10,%esp

  printf(1, "linkunlink ok\n");
    215f:	83 ec 08             	sub    $0x8,%esp
    2162:	68 21 51 00 00       	push   $0x5121
    2167:	6a 01                	push   $0x1
    2169:	e8 b2 25 00 00       	call   4720 <printf>
}
    216e:	83 c4 10             	add    $0x10,%esp
    2171:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2174:	5b                   	pop    %ebx
    2175:	5e                   	pop    %esi
    2176:	5f                   	pop    %edi
    2177:	5d                   	pop    %ebp
    2178:	c3                   	ret    
    2179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    2180:	83 ec 08             	sub    $0x8,%esp
    2183:	68 99 53 00 00       	push   $0x5399
    2188:	68 1d 51 00 00       	push   $0x511d
    218d:	e8 90 24 00 00       	call   4622 <link>
    2192:	83 c4 10             	add    $0x10,%esp
    2195:	e9 6f ff ff ff       	jmp    2109 <linkunlink+0x69>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    219a:	83 ec 08             	sub    $0x8,%esp
    219d:	68 81 59 00 00       	push   $0x5981
    21a2:	6a 01                	push   $0x1
    21a4:	e8 77 25 00 00       	call   4720 <printf>
    exit(0);
    21a9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    21b0:	e8 0d 24 00 00       	call   45c2 <exit>
    21b5:	83 c4 10             	add    $0x10,%esp
  }

  unsigned int x = (pid ? 1 : 97);
    21b8:	bf 01 00 00 00       	mov    $0x1,%edi
    21bd:	e9 1d ff ff ff       	jmp    20df <linkunlink+0x3f>
      unlink("x");
    }
  }

  if(pid)
    wait(0);
    21c2:	83 ec 0c             	sub    $0xc,%esp
    21c5:	6a 00                	push   $0x0
    21c7:	e8 fe 23 00 00       	call   45ca <wait>
    21cc:	83 c4 10             	add    $0x10,%esp
    21cf:	eb 8e                	jmp    215f <linkunlink+0xbf>
    21d1:	eb 0d                	jmp    21e0 <bigdir>
    21d3:	90                   	nop
    21d4:	90                   	nop
    21d5:	90                   	nop
    21d6:	90                   	nop
    21d7:	90                   	nop
    21d8:	90                   	nop
    21d9:	90                   	nop
    21da:	90                   	nop
    21db:	90                   	nop
    21dc:	90                   	nop
    21dd:	90                   	nop
    21de:	90                   	nop
    21df:	90                   	nop

000021e0 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    21e0:	55                   	push   %ebp
    21e1:	89 e5                	mov    %esp,%ebp
    21e3:	56                   	push   %esi
    21e4:	53                   	push   %ebx
    21e5:	83 ec 28             	sub    $0x28,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    21e8:	68 30 51 00 00       	push   $0x5130
    21ed:	6a 01                	push   $0x1
    21ef:	e8 2c 25 00 00       	call   4720 <printf>
  unlink("bd");
    21f4:	c7 04 24 3d 51 00 00 	movl   $0x513d,(%esp)
    21fb:	e8 12 24 00 00       	call   4612 <unlink>

  fd = open("bd", O_CREATE);
    2200:	58                   	pop    %eax
    2201:	5a                   	pop    %edx
    2202:	68 00 02 00 00       	push   $0x200
    2207:	68 3d 51 00 00       	push   $0x513d
    220c:	e8 f1 23 00 00       	call   4602 <open>
  if(fd < 0){
    2211:	83 c4 10             	add    $0x10,%esp
    2214:	85 c0                	test   %eax,%eax
    2216:	0f 88 0f 01 00 00    	js     232b <bigdir+0x14b>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    221c:	83 ec 0c             	sub    $0xc,%esp

  for(i = 0; i < 500; i++){
    221f:	31 db                	xor    %ebx,%ebx
    2221:	8d 75 ee             	lea    -0x12(%ebp),%esi
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    2224:	50                   	push   %eax
    2225:	e8 c0 23 00 00       	call   45ea <close>
    222a:	83 c4 10             	add    $0x10,%esp
    222d:	eb 0c                	jmp    223b <bigdir+0x5b>
    222f:	90                   	nop

  for(i = 0; i < 500; i++){
    2230:	83 c3 01             	add    $0x1,%ebx
    2233:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2239:	74 5c                	je     2297 <bigdir+0xb7>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    223b:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    223d:	83 ec 08             	sub    $0x8,%esp
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    2240:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    2244:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    2247:	56                   	push   %esi
    2248:	68 3d 51 00 00       	push   $0x513d
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    224d:	83 c0 30             	add    $0x30,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    2250:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    2254:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    2257:	89 d8                	mov    %ebx,%eax
    2259:	83 e0 3f             	and    $0x3f,%eax
    225c:	83 c0 30             	add    $0x30,%eax
    225f:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(link("bd", name) != 0){
    2262:	e8 bb 23 00 00       	call   4622 <link>
    2267:	83 c4 10             	add    $0x10,%esp
    226a:	85 c0                	test   %eax,%eax
    226c:	74 c2                	je     2230 <bigdir+0x50>
      printf(1, "bigdir link failed\n");
    226e:	83 ec 08             	sub    $0x8,%esp
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    2271:	83 c3 01             	add    $0x1,%ebx
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    2274:	68 56 51 00 00       	push   $0x5156
    2279:	6a 01                	push   $0x1
    227b:	e8 a0 24 00 00       	call   4720 <printf>
      exit(0);
    2280:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2287:	e8 36 23 00 00       	call   45c2 <exit>
    228c:	83 c4 10             	add    $0x10,%esp
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    228f:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2295:	75 a4                	jne    223b <bigdir+0x5b>
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    2297:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    229a:	31 db                	xor    %ebx,%ebx
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    229c:	68 3d 51 00 00       	push   $0x513d
    22a1:	e8 6c 23 00 00       	call   4612 <unlink>
    22a6:	83 c4 10             	add    $0x10,%esp
    22a9:	eb 10                	jmp    22bb <bigdir+0xdb>
    22ab:	90                   	nop
    22ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    22b0:	83 c3 01             	add    $0x1,%ebx
    22b3:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22b9:	74 57                	je     2312 <bigdir+0x132>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    22bb:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    22bd:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    22c0:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    22c4:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    22c7:	56                   	push   %esi
  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    22c8:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    22cc:	83 c0 30             	add    $0x30,%eax
    22cf:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    22d2:	89 d8                	mov    %ebx,%eax
    22d4:	83 e0 3f             	and    $0x3f,%eax
    22d7:	83 c0 30             	add    $0x30,%eax
    22da:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(unlink(name) != 0){
    22dd:	e8 30 23 00 00       	call   4612 <unlink>
    22e2:	83 c4 10             	add    $0x10,%esp
    22e5:	85 c0                	test   %eax,%eax
    22e7:	74 c7                	je     22b0 <bigdir+0xd0>
      printf(1, "bigdir unlink failed");
    22e9:	83 ec 08             	sub    $0x8,%esp
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    22ec:	83 c3 01             	add    $0x1,%ebx
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    22ef:	68 6a 51 00 00       	push   $0x516a
    22f4:	6a 01                	push   $0x1
    22f6:	e8 25 24 00 00       	call   4720 <printf>
      exit(0);
    22fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2302:	e8 bb 22 00 00       	call   45c2 <exit>
    2307:	83 c4 10             	add    $0x10,%esp
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    230a:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2310:	75 a9                	jne    22bb <bigdir+0xdb>
      printf(1, "bigdir unlink failed");
      exit(0);
    }
  }

  printf(1, "bigdir ok\n");
    2312:	83 ec 08             	sub    $0x8,%esp
    2315:	68 7f 51 00 00       	push   $0x517f
    231a:	6a 01                	push   $0x1
    231c:	e8 ff 23 00 00       	call   4720 <printf>
}
    2321:	83 c4 10             	add    $0x10,%esp
    2324:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2327:	5b                   	pop    %ebx
    2328:	5e                   	pop    %esi
    2329:	5d                   	pop    %ebp
    232a:	c3                   	ret    
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    232b:	83 ec 08             	sub    $0x8,%esp
    232e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    2331:	68 40 51 00 00       	push   $0x5140
    2336:	6a 01                	push   $0x1
    2338:	e8 e3 23 00 00       	call   4720 <printf>
    exit(0);
    233d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2344:	e8 79 22 00 00       	call   45c2 <exit>
    2349:	83 c4 10             	add    $0x10,%esp
    234c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    234f:	e9 c8 fe ff ff       	jmp    221c <bigdir+0x3c>
    2354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    235a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002360 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    2360:	55                   	push   %ebp
    2361:	89 e5                	mov    %esp,%ebp
    2363:	53                   	push   %ebx
    2364:	83 ec 0c             	sub    $0xc,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    2367:	68 8a 51 00 00       	push   $0x518a
    236c:	6a 01                	push   $0x1
    236e:	e8 ad 23 00 00       	call   4720 <printf>

  unlink("ff");
    2373:	c7 04 24 13 52 00 00 	movl   $0x5213,(%esp)
    237a:	e8 93 22 00 00       	call   4612 <unlink>
  if(mkdir("dd") != 0){
    237f:	c7 04 24 b0 52 00 00 	movl   $0x52b0,(%esp)
    2386:	e8 9f 22 00 00       	call   462a <mkdir>
    238b:	83 c4 10             	add    $0x10,%esp
    238e:	85 c0                	test   %eax,%eax
    2390:	0f 85 52 05 00 00    	jne    28e8 <subdir+0x588>
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    2396:	83 ec 08             	sub    $0x8,%esp
    2399:	68 02 02 00 00       	push   $0x202
    239e:	68 e9 51 00 00       	push   $0x51e9
    23a3:	e8 5a 22 00 00       	call   4602 <open>
  if(fd < 0){
    23a8:	83 c4 10             	add    $0x10,%esp
    23ab:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    23ad:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    23af:	0f 88 f3 08 00 00    	js     2ca8 <subdir+0x948>
    printf(1, "create dd/ff failed\n");
    exit(0);
  }
  write(fd, "ff", 2);
    23b5:	83 ec 04             	sub    $0x4,%esp
    23b8:	6a 02                	push   $0x2
    23ba:	68 13 52 00 00       	push   $0x5213
    23bf:	53                   	push   %ebx
    23c0:	e8 1d 22 00 00       	call   45e2 <write>
  close(fd);
    23c5:	89 1c 24             	mov    %ebx,(%esp)
    23c8:	e8 1d 22 00 00       	call   45ea <close>

  if(unlink("dd") >= 0){
    23cd:	c7 04 24 b0 52 00 00 	movl   $0x52b0,(%esp)
    23d4:	e8 39 22 00 00       	call   4612 <unlink>
    23d9:	83 c4 10             	add    $0x10,%esp
    23dc:	85 c0                	test   %eax,%eax
    23de:	78 1e                	js     23fe <subdir+0x9e>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    23e0:	83 ec 08             	sub    $0x8,%esp
    23e3:	68 7c 5c 00 00       	push   $0x5c7c
    23e8:	6a 01                	push   $0x1
    23ea:	e8 31 23 00 00       	call   4720 <printf>
    exit(0);
    23ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23f6:	e8 c7 21 00 00       	call   45c2 <exit>
    23fb:	83 c4 10             	add    $0x10,%esp
  }

  if(mkdir("/dd/dd") != 0){
    23fe:	83 ec 0c             	sub    $0xc,%esp
    2401:	68 c4 51 00 00       	push   $0x51c4
    2406:	e8 1f 22 00 00       	call   462a <mkdir>
    240b:	83 c4 10             	add    $0x10,%esp
    240e:	85 c0                	test   %eax,%eax
    2410:	0f 85 aa 04 00 00    	jne    28c0 <subdir+0x560>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2416:	83 ec 08             	sub    $0x8,%esp
    2419:	68 02 02 00 00       	push   $0x202
    241e:	68 e6 51 00 00       	push   $0x51e6
    2423:	e8 da 21 00 00       	call   4602 <open>
  if(fd < 0){
    2428:	83 c4 10             	add    $0x10,%esp
    242b:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    242d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    242f:	0f 88 fb 07 00 00    	js     2c30 <subdir+0x8d0>
    printf(1, "create dd/dd/ff failed\n");
    exit(0);
  }
  write(fd, "FF", 2);
    2435:	83 ec 04             	sub    $0x4,%esp
    2438:	6a 02                	push   $0x2
    243a:	68 07 52 00 00       	push   $0x5207
    243f:	53                   	push   %ebx
    2440:	e8 9d 21 00 00       	call   45e2 <write>
  close(fd);
    2445:	89 1c 24             	mov    %ebx,(%esp)
    2448:	e8 9d 21 00 00       	call   45ea <close>

  fd = open("dd/dd/../ff", 0);
    244d:	58                   	pop    %eax
    244e:	5a                   	pop    %edx
    244f:	6a 00                	push   $0x0
    2451:	68 0a 52 00 00       	push   $0x520a
    2456:	e8 a7 21 00 00       	call   4602 <open>
  if(fd < 0){
    245b:	83 c4 10             	add    $0x10,%esp
    245e:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    2460:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2462:	0f 88 f0 07 00 00    	js     2c58 <subdir+0x8f8>
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
    2468:	83 ec 04             	sub    $0x4,%esp
    246b:	68 00 20 00 00       	push   $0x2000
    2470:	68 e0 92 00 00       	push   $0x92e0
    2475:	53                   	push   %ebx
    2476:	e8 5f 21 00 00       	call   45da <read>
  if(cc != 2 || buf[0] != 'f'){
    247b:	83 c4 10             	add    $0x10,%esp
    247e:	83 f8 02             	cmp    $0x2,%eax
    2481:	0f 84 21 04 00 00    	je     28a8 <subdir+0x548>
    printf(1, "dd/dd/../ff wrong content\n");
    2487:	83 ec 08             	sub    $0x8,%esp
    248a:	68 2f 52 00 00       	push   $0x522f
    248f:	6a 01                	push   $0x1
    2491:	e8 8a 22 00 00       	call   4720 <printf>
    exit(0);
    2496:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    249d:	e8 20 21 00 00       	call   45c2 <exit>
    24a2:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    24a5:	83 ec 0c             	sub    $0xc,%esp
    24a8:	53                   	push   %ebx
    24a9:	e8 3c 21 00 00       	call   45ea <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    24ae:	59                   	pop    %ecx
    24af:	5b                   	pop    %ebx
    24b0:	68 4a 52 00 00       	push   $0x524a
    24b5:	68 e6 51 00 00       	push   $0x51e6
    24ba:	e8 63 21 00 00       	call   4622 <link>
    24bf:	83 c4 10             	add    $0x10,%esp
    24c2:	85 c0                	test   %eax,%eax
    24c4:	0f 85 16 07 00 00    	jne    2be0 <subdir+0x880>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    24ca:	83 ec 0c             	sub    $0xc,%esp
    24cd:	68 e6 51 00 00       	push   $0x51e6
    24d2:	e8 3b 21 00 00       	call   4612 <unlink>
    24d7:	83 c4 10             	add    $0x10,%esp
    24da:	85 c0                	test   %eax,%eax
    24dc:	0f 85 d6 06 00 00    	jne    2bb8 <subdir+0x858>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    24e2:	83 ec 08             	sub    $0x8,%esp
    24e5:	6a 00                	push   $0x0
    24e7:	68 e6 51 00 00       	push   $0x51e6
    24ec:	e8 11 21 00 00       	call   4602 <open>
    24f1:	83 c4 10             	add    $0x10,%esp
    24f4:	85 c0                	test   %eax,%eax
    24f6:	78 1e                	js     2516 <subdir+0x1b6>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    24f8:	83 ec 08             	sub    $0x8,%esp
    24fb:	68 c8 5c 00 00       	push   $0x5cc8
    2500:	6a 01                	push   $0x1
    2502:	e8 19 22 00 00       	call   4720 <printf>
    exit(0);
    2507:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    250e:	e8 af 20 00 00       	call   45c2 <exit>
    2513:	83 c4 10             	add    $0x10,%esp
  }

  if(chdir("dd") != 0){
    2516:	83 ec 0c             	sub    $0xc,%esp
    2519:	68 b0 52 00 00       	push   $0x52b0
    251e:	e8 0f 21 00 00       	call   4632 <chdir>
    2523:	83 c4 10             	add    $0x10,%esp
    2526:	85 c0                	test   %eax,%eax
    2528:	0f 85 62 06 00 00    	jne    2b90 <subdir+0x830>
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    252e:	83 ec 0c             	sub    $0xc,%esp
    2531:	68 7e 52 00 00       	push   $0x527e
    2536:	e8 f7 20 00 00       	call   4632 <chdir>
    253b:	83 c4 10             	add    $0x10,%esp
    253e:	85 c0                	test   %eax,%eax
    2540:	0f 85 22 06 00 00    	jne    2b68 <subdir+0x808>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    2546:	83 ec 0c             	sub    $0xc,%esp
    2549:	68 a4 52 00 00       	push   $0x52a4
    254e:	e8 df 20 00 00       	call   4632 <chdir>
    2553:	83 c4 10             	add    $0x10,%esp
    2556:	85 c0                	test   %eax,%eax
    2558:	0f 85 e2 05 00 00    	jne    2b40 <subdir+0x7e0>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    255e:	83 ec 0c             	sub    $0xc,%esp
    2561:	68 b3 52 00 00       	push   $0x52b3
    2566:	e8 c7 20 00 00       	call   4632 <chdir>
    256b:	83 c4 10             	add    $0x10,%esp
    256e:	85 c0                	test   %eax,%eax
    2570:	0f 85 a2 05 00 00    	jne    2b18 <subdir+0x7b8>
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    2576:	83 ec 08             	sub    $0x8,%esp
    2579:	6a 00                	push   $0x0
    257b:	68 4a 52 00 00       	push   $0x524a
    2580:	e8 7d 20 00 00       	call   4602 <open>
  if(fd < 0){
    2585:	83 c4 10             	add    $0x10,%esp
    2588:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    258a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    258c:	0f 88 ee 06 00 00    	js     2c80 <subdir+0x920>
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    2592:	83 ec 04             	sub    $0x4,%esp
    2595:	68 00 20 00 00       	push   $0x2000
    259a:	68 e0 92 00 00       	push   $0x92e0
    259f:	53                   	push   %ebx
    25a0:	e8 35 20 00 00       	call   45da <read>
    25a5:	83 c4 10             	add    $0x10,%esp
    25a8:	83 f8 02             	cmp    $0x2,%eax
    25ab:	74 1e                	je     25cb <subdir+0x26b>
    printf(1, "read dd/dd/ffff wrong len\n");
    25ad:	83 ec 08             	sub    $0x8,%esp
    25b0:	68 e3 52 00 00       	push   $0x52e3
    25b5:	6a 01                	push   $0x1
    25b7:	e8 64 21 00 00       	call   4720 <printf>
    exit(0);
    25bc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c3:	e8 fa 1f 00 00       	call   45c2 <exit>
    25c8:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    25cb:	83 ec 0c             	sub    $0xc,%esp
    25ce:	53                   	push   %ebx
    25cf:	e8 16 20 00 00       	call   45ea <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    25d4:	58                   	pop    %eax
    25d5:	5a                   	pop    %edx
    25d6:	6a 00                	push   $0x0
    25d8:	68 e6 51 00 00       	push   $0x51e6
    25dd:	e8 20 20 00 00       	call   4602 <open>
    25e2:	83 c4 10             	add    $0x10,%esp
    25e5:	85 c0                	test   %eax,%eax
    25e7:	78 1e                	js     2607 <subdir+0x2a7>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    25e9:	83 ec 08             	sub    $0x8,%esp
    25ec:	68 ec 5c 00 00       	push   $0x5cec
    25f1:	6a 01                	push   $0x1
    25f3:	e8 28 21 00 00       	call   4720 <printf>
    exit(0);
    25f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25ff:	e8 be 1f 00 00       	call   45c2 <exit>
    2604:	83 c4 10             	add    $0x10,%esp
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2607:	83 ec 08             	sub    $0x8,%esp
    260a:	68 02 02 00 00       	push   $0x202
    260f:	68 fe 52 00 00       	push   $0x52fe
    2614:	e8 e9 1f 00 00       	call   4602 <open>
    2619:	83 c4 10             	add    $0x10,%esp
    261c:	85 c0                	test   %eax,%eax
    261e:	78 1e                	js     263e <subdir+0x2de>
    printf(1, "create dd/ff/ff succeeded!\n");
    2620:	83 ec 08             	sub    $0x8,%esp
    2623:	68 07 53 00 00       	push   $0x5307
    2628:	6a 01                	push   $0x1
    262a:	e8 f1 20 00 00       	call   4720 <printf>
    exit(0);
    262f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2636:	e8 87 1f 00 00       	call   45c2 <exit>
    263b:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    263e:	83 ec 08             	sub    $0x8,%esp
    2641:	68 02 02 00 00       	push   $0x202
    2646:	68 23 53 00 00       	push   $0x5323
    264b:	e8 b2 1f 00 00       	call   4602 <open>
    2650:	83 c4 10             	add    $0x10,%esp
    2653:	85 c0                	test   %eax,%eax
    2655:	78 1e                	js     2675 <subdir+0x315>
    printf(1, "create dd/xx/ff succeeded!\n");
    2657:	83 ec 08             	sub    $0x8,%esp
    265a:	68 2c 53 00 00       	push   $0x532c
    265f:	6a 01                	push   $0x1
    2661:	e8 ba 20 00 00       	call   4720 <printf>
    exit(0);
    2666:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    266d:	e8 50 1f 00 00       	call   45c2 <exit>
    2672:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_CREATE) >= 0){
    2675:	83 ec 08             	sub    $0x8,%esp
    2678:	68 00 02 00 00       	push   $0x200
    267d:	68 b0 52 00 00       	push   $0x52b0
    2682:	e8 7b 1f 00 00       	call   4602 <open>
    2687:	83 c4 10             	add    $0x10,%esp
    268a:	85 c0                	test   %eax,%eax
    268c:	78 1e                	js     26ac <subdir+0x34c>
    printf(1, "create dd succeeded!\n");
    268e:	83 ec 08             	sub    $0x8,%esp
    2691:	68 48 53 00 00       	push   $0x5348
    2696:	6a 01                	push   $0x1
    2698:	e8 83 20 00 00       	call   4720 <printf>
    exit(0);
    269d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a4:	e8 19 1f 00 00       	call   45c2 <exit>
    26a9:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_RDWR) >= 0){
    26ac:	83 ec 08             	sub    $0x8,%esp
    26af:	6a 02                	push   $0x2
    26b1:	68 b0 52 00 00       	push   $0x52b0
    26b6:	e8 47 1f 00 00       	call   4602 <open>
    26bb:	83 c4 10             	add    $0x10,%esp
    26be:	85 c0                	test   %eax,%eax
    26c0:	78 1e                	js     26e0 <subdir+0x380>
    printf(1, "open dd rdwr succeeded!\n");
    26c2:	83 ec 08             	sub    $0x8,%esp
    26c5:	68 5e 53 00 00       	push   $0x535e
    26ca:	6a 01                	push   $0x1
    26cc:	e8 4f 20 00 00       	call   4720 <printf>
    exit(0);
    26d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d8:	e8 e5 1e 00 00       	call   45c2 <exit>
    26dd:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_WRONLY) >= 0){
    26e0:	83 ec 08             	sub    $0x8,%esp
    26e3:	6a 01                	push   $0x1
    26e5:	68 b0 52 00 00       	push   $0x52b0
    26ea:	e8 13 1f 00 00       	call   4602 <open>
    26ef:	83 c4 10             	add    $0x10,%esp
    26f2:	85 c0                	test   %eax,%eax
    26f4:	78 1e                	js     2714 <subdir+0x3b4>
    printf(1, "open dd wronly succeeded!\n");
    26f6:	83 ec 08             	sub    $0x8,%esp
    26f9:	68 77 53 00 00       	push   $0x5377
    26fe:	6a 01                	push   $0x1
    2700:	e8 1b 20 00 00       	call   4720 <printf>
    exit(0);
    2705:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    270c:	e8 b1 1e 00 00       	call   45c2 <exit>
    2711:	83 c4 10             	add    $0x10,%esp
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2714:	83 ec 08             	sub    $0x8,%esp
    2717:	68 92 53 00 00       	push   $0x5392
    271c:	68 fe 52 00 00       	push   $0x52fe
    2721:	e8 fc 1e 00 00       	call   4622 <link>
    2726:	83 c4 10             	add    $0x10,%esp
    2729:	85 c0                	test   %eax,%eax
    272b:	0f 84 bf 03 00 00    	je     2af0 <subdir+0x790>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2731:	83 ec 08             	sub    $0x8,%esp
    2734:	68 92 53 00 00       	push   $0x5392
    2739:	68 23 53 00 00       	push   $0x5323
    273e:	e8 df 1e 00 00       	call   4622 <link>
    2743:	83 c4 10             	add    $0x10,%esp
    2746:	85 c0                	test   %eax,%eax
    2748:	0f 84 7a 03 00 00    	je     2ac8 <subdir+0x768>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    274e:	83 ec 08             	sub    $0x8,%esp
    2751:	68 4a 52 00 00       	push   $0x524a
    2756:	68 e9 51 00 00       	push   $0x51e9
    275b:	e8 c2 1e 00 00       	call   4622 <link>
    2760:	83 c4 10             	add    $0x10,%esp
    2763:	85 c0                	test   %eax,%eax
    2765:	0f 84 35 03 00 00    	je     2aa0 <subdir+0x740>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    276b:	83 ec 0c             	sub    $0xc,%esp
    276e:	68 fe 52 00 00       	push   $0x52fe
    2773:	e8 b2 1e 00 00       	call   462a <mkdir>
    2778:	83 c4 10             	add    $0x10,%esp
    277b:	85 c0                	test   %eax,%eax
    277d:	0f 84 f5 02 00 00    	je     2a78 <subdir+0x718>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    2783:	83 ec 0c             	sub    $0xc,%esp
    2786:	68 23 53 00 00       	push   $0x5323
    278b:	e8 9a 1e 00 00       	call   462a <mkdir>
    2790:	83 c4 10             	add    $0x10,%esp
    2793:	85 c0                	test   %eax,%eax
    2795:	0f 84 b5 02 00 00    	je     2a50 <subdir+0x6f0>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    279b:	83 ec 0c             	sub    $0xc,%esp
    279e:	68 4a 52 00 00       	push   $0x524a
    27a3:	e8 82 1e 00 00       	call   462a <mkdir>
    27a8:	83 c4 10             	add    $0x10,%esp
    27ab:	85 c0                	test   %eax,%eax
    27ad:	0f 84 75 02 00 00    	je     2a28 <subdir+0x6c8>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    27b3:	83 ec 0c             	sub    $0xc,%esp
    27b6:	68 23 53 00 00       	push   $0x5323
    27bb:	e8 52 1e 00 00       	call   4612 <unlink>
    27c0:	83 c4 10             	add    $0x10,%esp
    27c3:	85 c0                	test   %eax,%eax
    27c5:	0f 84 35 02 00 00    	je     2a00 <subdir+0x6a0>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    27cb:	83 ec 0c             	sub    $0xc,%esp
    27ce:	68 fe 52 00 00       	push   $0x52fe
    27d3:	e8 3a 1e 00 00       	call   4612 <unlink>
    27d8:	83 c4 10             	add    $0x10,%esp
    27db:	85 c0                	test   %eax,%eax
    27dd:	0f 84 f5 01 00 00    	je     29d8 <subdir+0x678>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    27e3:	83 ec 0c             	sub    $0xc,%esp
    27e6:	68 e9 51 00 00       	push   $0x51e9
    27eb:	e8 42 1e 00 00       	call   4632 <chdir>
    27f0:	83 c4 10             	add    $0x10,%esp
    27f3:	85 c0                	test   %eax,%eax
    27f5:	0f 84 b5 01 00 00    	je     29b0 <subdir+0x650>
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    27fb:	83 ec 0c             	sub    $0xc,%esp
    27fe:	68 95 53 00 00       	push   $0x5395
    2803:	e8 2a 1e 00 00       	call   4632 <chdir>
    2808:	83 c4 10             	add    $0x10,%esp
    280b:	85 c0                	test   %eax,%eax
    280d:	0f 84 75 01 00 00    	je     2988 <subdir+0x628>
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    2813:	83 ec 0c             	sub    $0xc,%esp
    2816:	68 4a 52 00 00       	push   $0x524a
    281b:	e8 f2 1d 00 00       	call   4612 <unlink>
    2820:	83 c4 10             	add    $0x10,%esp
    2823:	85 c0                	test   %eax,%eax
    2825:	0f 85 35 01 00 00    	jne    2960 <subdir+0x600>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    282b:	83 ec 0c             	sub    $0xc,%esp
    282e:	68 e9 51 00 00       	push   $0x51e9
    2833:	e8 da 1d 00 00       	call   4612 <unlink>
    2838:	83 c4 10             	add    $0x10,%esp
    283b:	85 c0                	test   %eax,%eax
    283d:	0f 85 f5 00 00 00    	jne    2938 <subdir+0x5d8>
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    2843:	83 ec 0c             	sub    $0xc,%esp
    2846:	68 b0 52 00 00       	push   $0x52b0
    284b:	e8 c2 1d 00 00       	call   4612 <unlink>
    2850:	83 c4 10             	add    $0x10,%esp
    2853:	85 c0                	test   %eax,%eax
    2855:	0f 84 b5 00 00 00    	je     2910 <subdir+0x5b0>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    285b:	83 ec 0c             	sub    $0xc,%esp
    285e:	68 c5 51 00 00       	push   $0x51c5
    2863:	e8 aa 1d 00 00       	call   4612 <unlink>
    2868:	83 c4 10             	add    $0x10,%esp
    286b:	85 c0                	test   %eax,%eax
    286d:	0f 88 5d 04 00 00    	js     2cd0 <subdir+0x970>
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    2873:	83 ec 0c             	sub    $0xc,%esp
    2876:	68 b0 52 00 00       	push   $0x52b0
    287b:	e8 92 1d 00 00       	call   4612 <unlink>
    2880:	83 c4 10             	add    $0x10,%esp
    2883:	85 c0                	test   %eax,%eax
    2885:	0f 88 7d 03 00 00    	js     2c08 <subdir+0x8a8>
    printf(1, "unlink dd failed\n");
    exit(0);
  }

  printf(1, "subdir ok\n");
    288b:	83 ec 08             	sub    $0x8,%esp
    288e:	68 92 54 00 00       	push   $0x5492
    2893:	6a 01                	push   $0x1
    2895:	e8 86 1e 00 00       	call   4720 <printf>
}
    289a:	83 c4 10             	add    $0x10,%esp
    289d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    28a0:	c9                   	leave  
    28a1:	c3                   	ret    
    28a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    28a8:	80 3d e0 92 00 00 66 	cmpb   $0x66,0x92e0
    28af:	0f 85 d2 fb ff ff    	jne    2487 <subdir+0x127>
    28b5:	e9 eb fb ff ff       	jmp    24a5 <subdir+0x145>
    28ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    28c0:	83 ec 08             	sub    $0x8,%esp
    28c3:	68 cb 51 00 00       	push   $0x51cb
    28c8:	6a 01                	push   $0x1
    28ca:	e8 51 1e 00 00       	call   4720 <printf>
    exit(0);
    28cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28d6:	e8 e7 1c 00 00       	call   45c2 <exit>
    28db:	83 c4 10             	add    $0x10,%esp
    28de:	e9 33 fb ff ff       	jmp    2416 <subdir+0xb6>
    28e3:	90                   	nop
    28e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    28e8:	83 ec 08             	sub    $0x8,%esp
    28eb:	68 97 51 00 00       	push   $0x5197
    28f0:	6a 01                	push   $0x1
    28f2:	e8 29 1e 00 00       	call   4720 <printf>
    exit(0);
    28f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28fe:	e8 bf 1c 00 00       	call   45c2 <exit>
    2903:	83 c4 10             	add    $0x10,%esp
    2906:	e9 8b fa ff ff       	jmp    2396 <subdir+0x36>
    290b:	90                   	nop
    290c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    2910:	83 ec 08             	sub    $0x8,%esp
    2913:	68 80 5d 00 00       	push   $0x5d80
    2918:	6a 01                	push   $0x1
    291a:	e8 01 1e 00 00       	call   4720 <printf>
    exit(0);
    291f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2926:	e8 97 1c 00 00       	call   45c2 <exit>
    292b:	83 c4 10             	add    $0x10,%esp
    292e:	e9 28 ff ff ff       	jmp    285b <subdir+0x4fb>
    2933:	90                   	nop
    2934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    2938:	83 ec 08             	sub    $0x8,%esp
    293b:	68 56 54 00 00       	push   $0x5456
    2940:	6a 01                	push   $0x1
    2942:	e8 d9 1d 00 00       	call   4720 <printf>
    exit(0);
    2947:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    294e:	e8 6f 1c 00 00       	call   45c2 <exit>
    2953:	83 c4 10             	add    $0x10,%esp
    2956:	e9 e8 fe ff ff       	jmp    2843 <subdir+0x4e3>
    295b:	90                   	nop
    295c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    2960:	83 ec 08             	sub    $0x8,%esp
    2963:	68 55 52 00 00       	push   $0x5255
    2968:	6a 01                	push   $0x1
    296a:	e8 b1 1d 00 00       	call   4720 <printf>
    exit(0);
    296f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2976:	e8 47 1c 00 00       	call   45c2 <exit>
    297b:	83 c4 10             	add    $0x10,%esp
    297e:	e9 a8 fe ff ff       	jmp    282b <subdir+0x4cb>
    2983:	90                   	nop
    2984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    2988:	83 ec 08             	sub    $0x8,%esp
    298b:	68 3e 54 00 00       	push   $0x543e
    2990:	6a 01                	push   $0x1
    2992:	e8 89 1d 00 00       	call   4720 <printf>
    exit(0);
    2997:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    299e:	e8 1f 1c 00 00       	call   45c2 <exit>
    29a3:	83 c4 10             	add    $0x10,%esp
    29a6:	e9 68 fe ff ff       	jmp    2813 <subdir+0x4b3>
    29ab:	90                   	nop
    29ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    29b0:	83 ec 08             	sub    $0x8,%esp
    29b3:	68 26 54 00 00       	push   $0x5426
    29b8:	6a 01                	push   $0x1
    29ba:	e8 61 1d 00 00       	call   4720 <printf>
    exit(0);
    29bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29c6:	e8 f7 1b 00 00       	call   45c2 <exit>
    29cb:	83 c4 10             	add    $0x10,%esp
    29ce:	e9 28 fe ff ff       	jmp    27fb <subdir+0x49b>
    29d3:	90                   	nop
    29d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    29d8:	83 ec 08             	sub    $0x8,%esp
    29db:	68 0a 54 00 00       	push   $0x540a
    29e0:	6a 01                	push   $0x1
    29e2:	e8 39 1d 00 00       	call   4720 <printf>
    exit(0);
    29e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ee:	e8 cf 1b 00 00       	call   45c2 <exit>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	e9 e8 fd ff ff       	jmp    27e3 <subdir+0x483>
    29fb:	90                   	nop
    29fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2a00:	83 ec 08             	sub    $0x8,%esp
    2a03:	68 ee 53 00 00       	push   $0x53ee
    2a08:	6a 01                	push   $0x1
    2a0a:	e8 11 1d 00 00       	call   4720 <printf>
    exit(0);
    2a0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a16:	e8 a7 1b 00 00       	call   45c2 <exit>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	e9 a8 fd ff ff       	jmp    27cb <subdir+0x46b>
    2a23:	90                   	nop
    2a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2a28:	83 ec 08             	sub    $0x8,%esp
    2a2b:	68 d1 53 00 00       	push   $0x53d1
    2a30:	6a 01                	push   $0x1
    2a32:	e8 e9 1c 00 00       	call   4720 <printf>
    exit(0);
    2a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a3e:	e8 7f 1b 00 00       	call   45c2 <exit>
    2a43:	83 c4 10             	add    $0x10,%esp
    2a46:	e9 68 fd ff ff       	jmp    27b3 <subdir+0x453>
    2a4b:	90                   	nop
    2a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2a50:	83 ec 08             	sub    $0x8,%esp
    2a53:	68 b6 53 00 00       	push   $0x53b6
    2a58:	6a 01                	push   $0x1
    2a5a:	e8 c1 1c 00 00       	call   4720 <printf>
    exit(0);
    2a5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a66:	e8 57 1b 00 00       	call   45c2 <exit>
    2a6b:	83 c4 10             	add    $0x10,%esp
    2a6e:	e9 28 fd ff ff       	jmp    279b <subdir+0x43b>
    2a73:	90                   	nop
    2a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2a78:	83 ec 08             	sub    $0x8,%esp
    2a7b:	68 9b 53 00 00       	push   $0x539b
    2a80:	6a 01                	push   $0x1
    2a82:	e8 99 1c 00 00       	call   4720 <printf>
    exit(0);
    2a87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a8e:	e8 2f 1b 00 00       	call   45c2 <exit>
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	e9 e8 fc ff ff       	jmp    2783 <subdir+0x423>
    2a9b:	90                   	nop
    2a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2aa0:	83 ec 08             	sub    $0x8,%esp
    2aa3:	68 5c 5d 00 00       	push   $0x5d5c
    2aa8:	6a 01                	push   $0x1
    2aaa:	e8 71 1c 00 00       	call   4720 <printf>
    exit(0);
    2aaf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ab6:	e8 07 1b 00 00       	call   45c2 <exit>
    2abb:	83 c4 10             	add    $0x10,%esp
    2abe:	e9 a8 fc ff ff       	jmp    276b <subdir+0x40b>
    2ac3:	90                   	nop
    2ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2ac8:	83 ec 08             	sub    $0x8,%esp
    2acb:	68 38 5d 00 00       	push   $0x5d38
    2ad0:	6a 01                	push   $0x1
    2ad2:	e8 49 1c 00 00       	call   4720 <printf>
    exit(0);
    2ad7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ade:	e8 df 1a 00 00       	call   45c2 <exit>
    2ae3:	83 c4 10             	add    $0x10,%esp
    2ae6:	e9 63 fc ff ff       	jmp    274e <subdir+0x3ee>
    2aeb:	90                   	nop
    2aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2af0:	83 ec 08             	sub    $0x8,%esp
    2af3:	68 14 5d 00 00       	push   $0x5d14
    2af8:	6a 01                	push   $0x1
    2afa:	e8 21 1c 00 00       	call   4720 <printf>
    exit(0);
    2aff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b06:	e8 b7 1a 00 00       	call   45c2 <exit>
    2b0b:	83 c4 10             	add    $0x10,%esp
    2b0e:	e9 1e fc ff ff       	jmp    2731 <subdir+0x3d1>
    2b13:	90                   	nop
    2b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    2b18:	83 ec 08             	sub    $0x8,%esp
    2b1b:	68 b8 52 00 00       	push   $0x52b8
    2b20:	6a 01                	push   $0x1
    2b22:	e8 f9 1b 00 00       	call   4720 <printf>
    exit(0);
    2b27:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b2e:	e8 8f 1a 00 00       	call   45c2 <exit>
    2b33:	83 c4 10             	add    $0x10,%esp
    2b36:	e9 3b fa ff ff       	jmp    2576 <subdir+0x216>
    2b3b:	90                   	nop
    2b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2b40:	83 ec 08             	sub    $0x8,%esp
    2b43:	68 8a 52 00 00       	push   $0x528a
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 d1 1b 00 00       	call   4720 <printf>
    exit(0);
    2b4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b56:	e8 67 1a 00 00       	call   45c2 <exit>
    2b5b:	83 c4 10             	add    $0x10,%esp
    2b5e:	e9 fb f9 ff ff       	jmp    255e <subdir+0x1fe>
    2b63:	90                   	nop
    2b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2b68:	83 ec 08             	sub    $0x8,%esp
    2b6b:	68 8a 52 00 00       	push   $0x528a
    2b70:	6a 01                	push   $0x1
    2b72:	e8 a9 1b 00 00       	call   4720 <printf>
    exit(0);
    2b77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b7e:	e8 3f 1a 00 00       	call   45c2 <exit>
    2b83:	83 c4 10             	add    $0x10,%esp
    2b86:	e9 bb f9 ff ff       	jmp    2546 <subdir+0x1e6>
    2b8b:	90                   	nop
    2b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    2b90:	83 ec 08             	sub    $0x8,%esp
    2b93:	68 6d 52 00 00       	push   $0x526d
    2b98:	6a 01                	push   $0x1
    2b9a:	e8 81 1b 00 00       	call   4720 <printf>
    exit(0);
    2b9f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba6:	e8 17 1a 00 00       	call   45c2 <exit>
    2bab:	83 c4 10             	add    $0x10,%esp
    2bae:	e9 7b f9 ff ff       	jmp    252e <subdir+0x1ce>
    2bb3:	90                   	nop
    2bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    2bb8:	83 ec 08             	sub    $0x8,%esp
    2bbb:	68 55 52 00 00       	push   $0x5255
    2bc0:	6a 01                	push   $0x1
    2bc2:	e8 59 1b 00 00       	call   4720 <printf>
    exit(0);
    2bc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bce:	e8 ef 19 00 00       	call   45c2 <exit>
    2bd3:	83 c4 10             	add    $0x10,%esp
    2bd6:	e9 07 f9 ff ff       	jmp    24e2 <subdir+0x182>
    2bdb:	90                   	nop
    2bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2be0:	83 ec 08             	sub    $0x8,%esp
    2be3:	68 a4 5c 00 00       	push   $0x5ca4
    2be8:	6a 01                	push   $0x1
    2bea:	e8 31 1b 00 00       	call   4720 <printf>
    exit(0);
    2bef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf6:	e8 c7 19 00 00       	call   45c2 <exit>
    2bfb:	83 c4 10             	add    $0x10,%esp
    2bfe:	e9 c7 f8 ff ff       	jmp    24ca <subdir+0x16a>
    2c03:	90                   	nop
    2c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    2c08:	83 ec 08             	sub    $0x8,%esp
    2c0b:	68 80 54 00 00       	push   $0x5480
    2c10:	6a 01                	push   $0x1
    2c12:	e8 09 1b 00 00       	call   4720 <printf>
    exit(0);
    2c17:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c1e:	e8 9f 19 00 00       	call   45c2 <exit>
    2c23:	83 c4 10             	add    $0x10,%esp
    2c26:	e9 60 fc ff ff       	jmp    288b <subdir+0x52b>
    2c2b:	90                   	nop
    2c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    2c30:	83 ec 08             	sub    $0x8,%esp
    2c33:	68 ef 51 00 00       	push   $0x51ef
    2c38:	6a 01                	push   $0x1
    2c3a:	e8 e1 1a 00 00       	call   4720 <printf>
    exit(0);
    2c3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c46:	e8 77 19 00 00       	call   45c2 <exit>
    2c4b:	83 c4 10             	add    $0x10,%esp
    2c4e:	e9 e2 f7 ff ff       	jmp    2435 <subdir+0xd5>
    2c53:	90                   	nop
    2c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    2c58:	83 ec 08             	sub    $0x8,%esp
    2c5b:	68 16 52 00 00       	push   $0x5216
    2c60:	6a 01                	push   $0x1
    2c62:	e8 b9 1a 00 00       	call   4720 <printf>
    exit(0);
    2c67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6e:	e8 4f 19 00 00       	call   45c2 <exit>
    2c73:	83 c4 10             	add    $0x10,%esp
    2c76:	e9 ed f7 ff ff       	jmp    2468 <subdir+0x108>
    2c7b:	90                   	nop
    2c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    2c80:	83 ec 08             	sub    $0x8,%esp
    2c83:	68 cb 52 00 00       	push   $0x52cb
    2c88:	6a 01                	push   $0x1
    2c8a:	e8 91 1a 00 00       	call   4720 <printf>
    exit(0);
    2c8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c96:	e8 27 19 00 00       	call   45c2 <exit>
    2c9b:	83 c4 10             	add    $0x10,%esp
    2c9e:	e9 ef f8 ff ff       	jmp    2592 <subdir+0x232>
    2ca3:	90                   	nop
    2ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    2ca8:	83 ec 08             	sub    $0x8,%esp
    2cab:	68 af 51 00 00       	push   $0x51af
    2cb0:	6a 01                	push   $0x1
    2cb2:	e8 69 1a 00 00       	call   4720 <printf>
    exit(0);
    2cb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cbe:	e8 ff 18 00 00       	call   45c2 <exit>
    2cc3:	83 c4 10             	add    $0x10,%esp
    2cc6:	e9 ea f6 ff ff       	jmp    23b5 <subdir+0x55>
    2ccb:	90                   	nop
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    2cd0:	83 ec 08             	sub    $0x8,%esp
    2cd3:	68 6b 54 00 00       	push   $0x546b
    2cd8:	6a 01                	push   $0x1
    2cda:	e8 41 1a 00 00       	call   4720 <printf>
    exit(0);
    2cdf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ce6:	e8 d7 18 00 00       	call   45c2 <exit>
    2ceb:	83 c4 10             	add    $0x10,%esp
    2cee:	e9 80 fb ff ff       	jmp    2873 <subdir+0x513>
    2cf3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002d00 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2d00:	55                   	push   %ebp
    2d01:	89 e5                	mov    %esp,%ebp
    2d03:	57                   	push   %edi
    2d04:	56                   	push   %esi
    2d05:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d06:	bb f3 01 00 00       	mov    $0x1f3,%ebx
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2d0b:	83 ec 14             	sub    $0x14,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");
    2d0e:	68 9d 54 00 00       	push   $0x549d
    2d13:	6a 01                	push   $0x1
    2d15:	e8 06 1a 00 00       	call   4720 <printf>

  unlink("bigwrite");
    2d1a:	c7 04 24 ac 54 00 00 	movl   $0x54ac,(%esp)
    2d21:	e8 ec 18 00 00       	call   4612 <unlink>
    2d26:	83 c4 10             	add    $0x10,%esp
    2d29:	eb 68                	jmp    2d93 <bigwrite+0x93>
    2d2b:	90                   	nop
    2d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    2d30:	be 02 00 00 00       	mov    $0x2,%esi
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    2d35:	83 ec 04             	sub    $0x4,%esp
    2d38:	53                   	push   %ebx
    2d39:	68 e0 92 00 00       	push   $0x92e0
    2d3e:	57                   	push   %edi
    2d3f:	e8 9e 18 00 00       	call   45e2 <write>
      if(cc != sz){
    2d44:	83 c4 10             	add    $0x10,%esp
    2d47:	39 d8                	cmp    %ebx,%eax
    2d49:	74 1d                	je     2d68 <bigwrite+0x68>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2d4b:	50                   	push   %eax
    2d4c:	53                   	push   %ebx
    2d4d:	68 cd 54 00 00       	push   $0x54cd
    2d52:	6a 01                	push   $0x1
    2d54:	e8 c7 19 00 00       	call   4720 <printf>
        exit(0);
    2d59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d60:	e8 5d 18 00 00       	call   45c2 <exit>
    2d65:	83 c4 10             	add    $0x10,%esp
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
    2d68:	83 ee 01             	sub    $0x1,%esi
    2d6b:	75 c8                	jne    2d35 <bigwrite+0x35>
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    2d6d:	83 ec 0c             	sub    $0xc,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d70:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    2d76:	57                   	push   %edi
    2d77:	e8 6e 18 00 00       	call   45ea <close>
    unlink("bigwrite");
    2d7c:	c7 04 24 ac 54 00 00 	movl   $0x54ac,(%esp)
    2d83:	e8 8a 18 00 00       	call   4612 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d88:	83 c4 10             	add    $0x10,%esp
    2d8b:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2d91:	74 45                	je     2dd8 <bigwrite+0xd8>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2d93:	83 ec 08             	sub    $0x8,%esp
    2d96:	68 02 02 00 00       	push   $0x202
    2d9b:	68 ac 54 00 00       	push   $0x54ac
    2da0:	e8 5d 18 00 00       	call   4602 <open>
    if(fd < 0){
    2da5:	83 c4 10             	add    $0x10,%esp
    2da8:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2daa:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    2dac:	79 82                	jns    2d30 <bigwrite+0x30>
      printf(1, "cannot create bigwrite\n");
    2dae:	83 ec 08             	sub    $0x8,%esp
    2db1:	68 b5 54 00 00       	push   $0x54b5
    2db6:	6a 01                	push   $0x1
    2db8:	e8 63 19 00 00       	call   4720 <printf>
      exit(0);
    2dbd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dc4:	e8 f9 17 00 00       	call   45c2 <exit>
    2dc9:	83 c4 10             	add    $0x10,%esp
    2dcc:	e9 5f ff ff ff       	jmp    2d30 <bigwrite+0x30>
    2dd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    2dd8:	83 ec 08             	sub    $0x8,%esp
    2ddb:	68 df 54 00 00       	push   $0x54df
    2de0:	6a 01                	push   $0x1
    2de2:	e8 39 19 00 00       	call   4720 <printf>
}
    2de7:	83 c4 10             	add    $0x10,%esp
    2dea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2ded:	5b                   	pop    %ebx
    2dee:	5e                   	pop    %esi
    2def:	5f                   	pop    %edi
    2df0:	5d                   	pop    %ebp
    2df1:	c3                   	ret    
    2df2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002e00 <bigfile>:

void
bigfile(void)
{
    2e00:	55                   	push   %ebp
    2e01:	89 e5                	mov    %esp,%ebp
    2e03:	57                   	push   %edi
    2e04:	56                   	push   %esi
    2e05:	53                   	push   %ebx
    2e06:	83 ec 24             	sub    $0x24,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    2e09:	68 ec 54 00 00       	push   $0x54ec
    2e0e:	6a 01                	push   $0x1
    2e10:	e8 0b 19 00 00       	call   4720 <printf>

  unlink("bigfile");
    2e15:	c7 04 24 08 55 00 00 	movl   $0x5508,(%esp)
    2e1c:	e8 f1 17 00 00       	call   4612 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e21:	5e                   	pop    %esi
    2e22:	5f                   	pop    %edi
    2e23:	68 02 02 00 00       	push   $0x202
    2e28:	68 08 55 00 00       	push   $0x5508
    2e2d:	e8 d0 17 00 00       	call   4602 <open>
  if(fd < 0){
    2e32:	83 c4 10             	add    $0x10,%esp
    2e35:	85 c0                	test   %eax,%eax
  int fd, i, total, cc;

  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e37:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2e39:	0f 88 9b 01 00 00    	js     2fda <bigfile+0x1da>
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2e3f:	31 db                	xor    %ebx,%ebx
    2e41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    2e48:	83 ec 04             	sub    $0x4,%esp
    2e4b:	68 58 02 00 00       	push   $0x258
    2e50:	53                   	push   %ebx
    2e51:	68 e0 92 00 00       	push   $0x92e0
    2e56:	e8 d5 15 00 00       	call   4430 <memset>
    if(write(fd, buf, 600) != 600){
    2e5b:	83 c4 0c             	add    $0xc,%esp
    2e5e:	68 58 02 00 00       	push   $0x258
    2e63:	68 e0 92 00 00       	push   $0x92e0
    2e68:	56                   	push   %esi
    2e69:	e8 74 17 00 00       	call   45e2 <write>
    2e6e:	83 c4 10             	add    $0x10,%esp
    2e71:	3d 58 02 00 00       	cmp    $0x258,%eax
    2e76:	74 1e                	je     2e96 <bigfile+0x96>
      printf(1, "write bigfile failed\n");
    2e78:	83 ec 08             	sub    $0x8,%esp
    2e7b:	68 10 55 00 00       	push   $0x5510
    2e80:	6a 01                	push   $0x1
    2e82:	e8 99 18 00 00       	call   4720 <printf>
      exit(0);
    2e87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e8e:	e8 2f 17 00 00       	call   45c2 <exit>
    2e93:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    2e96:	83 c3 01             	add    $0x1,%ebx
    2e99:	83 fb 14             	cmp    $0x14,%ebx
    2e9c:	75 aa                	jne    2e48 <bigfile+0x48>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit(0);
    }
  }
  close(fd);
    2e9e:	83 ec 0c             	sub    $0xc,%esp
    2ea1:	56                   	push   %esi
    2ea2:	e8 43 17 00 00       	call   45ea <close>

  fd = open("bigfile", 0);
    2ea7:	59                   	pop    %ecx
    2ea8:	5b                   	pop    %ebx
    2ea9:	6a 00                	push   $0x0
    2eab:	68 08 55 00 00       	push   $0x5508
    2eb0:	e8 4d 17 00 00       	call   4602 <open>
  if(fd < 0){
    2eb5:	83 c4 10             	add    $0x10,%esp
    2eb8:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    2eba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(fd < 0){
    2ebd:	0f 88 3a 01 00 00    	js     2ffd <bigfile+0x1fd>
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2ec3:	31 f6                	xor    %esi,%esi
    2ec5:	31 db                	xor    %ebx,%ebx
    2ec7:	eb 44                	jmp    2f0d <bigfile+0x10d>
    2ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    2ed0:	0f be 15 e0 92 00 00 	movsbl 0x92e0,%edx
    2ed7:	89 d9                	mov    %ebx,%ecx
    2ed9:	d1 f9                	sar    %ecx
    2edb:	39 ca                	cmp    %ecx,%edx
    2edd:	75 0b                	jne    2eea <bigfile+0xea>
    2edf:	0f be 0d 0b 94 00 00 	movsbl 0x940b,%ecx
    2ee6:	39 ca                	cmp    %ecx,%edx
    2ee8:	74 1e                	je     2f08 <bigfile+0x108>
      printf(1, "read bigfile wrong data\n");
    2eea:	83 ec 08             	sub    $0x8,%esp
    2eed:	68 64 55 00 00       	push   $0x5564
    2ef2:	6a 01                	push   $0x1
    2ef4:	e8 27 18 00 00       	call   4720 <printf>
      exit(0);
    2ef9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f00:	e8 bd 16 00 00       	call   45c2 <exit>
    2f05:	83 c4 10             	add    $0x10,%esp
    }
    total += cc;
    2f08:	01 fe                	add    %edi,%esi
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    2f0a:	83 c3 01             	add    $0x1,%ebx
    cc = read(fd, buf, 300);
    2f0d:	83 ec 04             	sub    $0x4,%esp
    2f10:	68 2c 01 00 00       	push   $0x12c
    2f15:	68 e0 92 00 00       	push   $0x92e0
    2f1a:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f1d:	e8 b8 16 00 00       	call   45da <read>
    if(cc < 0){
    2f22:	83 c4 10             	add    $0x10,%esp
    2f25:	85 c0                	test   %eax,%eax
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    2f27:	89 c7                	mov    %eax,%edi
    if(cc < 0){
    2f29:	78 35                	js     2f60 <bigfile+0x160>
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
    2f2b:	74 53                	je     2f80 <bigfile+0x180>
      break;
    if(cc != 300){
    2f2d:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2f32:	74 9c                	je     2ed0 <bigfile+0xd0>
      printf(1, "short read bigfile\n");
    2f34:	83 ec 08             	sub    $0x8,%esp
    2f37:	68 50 55 00 00       	push   $0x5550
    2f3c:	6a 01                	push   $0x1
    2f3e:	e8 dd 17 00 00       	call   4720 <printf>
      exit(0);
    2f43:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f4a:	e8 73 16 00 00       	call   45c2 <exit>
    2f4f:	83 c4 10             	add    $0x10,%esp
    2f52:	e9 79 ff ff ff       	jmp    2ed0 <bigfile+0xd0>
    2f57:	89 f6                	mov    %esi,%esi
    2f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    2f60:	83 ec 08             	sub    $0x8,%esp
    2f63:	68 3b 55 00 00       	push   $0x553b
    2f68:	6a 01                	push   $0x1
    2f6a:	e8 b1 17 00 00       	call   4720 <printf>
      exit(0);
    2f6f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f76:	e8 47 16 00 00       	call   45c2 <exit>
    2f7b:	83 c4 10             	add    $0x10,%esp
    2f7e:	eb b4                	jmp    2f34 <bigfile+0x134>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
  }
  close(fd);
    2f80:	83 ec 0c             	sub    $0xc,%esp
    2f83:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f86:	e8 5f 16 00 00       	call   45ea <close>
  if(total != 20*600){
    2f8b:	83 c4 10             	add    $0x10,%esp
    2f8e:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    2f94:	74 1e                	je     2fb4 <bigfile+0x1b4>
    printf(1, "read bigfile wrong total\n");
    2f96:	83 ec 08             	sub    $0x8,%esp
    2f99:	68 7d 55 00 00       	push   $0x557d
    2f9e:	6a 01                	push   $0x1
    2fa0:	e8 7b 17 00 00       	call   4720 <printf>
    exit(0);
    2fa5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fac:	e8 11 16 00 00       	call   45c2 <exit>
    2fb1:	83 c4 10             	add    $0x10,%esp
  }
  unlink("bigfile");
    2fb4:	83 ec 0c             	sub    $0xc,%esp
    2fb7:	68 08 55 00 00       	push   $0x5508
    2fbc:	e8 51 16 00 00       	call   4612 <unlink>

  printf(1, "bigfile test ok\n");
    2fc1:	58                   	pop    %eax
    2fc2:	5a                   	pop    %edx
    2fc3:	68 97 55 00 00       	push   $0x5597
    2fc8:	6a 01                	push   $0x1
    2fca:	e8 51 17 00 00       	call   4720 <printf>
}
    2fcf:	83 c4 10             	add    $0x10,%esp
    2fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fd5:	5b                   	pop    %ebx
    2fd6:	5e                   	pop    %esi
    2fd7:	5f                   	pop    %edi
    2fd8:	5d                   	pop    %ebp
    2fd9:	c3                   	ret    
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    2fda:	83 ec 08             	sub    $0x8,%esp
    2fdd:	68 fa 54 00 00       	push   $0x54fa
    2fe2:	6a 01                	push   $0x1
    2fe4:	e8 37 17 00 00       	call   4720 <printf>
    exit(0);
    2fe9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ff0:	e8 cd 15 00 00       	call   45c2 <exit>
    2ff5:	83 c4 10             	add    $0x10,%esp
    2ff8:	e9 42 fe ff ff       	jmp    2e3f <bigfile+0x3f>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    2ffd:	83 ec 08             	sub    $0x8,%esp
    3000:	68 26 55 00 00       	push   $0x5526
    3005:	6a 01                	push   $0x1
    3007:	e8 14 17 00 00       	call   4720 <printf>
    exit(0);
    300c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3013:	e8 aa 15 00 00       	call   45c2 <exit>
    3018:	83 c4 10             	add    $0x10,%esp
    301b:	e9 a3 fe ff ff       	jmp    2ec3 <bigfile+0xc3>

00003020 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    3020:	55                   	push   %ebp
    3021:	89 e5                	mov    %esp,%ebp
    3023:	83 ec 20             	sub    $0x20,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    3026:	68 a8 55 00 00       	push   $0x55a8
    302b:	6a 01                	push   $0x1
    302d:	e8 ee 16 00 00       	call   4720 <printf>

  if(mkdir("12345678901234") != 0){
    3032:	c7 04 24 e3 55 00 00 	movl   $0x55e3,(%esp)
    3039:	e8 ec 15 00 00       	call   462a <mkdir>
    303e:	83 c4 10             	add    $0x10,%esp
    3041:	85 c0                	test   %eax,%eax
    3043:	0f 85 0f 01 00 00    	jne    3158 <fourteen+0x138>
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    3049:	83 ec 0c             	sub    $0xc,%esp
    304c:	68 a0 5d 00 00       	push   $0x5da0
    3051:	e8 d4 15 00 00       	call   462a <mkdir>
    3056:	83 c4 10             	add    $0x10,%esp
    3059:	85 c0                	test   %eax,%eax
    305b:	0f 85 cf 00 00 00    	jne    3130 <fourteen+0x110>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    3061:	83 ec 08             	sub    $0x8,%esp
    3064:	68 00 02 00 00       	push   $0x200
    3069:	68 f0 5d 00 00       	push   $0x5df0
    306e:	e8 8f 15 00 00       	call   4602 <open>
  if(fd < 0){
    3073:	83 c4 10             	add    $0x10,%esp
    3076:	85 c0                	test   %eax,%eax
    3078:	0f 88 32 01 00 00    	js     31b0 <fourteen+0x190>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit(0);
  }
  close(fd);
    307e:	83 ec 0c             	sub    $0xc,%esp
    3081:	50                   	push   %eax
    3082:	e8 63 15 00 00       	call   45ea <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    3087:	58                   	pop    %eax
    3088:	5a                   	pop    %edx
    3089:	6a 00                	push   $0x0
    308b:	68 60 5e 00 00       	push   $0x5e60
    3090:	e8 6d 15 00 00       	call   4602 <open>
  if(fd < 0){
    3095:	83 c4 10             	add    $0x10,%esp
    3098:	85 c0                	test   %eax,%eax
    309a:	0f 88 e0 00 00 00    	js     3180 <fourteen+0x160>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit(0);
  }
  close(fd);
    30a0:	83 ec 0c             	sub    $0xc,%esp
    30a3:	50                   	push   %eax
    30a4:	e8 41 15 00 00       	call   45ea <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    30a9:	c7 04 24 d4 55 00 00 	movl   $0x55d4,(%esp)
    30b0:	e8 75 15 00 00       	call   462a <mkdir>
    30b5:	83 c4 10             	add    $0x10,%esp
    30b8:	85 c0                	test   %eax,%eax
    30ba:	74 4c                	je     3108 <fourteen+0xe8>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    30bc:	83 ec 0c             	sub    $0xc,%esp
    30bf:	68 fc 5e 00 00       	push   $0x5efc
    30c4:	e8 61 15 00 00       	call   462a <mkdir>
    30c9:	83 c4 10             	add    $0x10,%esp
    30cc:	85 c0                	test   %eax,%eax
    30ce:	75 1e                	jne    30ee <fourteen+0xce>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    30d0:	83 ec 08             	sub    $0x8,%esp
    30d3:	68 1c 5f 00 00       	push   $0x5f1c
    30d8:	6a 01                	push   $0x1
    30da:	e8 41 16 00 00       	call   4720 <printf>
    exit(0);
    30df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30e6:	e8 d7 14 00 00       	call   45c2 <exit>
    30eb:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "fourteen ok\n");
    30ee:	83 ec 08             	sub    $0x8,%esp
    30f1:	68 f2 55 00 00       	push   $0x55f2
    30f6:	6a 01                	push   $0x1
    30f8:	e8 23 16 00 00       	call   4720 <printf>
}
    30fd:	83 c4 10             	add    $0x10,%esp
    3100:	c9                   	leave  
    3101:	c3                   	ret    
    3102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit(0);
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3108:	83 ec 08             	sub    $0x8,%esp
    310b:	68 cc 5e 00 00       	push   $0x5ecc
    3110:	6a 01                	push   $0x1
    3112:	e8 09 16 00 00       	call   4720 <printf>
    exit(0);
    3117:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    311e:	e8 9f 14 00 00       	call   45c2 <exit>
    3123:	83 c4 10             	add    $0x10,%esp
    3126:	eb 94                	jmp    30bc <fourteen+0x9c>
    3128:	90                   	nop
    3129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    3130:	83 ec 08             	sub    $0x8,%esp
    3133:	68 c0 5d 00 00       	push   $0x5dc0
    3138:	6a 01                	push   $0x1
    313a:	e8 e1 15 00 00       	call   4720 <printf>
    exit(0);
    313f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3146:	e8 77 14 00 00       	call   45c2 <exit>
    314b:	83 c4 10             	add    $0x10,%esp
    314e:	e9 0e ff ff ff       	jmp    3061 <fourteen+0x41>
    3153:	90                   	nop
    3154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    3158:	83 ec 08             	sub    $0x8,%esp
    315b:	68 b7 55 00 00       	push   $0x55b7
    3160:	6a 01                	push   $0x1
    3162:	e8 b9 15 00 00       	call   4720 <printf>
    exit(0);
    3167:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    316e:	e8 4f 14 00 00       	call   45c2 <exit>
    3173:	83 c4 10             	add    $0x10,%esp
    3176:	e9 ce fe ff ff       	jmp    3049 <fourteen+0x29>
    317b:	90                   	nop
    317c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    3180:	83 ec 08             	sub    $0x8,%esp
    3183:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3186:	68 90 5e 00 00       	push   $0x5e90
    318b:	6a 01                	push   $0x1
    318d:	e8 8e 15 00 00       	call   4720 <printf>
    exit(0);
    3192:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3199:	e8 24 14 00 00       	call   45c2 <exit>
    319e:	83 c4 10             	add    $0x10,%esp
    31a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    31a4:	e9 f7 fe ff ff       	jmp    30a0 <fourteen+0x80>
    31a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    31b0:	83 ec 08             	sub    $0x8,%esp
    31b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    31b6:	68 20 5e 00 00       	push   $0x5e20
    31bb:	6a 01                	push   $0x1
    31bd:	e8 5e 15 00 00       	call   4720 <printf>
    exit(0);
    31c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31c9:	e8 f4 13 00 00       	call   45c2 <exit>
    31ce:	83 c4 10             	add    $0x10,%esp
    31d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    31d4:	e9 a5 fe ff ff       	jmp    307e <fourteen+0x5e>
    31d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000031e0 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    31e0:	55                   	push   %ebp
    31e1:	89 e5                	mov    %esp,%ebp
    31e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    31e6:	68 ff 55 00 00       	push   $0x55ff
    31eb:	6a 01                	push   $0x1
    31ed:	e8 2e 15 00 00       	call   4720 <printf>
  if(mkdir("dots") != 0){
    31f2:	c7 04 24 0b 56 00 00 	movl   $0x560b,(%esp)
    31f9:	e8 2c 14 00 00       	call   462a <mkdir>
    31fe:	83 c4 10             	add    $0x10,%esp
    3201:	85 c0                	test   %eax,%eax
    3203:	0f 85 bf 01 00 00    	jne    33c8 <rmdot+0x1e8>
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    3209:	83 ec 0c             	sub    $0xc,%esp
    320c:	68 0b 56 00 00       	push   $0x560b
    3211:	e8 1c 14 00 00       	call   4632 <chdir>
    3216:	83 c4 10             	add    $0x10,%esp
    3219:	85 c0                	test   %eax,%eax
    321b:	0f 85 7f 01 00 00    	jne    33a0 <rmdot+0x1c0>
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    3221:	83 ec 0c             	sub    $0xc,%esp
    3224:	68 b6 52 00 00       	push   $0x52b6
    3229:	e8 e4 13 00 00       	call   4612 <unlink>
    322e:	83 c4 10             	add    $0x10,%esp
    3231:	85 c0                	test   %eax,%eax
    3233:	0f 84 3f 01 00 00    	je     3378 <rmdot+0x198>
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    3239:	83 ec 0c             	sub    $0xc,%esp
    323c:	68 b5 52 00 00       	push   $0x52b5
    3241:	e8 cc 13 00 00       	call   4612 <unlink>
    3246:	83 c4 10             	add    $0x10,%esp
    3249:	85 c0                	test   %eax,%eax
    324b:	0f 84 ff 00 00 00    	je     3350 <rmdot+0x170>
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    3251:	83 ec 0c             	sub    $0xc,%esp
    3254:	68 89 4a 00 00       	push   $0x4a89
    3259:	e8 d4 13 00 00       	call   4632 <chdir>
    325e:	83 c4 10             	add    $0x10,%esp
    3261:	85 c0                	test   %eax,%eax
    3263:	0f 85 bf 00 00 00    	jne    3328 <rmdot+0x148>
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    3269:	83 ec 0c             	sub    $0xc,%esp
    326c:	68 53 56 00 00       	push   $0x5653
    3271:	e8 9c 13 00 00       	call   4612 <unlink>
    3276:	83 c4 10             	add    $0x10,%esp
    3279:	85 c0                	test   %eax,%eax
    327b:	0f 84 7f 00 00 00    	je     3300 <rmdot+0x120>
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    3281:	83 ec 0c             	sub    $0xc,%esp
    3284:	68 71 56 00 00       	push   $0x5671
    3289:	e8 84 13 00 00       	call   4612 <unlink>
    328e:	83 c4 10             	add    $0x10,%esp
    3291:	85 c0                	test   %eax,%eax
    3293:	74 4b                	je     32e0 <rmdot+0x100>
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    3295:	83 ec 0c             	sub    $0xc,%esp
    3298:	68 0b 56 00 00       	push   $0x560b
    329d:	e8 70 13 00 00       	call   4612 <unlink>
    32a2:	83 c4 10             	add    $0x10,%esp
    32a5:	85 c0                	test   %eax,%eax
    32a7:	74 1e                	je     32c7 <rmdot+0xe7>
    printf(1, "unlink dots failed!\n");
    32a9:	83 ec 08             	sub    $0x8,%esp
    32ac:	68 91 56 00 00       	push   $0x5691
    32b1:	6a 01                	push   $0x1
    32b3:	e8 68 14 00 00       	call   4720 <printf>
    exit(0);
    32b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32bf:	e8 fe 12 00 00       	call   45c2 <exit>
    32c4:	83 c4 10             	add    $0x10,%esp
  }
  printf(1, "rmdot ok\n");
    32c7:	83 ec 08             	sub    $0x8,%esp
    32ca:	68 a6 56 00 00       	push   $0x56a6
    32cf:	6a 01                	push   $0x1
    32d1:	e8 4a 14 00 00       	call   4720 <printf>
}
    32d6:	83 c4 10             	add    $0x10,%esp
    32d9:	c9                   	leave  
    32da:	c3                   	ret    
    32db:	90                   	nop
    32dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    32e0:	83 ec 08             	sub    $0x8,%esp
    32e3:	68 79 56 00 00       	push   $0x5679
    32e8:	6a 01                	push   $0x1
    32ea:	e8 31 14 00 00       	call   4720 <printf>
    exit(0);
    32ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32f6:	e8 c7 12 00 00       	call   45c2 <exit>
    32fb:	83 c4 10             	add    $0x10,%esp
    32fe:	eb 95                	jmp    3295 <rmdot+0xb5>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    3300:	83 ec 08             	sub    $0x8,%esp
    3303:	68 5a 56 00 00       	push   $0x565a
    3308:	6a 01                	push   $0x1
    330a:	e8 11 14 00 00       	call   4720 <printf>
    exit(0);
    330f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3316:	e8 a7 12 00 00       	call   45c2 <exit>
    331b:	83 c4 10             	add    $0x10,%esp
    331e:	e9 5e ff ff ff       	jmp    3281 <rmdot+0xa1>
    3323:	90                   	nop
    3324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    3328:	83 ec 08             	sub    $0x8,%esp
    332b:	68 8b 4a 00 00       	push   $0x4a8b
    3330:	6a 01                	push   $0x1
    3332:	e8 e9 13 00 00       	call   4720 <printf>
    exit(0);
    3337:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    333e:	e8 7f 12 00 00       	call   45c2 <exit>
    3343:	83 c4 10             	add    $0x10,%esp
    3346:	e9 1e ff ff ff       	jmp    3269 <rmdot+0x89>
    334b:	90                   	nop
    334c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    3350:	83 ec 08             	sub    $0x8,%esp
    3353:	68 44 56 00 00       	push   $0x5644
    3358:	6a 01                	push   $0x1
    335a:	e8 c1 13 00 00       	call   4720 <printf>
    exit(0);
    335f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3366:	e8 57 12 00 00       	call   45c2 <exit>
    336b:	83 c4 10             	add    $0x10,%esp
    336e:	e9 de fe ff ff       	jmp    3251 <rmdot+0x71>
    3373:	90                   	nop
    3374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    3378:	83 ec 08             	sub    $0x8,%esp
    337b:	68 36 56 00 00       	push   $0x5636
    3380:	6a 01                	push   $0x1
    3382:	e8 99 13 00 00       	call   4720 <printf>
    exit(0);
    3387:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    338e:	e8 2f 12 00 00       	call   45c2 <exit>
    3393:	83 c4 10             	add    $0x10,%esp
    3396:	e9 9e fe ff ff       	jmp    3239 <rmdot+0x59>
    339b:	90                   	nop
    339c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    33a0:	83 ec 08             	sub    $0x8,%esp
    33a3:	68 23 56 00 00       	push   $0x5623
    33a8:	6a 01                	push   $0x1
    33aa:	e8 71 13 00 00       	call   4720 <printf>
    exit(0);
    33af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33b6:	e8 07 12 00 00       	call   45c2 <exit>
    33bb:	83 c4 10             	add    $0x10,%esp
    33be:	e9 5e fe ff ff       	jmp    3221 <rmdot+0x41>
    33c3:	90                   	nop
    33c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    33c8:	83 ec 08             	sub    $0x8,%esp
    33cb:	68 10 56 00 00       	push   $0x5610
    33d0:	6a 01                	push   $0x1
    33d2:	e8 49 13 00 00       	call   4720 <printf>
    exit(0);
    33d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33de:	e8 df 11 00 00       	call   45c2 <exit>
    33e3:	83 c4 10             	add    $0x10,%esp
    33e6:	e9 1e fe ff ff       	jmp    3209 <rmdot+0x29>
    33eb:	90                   	nop
    33ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033f0 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    33f0:	55                   	push   %ebp
    33f1:	89 e5                	mov    %esp,%ebp
    33f3:	53                   	push   %ebx
    33f4:	83 ec 1c             	sub    $0x1c,%esp
  int fd;

  printf(1, "dir vs file\n");
    33f7:	68 b0 56 00 00       	push   $0x56b0
    33fc:	6a 01                	push   $0x1
    33fe:	e8 1d 13 00 00       	call   4720 <printf>

  fd = open("dirfile", O_CREATE);
    3403:	59                   	pop    %ecx
    3404:	5b                   	pop    %ebx
    3405:	68 00 02 00 00       	push   $0x200
    340a:	68 bd 56 00 00       	push   $0x56bd
    340f:	e8 ee 11 00 00       	call   4602 <open>
  if(fd < 0){
    3414:	83 c4 10             	add    $0x10,%esp
    3417:	85 c0                	test   %eax,%eax
    3419:	0f 88 59 02 00 00    	js     3678 <dirfile+0x288>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
    341f:	83 ec 0c             	sub    $0xc,%esp
    3422:	50                   	push   %eax
    3423:	e8 c2 11 00 00       	call   45ea <close>
  if(chdir("dirfile") == 0){
    3428:	c7 04 24 bd 56 00 00 	movl   $0x56bd,(%esp)
    342f:	e8 fe 11 00 00       	call   4632 <chdir>
    3434:	83 c4 10             	add    $0x10,%esp
    3437:	85 c0                	test   %eax,%eax
    3439:	0f 84 71 01 00 00    	je     35b0 <dirfile+0x1c0>
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
    343f:	83 ec 08             	sub    $0x8,%esp
    3442:	6a 00                	push   $0x0
    3444:	68 f6 56 00 00       	push   $0x56f6
    3449:	e8 b4 11 00 00       	call   4602 <open>
  if(fd >= 0){
    344e:	83 c4 10             	add    $0x10,%esp
    3451:	85 c0                	test   %eax,%eax
    3453:	78 1e                	js     3473 <dirfile+0x83>
    printf(1, "create dirfile/xx succeeded!\n");
    3455:	83 ec 08             	sub    $0x8,%esp
    3458:	68 01 57 00 00       	push   $0x5701
    345d:	6a 01                	push   $0x1
    345f:	e8 bc 12 00 00       	call   4720 <printf>
    exit(0);
    3464:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    346b:	e8 52 11 00 00       	call   45c2 <exit>
    3470:	83 c4 10             	add    $0x10,%esp
  }
  fd = open("dirfile/xx", O_CREATE);
    3473:	83 ec 08             	sub    $0x8,%esp
    3476:	68 00 02 00 00       	push   $0x200
    347b:	68 f6 56 00 00       	push   $0x56f6
    3480:	e8 7d 11 00 00       	call   4602 <open>
  if(fd >= 0){
    3485:	83 c4 10             	add    $0x10,%esp
    3488:	85 c0                	test   %eax,%eax
    348a:	78 1e                	js     34aa <dirfile+0xba>
    printf(1, "create dirfile/xx succeeded!\n");
    348c:	83 ec 08             	sub    $0x8,%esp
    348f:	68 01 57 00 00       	push   $0x5701
    3494:	6a 01                	push   $0x1
    3496:	e8 85 12 00 00       	call   4720 <printf>
    exit(0);
    349b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34a2:	e8 1b 11 00 00       	call   45c2 <exit>
    34a7:	83 c4 10             	add    $0x10,%esp
  }
  if(mkdir("dirfile/xx") == 0){
    34aa:	83 ec 0c             	sub    $0xc,%esp
    34ad:	68 f6 56 00 00       	push   $0x56f6
    34b2:	e8 73 11 00 00       	call   462a <mkdir>
    34b7:	83 c4 10             	add    $0x10,%esp
    34ba:	85 c0                	test   %eax,%eax
    34bc:	0f 84 8e 01 00 00    	je     3650 <dirfile+0x260>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    34c2:	83 ec 0c             	sub    $0xc,%esp
    34c5:	68 f6 56 00 00       	push   $0x56f6
    34ca:	e8 43 11 00 00       	call   4612 <unlink>
    34cf:	83 c4 10             	add    $0x10,%esp
    34d2:	85 c0                	test   %eax,%eax
    34d4:	0f 84 4e 01 00 00    	je     3628 <dirfile+0x238>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    34da:	83 ec 08             	sub    $0x8,%esp
    34dd:	68 f6 56 00 00       	push   $0x56f6
    34e2:	68 5a 57 00 00       	push   $0x575a
    34e7:	e8 36 11 00 00       	call   4622 <link>
    34ec:	83 c4 10             	add    $0x10,%esp
    34ef:	85 c0                	test   %eax,%eax
    34f1:	0f 84 09 01 00 00    	je     3600 <dirfile+0x210>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    34f7:	83 ec 0c             	sub    $0xc,%esp
    34fa:	68 bd 56 00 00       	push   $0x56bd
    34ff:	e8 0e 11 00 00       	call   4612 <unlink>
    3504:	83 c4 10             	add    $0x10,%esp
    3507:	85 c0                	test   %eax,%eax
    3509:	0f 85 c9 00 00 00    	jne    35d8 <dirfile+0x1e8>
    printf(1, "unlink dirfile failed!\n");
    exit(0);
  }

  fd = open(".", O_RDWR);
    350f:	83 ec 08             	sub    $0x8,%esp
    3512:	6a 02                	push   $0x2
    3514:	68 b6 52 00 00       	push   $0x52b6
    3519:	e8 e4 10 00 00       	call   4602 <open>
  if(fd >= 0){
    351e:	83 c4 10             	add    $0x10,%esp
    3521:	85 c0                	test   %eax,%eax
    3523:	78 1e                	js     3543 <dirfile+0x153>
    printf(1, "open . for writing succeeded!\n");
    3525:	83 ec 08             	sub    $0x8,%esp
    3528:	68 70 5f 00 00       	push   $0x5f70
    352d:	6a 01                	push   $0x1
    352f:	e8 ec 11 00 00       	call   4720 <printf>
    exit(0);
    3534:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    353b:	e8 82 10 00 00       	call   45c2 <exit>
    3540:	83 c4 10             	add    $0x10,%esp
  }
  fd = open(".", 0);
    3543:	83 ec 08             	sub    $0x8,%esp
    3546:	6a 00                	push   $0x0
    3548:	68 b6 52 00 00       	push   $0x52b6
    354d:	e8 b0 10 00 00       	call   4602 <open>
  if(write(fd, "x", 1) > 0){
    3552:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    3555:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3557:	6a 01                	push   $0x1
    3559:	68 99 53 00 00       	push   $0x5399
    355e:	50                   	push   %eax
    355f:	e8 7e 10 00 00       	call   45e2 <write>
    3564:	83 c4 10             	add    $0x10,%esp
    3567:	85 c0                	test   %eax,%eax
    3569:	7e 1e                	jle    3589 <dirfile+0x199>
    printf(1, "write . succeeded!\n");
    356b:	83 ec 08             	sub    $0x8,%esp
    356e:	68 79 57 00 00       	push   $0x5779
    3573:	6a 01                	push   $0x1
    3575:	e8 a6 11 00 00       	call   4720 <printf>
    exit(0);
    357a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3581:	e8 3c 10 00 00       	call   45c2 <exit>
    3586:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    3589:	83 ec 0c             	sub    $0xc,%esp
    358c:	53                   	push   %ebx
    358d:	e8 58 10 00 00       	call   45ea <close>

  printf(1, "dir vs file OK\n");
    3592:	58                   	pop    %eax
    3593:	5a                   	pop    %edx
    3594:	68 8d 57 00 00       	push   $0x578d
    3599:	6a 01                	push   $0x1
    359b:	e8 80 11 00 00       	call   4720 <printf>
}
    35a0:	83 c4 10             	add    $0x10,%esp
    35a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    35a6:	c9                   	leave  
    35a7:	c3                   	ret    
    35a8:	90                   	nop
    35a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    35b0:	83 ec 08             	sub    $0x8,%esp
    35b3:	68 dc 56 00 00       	push   $0x56dc
    35b8:	6a 01                	push   $0x1
    35ba:	e8 61 11 00 00       	call   4720 <printf>
    exit(0);
    35bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35c6:	e8 f7 0f 00 00       	call   45c2 <exit>
    35cb:	83 c4 10             	add    $0x10,%esp
    35ce:	e9 6c fe ff ff       	jmp    343f <dirfile+0x4f>
    35d3:	90                   	nop
    35d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    35d8:	83 ec 08             	sub    $0x8,%esp
    35db:	68 61 57 00 00       	push   $0x5761
    35e0:	6a 01                	push   $0x1
    35e2:	e8 39 11 00 00       	call   4720 <printf>
    exit(0);
    35e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ee:	e8 cf 0f 00 00       	call   45c2 <exit>
    35f3:	83 c4 10             	add    $0x10,%esp
    35f6:	e9 14 ff ff ff       	jmp    350f <dirfile+0x11f>
    35fb:	90                   	nop
    35fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    3600:	83 ec 08             	sub    $0x8,%esp
    3603:	68 50 5f 00 00       	push   $0x5f50
    3608:	6a 01                	push   $0x1
    360a:	e8 11 11 00 00       	call   4720 <printf>
    exit(0);
    360f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3616:	e8 a7 0f 00 00       	call   45c2 <exit>
    361b:	83 c4 10             	add    $0x10,%esp
    361e:	e9 d4 fe ff ff       	jmp    34f7 <dirfile+0x107>
    3623:	90                   	nop
    3624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    3628:	83 ec 08             	sub    $0x8,%esp
    362b:	68 3c 57 00 00       	push   $0x573c
    3630:	6a 01                	push   $0x1
    3632:	e8 e9 10 00 00       	call   4720 <printf>
    exit(0);
    3637:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    363e:	e8 7f 0f 00 00       	call   45c2 <exit>
    3643:	83 c4 10             	add    $0x10,%esp
    3646:	e9 8f fe ff ff       	jmp    34da <dirfile+0xea>
    364b:	90                   	nop
    364c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3650:	83 ec 08             	sub    $0x8,%esp
    3653:	68 1f 57 00 00       	push   $0x571f
    3658:	6a 01                	push   $0x1
    365a:	e8 c1 10 00 00       	call   4720 <printf>
    exit(0);
    365f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3666:	e8 57 0f 00 00       	call   45c2 <exit>
    366b:	83 c4 10             	add    $0x10,%esp
    366e:	e9 4f fe ff ff       	jmp    34c2 <dirfile+0xd2>
    3673:	90                   	nop
    3674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    3678:	83 ec 08             	sub    $0x8,%esp
    367b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    367e:	68 c5 56 00 00       	push   $0x56c5
    3683:	6a 01                	push   $0x1
    3685:	e8 96 10 00 00       	call   4720 <printf>
    exit(0);
    368a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3691:	e8 2c 0f 00 00       	call   45c2 <exit>
    3696:	83 c4 10             	add    $0x10,%esp
    3699:	8b 45 f4             	mov    -0xc(%ebp),%eax
    369c:	e9 7e fd ff ff       	jmp    341f <dirfile+0x2f>
    36a1:	eb 0d                	jmp    36b0 <iref>
    36a3:	90                   	nop
    36a4:	90                   	nop
    36a5:	90                   	nop
    36a6:	90                   	nop
    36a7:	90                   	nop
    36a8:	90                   	nop
    36a9:	90                   	nop
    36aa:	90                   	nop
    36ab:	90                   	nop
    36ac:	90                   	nop
    36ad:	90                   	nop
    36ae:	90                   	nop
    36af:	90                   	nop

000036b0 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    36b4:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    36b9:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(1, "empty file name\n");
    36bc:	68 9d 57 00 00       	push   $0x579d
    36c1:	6a 01                	push   $0x1
    36c3:	e8 58 10 00 00       	call   4720 <printf>
    36c8:	83 c4 10             	add    $0x10,%esp
    36cb:	e9 94 00 00 00       	jmp    3764 <iref+0xb4>
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
      exit(0);
    }
    if(chdir("irefd") != 0){
    36d0:	83 ec 0c             	sub    $0xc,%esp
    36d3:	68 ae 57 00 00       	push   $0x57ae
    36d8:	e8 55 0f 00 00       	call   4632 <chdir>
    36dd:	83 c4 10             	add    $0x10,%esp
    36e0:	85 c0                	test   %eax,%eax
    36e2:	0f 85 b8 00 00 00    	jne    37a0 <iref+0xf0>
      printf(1, "chdir irefd failed\n");
      exit(0);
    }

    mkdir("");
    36e8:	83 ec 0c             	sub    $0xc,%esp
    36eb:	68 63 4e 00 00       	push   $0x4e63
    36f0:	e8 35 0f 00 00       	call   462a <mkdir>
    link("README", "");
    36f5:	59                   	pop    %ecx
    36f6:	58                   	pop    %eax
    36f7:	68 63 4e 00 00       	push   $0x4e63
    36fc:	68 5a 57 00 00       	push   $0x575a
    3701:	e8 1c 0f 00 00       	call   4622 <link>
    fd = open("", O_CREATE);
    3706:	58                   	pop    %eax
    3707:	5a                   	pop    %edx
    3708:	68 00 02 00 00       	push   $0x200
    370d:	68 63 4e 00 00       	push   $0x4e63
    3712:	e8 eb 0e 00 00       	call   4602 <open>
    if(fd >= 0)
    3717:	83 c4 10             	add    $0x10,%esp
    371a:	85 c0                	test   %eax,%eax
    371c:	78 0c                	js     372a <iref+0x7a>
      close(fd);
    371e:	83 ec 0c             	sub    $0xc,%esp
    3721:	50                   	push   %eax
    3722:	e8 c3 0e 00 00       	call   45ea <close>
    3727:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    372a:	83 ec 08             	sub    $0x8,%esp
    372d:	68 00 02 00 00       	push   $0x200
    3732:	68 98 53 00 00       	push   $0x5398
    3737:	e8 c6 0e 00 00       	call   4602 <open>
    if(fd >= 0)
    373c:	83 c4 10             	add    $0x10,%esp
    373f:	85 c0                	test   %eax,%eax
    3741:	78 0c                	js     374f <iref+0x9f>
      close(fd);
    3743:	83 ec 0c             	sub    $0xc,%esp
    3746:	50                   	push   %eax
    3747:	e8 9e 0e 00 00       	call   45ea <close>
    374c:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    374f:	83 ec 0c             	sub    $0xc,%esp
    3752:	68 98 53 00 00       	push   $0x5398
    3757:	e8 b6 0e 00 00       	call   4612 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    375c:	83 c4 10             	add    $0x10,%esp
    375f:	83 eb 01             	sub    $0x1,%ebx
    3762:	74 64                	je     37c8 <iref+0x118>
    if(mkdir("irefd") != 0){
    3764:	83 ec 0c             	sub    $0xc,%esp
    3767:	68 ae 57 00 00       	push   $0x57ae
    376c:	e8 b9 0e 00 00       	call   462a <mkdir>
    3771:	83 c4 10             	add    $0x10,%esp
    3774:	85 c0                	test   %eax,%eax
    3776:	0f 84 54 ff ff ff    	je     36d0 <iref+0x20>
      printf(1, "mkdir irefd failed\n");
    377c:	83 ec 08             	sub    $0x8,%esp
    377f:	68 b4 57 00 00       	push   $0x57b4
    3784:	6a 01                	push   $0x1
    3786:	e8 95 0f 00 00       	call   4720 <printf>
      exit(0);
    378b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3792:	e8 2b 0e 00 00       	call   45c2 <exit>
    3797:	83 c4 10             	add    $0x10,%esp
    379a:	e9 31 ff ff ff       	jmp    36d0 <iref+0x20>
    379f:	90                   	nop
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    37a0:	83 ec 08             	sub    $0x8,%esp
    37a3:	68 c8 57 00 00       	push   $0x57c8
    37a8:	6a 01                	push   $0x1
    37aa:	e8 71 0f 00 00       	call   4720 <printf>
      exit(0);
    37af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37b6:	e8 07 0e 00 00       	call   45c2 <exit>
    37bb:	83 c4 10             	add    $0x10,%esp
    37be:	e9 25 ff ff ff       	jmp    36e8 <iref+0x38>
    37c3:	90                   	nop
    37c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    37c8:	83 ec 0c             	sub    $0xc,%esp
    37cb:	68 89 4a 00 00       	push   $0x4a89
    37d0:	e8 5d 0e 00 00       	call   4632 <chdir>
  printf(1, "empty file name OK\n");
    37d5:	58                   	pop    %eax
    37d6:	5a                   	pop    %edx
    37d7:	68 dc 57 00 00       	push   $0x57dc
    37dc:	6a 01                	push   $0x1
    37de:	e8 3d 0f 00 00       	call   4720 <printf>
}
    37e3:	83 c4 10             	add    $0x10,%esp
    37e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    37e9:	c9                   	leave  
    37ea:	c3                   	ret    
    37eb:	90                   	nop
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037f0 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	53                   	push   %ebx
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    37f4:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    37f6:	83 ec 0c             	sub    $0xc,%esp
  int n, pid;

  printf(1, "fork test\n");
    37f9:	68 f0 57 00 00       	push   $0x57f0
    37fe:	6a 01                	push   $0x1
    3800:	e8 1b 0f 00 00       	call   4720 <printf>
    3805:	83 c4 10             	add    $0x10,%esp
    3808:	eb 11                	jmp    381b <forktest+0x2b>
    380a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(n=0; n<1000; n++){
    3810:	83 c3 01             	add    $0x1,%ebx
    3813:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3819:	74 23                	je     383e <forktest+0x4e>
    pid = fork();
    381b:	e8 9a 0d 00 00       	call   45ba <fork>
    if(pid < 0)
    3820:	85 c0                	test   %eax,%eax
    3822:	78 3c                	js     3860 <forktest+0x70>
      break;
    if(pid == 0)
    3824:	75 ea                	jne    3810 <forktest+0x20>
      exit(0);
    3826:	83 ec 0c             	sub    $0xc,%esp
{
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3829:	83 c3 01             	add    $0x1,%ebx
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
      exit(0);
    382c:	6a 00                	push   $0x0
    382e:	e8 8f 0d 00 00       	call   45c2 <exit>
    3833:	83 c4 10             	add    $0x10,%esp
{
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3836:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    383c:	75 dd                	jne    381b <forktest+0x2b>
    if(pid == 0)
      exit(0);
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    383e:	83 ec 08             	sub    $0x8,%esp
    3841:	68 90 5f 00 00       	push   $0x5f90
    3846:	6a 01                	push   $0x1
    3848:	e8 d3 0e 00 00       	call   4720 <printf>
    exit(0);
    384d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3854:	e8 69 0d 00 00       	call   45c2 <exit>
    3859:	83 c4 10             	add    $0x10,%esp
    385c:	eb 17                	jmp    3875 <forktest+0x85>
    385e:	66 90                	xchg   %ax,%ax
  }

  for(; n > 0; n--){
    3860:	85 db                	test   %ebx,%ebx
    3862:	75 11                	jne    3875 <forktest+0x85>
    3864:	eb 4a                	jmp    38b0 <forktest+0xc0>
    3866:	8d 76 00             	lea    0x0(%esi),%esi
    3869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3870:	83 eb 01             	sub    $0x1,%ebx
    3873:	74 3b                	je     38b0 <forktest+0xc0>
    if(wait(0) < 0){
    3875:	83 ec 0c             	sub    $0xc,%esp
    3878:	6a 00                	push   $0x0
    387a:	e8 4b 0d 00 00       	call   45ca <wait>
    387f:	83 c4 10             	add    $0x10,%esp
    3882:	85 c0                	test   %eax,%eax
    3884:	79 ea                	jns    3870 <forktest+0x80>
      printf(1, "wait stopped early\n");
    3886:	83 ec 08             	sub    $0x8,%esp
    3889:	68 fb 57 00 00       	push   $0x57fb
    388e:	6a 01                	push   $0x1
    3890:	e8 8b 0e 00 00       	call   4720 <printf>
      exit(0);
    3895:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    389c:	e8 21 0d 00 00       	call   45c2 <exit>
    38a1:	83 c4 10             	add    $0x10,%esp
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    38a4:	83 eb 01             	sub    $0x1,%ebx
    38a7:	75 cc                	jne    3875 <forktest+0x85>
    38a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "wait stopped early\n");
      exit(0);
    }
  }

  if(wait(0) != -1){
    38b0:	83 ec 0c             	sub    $0xc,%esp
    38b3:	6a 00                	push   $0x0
    38b5:	e8 10 0d 00 00       	call   45ca <wait>
    38ba:	83 c4 10             	add    $0x10,%esp
    38bd:	83 f8 ff             	cmp    $0xffffffff,%eax
    38c0:	74 1e                	je     38e0 <forktest+0xf0>
    printf(1, "wait got too many\n");
    38c2:	83 ec 08             	sub    $0x8,%esp
    38c5:	68 0f 58 00 00       	push   $0x580f
    38ca:	6a 01                	push   $0x1
    38cc:	e8 4f 0e 00 00       	call   4720 <printf>
    exit(0);
    38d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38d8:	e8 e5 0c 00 00       	call   45c2 <exit>
    38dd:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "fork test OK\n");
    38e0:	83 ec 08             	sub    $0x8,%esp
    38e3:	68 22 58 00 00       	push   $0x5822
    38e8:	6a 01                	push   $0x1
    38ea:	e8 31 0e 00 00       	call   4720 <printf>
}
    38ef:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    38f2:	c9                   	leave  
    38f3:	c3                   	ret    
    38f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    38fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003900 <sbrktest>:

void
sbrktest(void)
{
    3900:	55                   	push   %ebp
    3901:	89 e5                	mov    %esp,%ebp
    3903:	57                   	push   %edi
    3904:	56                   	push   %esi
    3905:	53                   	push   %ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3906:	31 ff                	xor    %edi,%edi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    3908:	83 ec 64             	sub    $0x64,%esp
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
    390b:	68 30 58 00 00       	push   $0x5830
    3910:	ff 35 00 6b 00 00    	pushl  0x6b00
    3916:	e8 05 0e 00 00       	call   4720 <printf>
  oldbrk = sbrk(0);
    391b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3922:	e8 23 0d 00 00       	call   464a <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    3927:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    392e:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    3931:	e8 14 0d 00 00       	call   464a <sbrk>
    3936:	83 c4 10             	add    $0x10,%esp
    3939:	89 c6                	mov    %eax,%esi
    393b:	90                   	nop
    393c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    3940:	83 ec 0c             	sub    $0xc,%esp
    3943:	6a 01                	push   $0x1
    3945:	e8 00 0d 00 00       	call   464a <sbrk>
    if(b != a){
    394a:	83 c4 10             	add    $0x10,%esp
    394d:	39 f0                	cmp    %esi,%eax

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    394f:	89 c3                	mov    %eax,%ebx
    if(b != a){
    3951:	74 23                	je     3976 <sbrktest+0x76>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3953:	83 ec 0c             	sub    $0xc,%esp
    3956:	50                   	push   %eax
    3957:	56                   	push   %esi
    3958:	57                   	push   %edi
    3959:	68 3b 58 00 00       	push   $0x583b
    395e:	ff 35 00 6b 00 00    	pushl  0x6b00
    3964:	e8 b7 0d 00 00       	call   4720 <printf>
      exit(0);
    3969:	83 c4 14             	add    $0x14,%esp
    396c:	6a 00                	push   $0x0
    396e:	e8 4f 0c 00 00       	call   45c2 <exit>
    3973:	83 c4 10             	add    $0x10,%esp
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3976:	83 c7 01             	add    $0x1,%edi
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit(0);
    }
    *b = 1;
    3979:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    397c:	8d 73 01             	lea    0x1(%ebx),%esi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    397f:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3985:	75 b9                	jne    3940 <sbrktest+0x40>
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    3987:	e8 2e 0c 00 00       	call   45ba <fork>
  if(pid < 0){
    398c:	85 c0                	test   %eax,%eax
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    398e:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    3990:	0f 88 64 03 00 00    	js     3cfa <sbrktest+0x3fa>
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    3996:	83 ec 0c             	sub    $0xc,%esp
  c = sbrk(1);
  if(c != a + 1){
    3999:	83 c3 02             	add    $0x2,%ebx
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    399c:	6a 01                	push   $0x1
    399e:	e8 a7 0c 00 00       	call   464a <sbrk>
  c = sbrk(1);
    39a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39aa:	e8 9b 0c 00 00       	call   464a <sbrk>
  if(c != a + 1){
    39af:	83 c4 10             	add    $0x10,%esp
    39b2:	39 d8                	cmp    %ebx,%eax
    39b4:	74 22                	je     39d8 <sbrktest+0xd8>
    printf(stdout, "sbrk test failed post-fork\n");
    39b6:	83 ec 08             	sub    $0x8,%esp
    39b9:	68 6d 58 00 00       	push   $0x586d
    39be:	ff 35 00 6b 00 00    	pushl  0x6b00
    39c4:	e8 57 0d 00 00       	call   4720 <printf>
    exit(0);
    39c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39d0:	e8 ed 0b 00 00       	call   45c2 <exit>
    39d5:	83 c4 10             	add    $0x10,%esp
  }
  if(pid == 0)
    39d8:	85 ff                	test   %edi,%edi
    39da:	75 0d                	jne    39e9 <sbrktest+0xe9>
    exit(0);
    39dc:	83 ec 0c             	sub    $0xc,%esp
    39df:	6a 00                	push   $0x0
    39e1:	e8 dc 0b 00 00       	call   45c2 <exit>
    39e6:	83 c4 10             	add    $0x10,%esp
  wait(0);
    39e9:	83 ec 0c             	sub    $0xc,%esp
    39ec:	6a 00                	push   $0x0
    39ee:	e8 d7 0b 00 00       	call   45ca <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    39f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39fa:	e8 4b 0c 00 00       	call   464a <sbrk>
    39ff:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    3a01:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3a06:	29 d8                	sub    %ebx,%eax
    3a08:	89 04 24             	mov    %eax,(%esp)
    3a0b:	e8 3a 0c 00 00       	call   464a <sbrk>
  if (p != a) {
    3a10:	83 c4 10             	add    $0x10,%esp
    3a13:	39 c3                	cmp    %eax,%ebx
    3a15:	74 22                	je     3a39 <sbrktest+0x139>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3a17:	83 ec 08             	sub    $0x8,%esp
    3a1a:	68 b4 5f 00 00       	push   $0x5fb4
    3a1f:	ff 35 00 6b 00 00    	pushl  0x6b00
    3a25:	e8 f6 0c 00 00       	call   4720 <printf>
    exit(0);
    3a2a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a31:	e8 8c 0b 00 00       	call   45c2 <exit>
    3a36:	83 c4 10             	add    $0x10,%esp
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    3a39:	83 ec 0c             	sub    $0xc,%esp
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit(0);
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    3a3c:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    3a43:	6a 00                	push   $0x0
    3a45:	e8 00 0c 00 00       	call   464a <sbrk>
  c = sbrk(-4096);
    3a4a:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    3a51:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    3a53:	e8 f2 0b 00 00       	call   464a <sbrk>
  if(c == (char*)0xffffffff){
    3a58:	83 c4 10             	add    $0x10,%esp
    3a5b:	83 f8 ff             	cmp    $0xffffffff,%eax
    3a5e:	0f 84 2b 03 00 00    	je     3d8f <sbrktest+0x48f>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
    3a64:	83 ec 0c             	sub    $0xc,%esp
    3a67:	6a 00                	push   $0x0
    3a69:	e8 dc 0b 00 00       	call   464a <sbrk>
  if(c != a - 4096){
    3a6e:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    3a74:	83 c4 10             	add    $0x10,%esp
    3a77:	39 d0                	cmp    %edx,%eax
    3a79:	74 21                	je     3a9c <sbrktest+0x19c>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3a7b:	50                   	push   %eax
    3a7c:	53                   	push   %ebx
    3a7d:	68 f4 5f 00 00       	push   $0x5ff4
    3a82:	ff 35 00 6b 00 00    	pushl  0x6b00
    3a88:	e8 93 0c 00 00       	call   4720 <printf>
    exit(0);
    3a8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a94:	e8 29 0b 00 00       	call   45c2 <exit>
    3a99:	83 c4 10             	add    $0x10,%esp
  }

  // can one re-allocate that page?
  a = sbrk(0);
    3a9c:	83 ec 0c             	sub    $0xc,%esp
    3a9f:	6a 00                	push   $0x0
    3aa1:	e8 a4 0b 00 00       	call   464a <sbrk>
    3aa6:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    3aa8:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3aaf:	e8 96 0b 00 00       	call   464a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3ab4:	83 c4 10             	add    $0x10,%esp
    3ab7:	39 c3                	cmp    %eax,%ebx
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    3ab9:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3abb:	0f 84 ae 02 00 00    	je     3d6f <sbrktest+0x46f>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3ac1:	57                   	push   %edi
    3ac2:	53                   	push   %ebx
    3ac3:	68 2c 60 00 00       	push   $0x602c
    3ac8:	ff 35 00 6b 00 00    	pushl  0x6b00
    3ace:	e8 4d 0c 00 00       	call   4720 <printf>
    exit(0);
    3ad3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ada:	e8 e3 0a 00 00       	call   45c2 <exit>
    3adf:	83 c4 10             	add    $0x10,%esp
  }
  if(*lastaddr == 99){
    3ae2:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3ae9:	0f 84 59 02 00 00    	je     3d48 <sbrktest+0x448>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3aef:	83 ec 0c             	sub    $0xc,%esp
    3af2:	6a 00                	push   $0x0
    3af4:	e8 51 0b 00 00       	call   464a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3af9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3b00:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3b02:	e8 43 0b 00 00       	call   464a <sbrk>
    3b07:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3b0a:	29 c1                	sub    %eax,%ecx
    3b0c:	89 0c 24             	mov    %ecx,(%esp)
    3b0f:	e8 36 0b 00 00       	call   464a <sbrk>
  if(c != a){
    3b14:	83 c4 10             	add    $0x10,%esp
    3b17:	39 c3                	cmp    %eax,%ebx
    3b19:	74 21                	je     3b3c <sbrktest+0x23c>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3b1b:	50                   	push   %eax
    3b1c:	53                   	push   %ebx
    3b1d:	68 84 60 00 00       	push   $0x6084
    3b22:	ff 35 00 6b 00 00    	pushl  0x6b00
    3b28:	e8 f3 0b 00 00       	call   4720 <printf>
    exit(0);
    3b2d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b34:	e8 89 0a 00 00       	call   45c2 <exit>
    3b39:	83 c4 10             	add    $0x10,%esp
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3b3c:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3b41:	eb 20                	jmp    3b63 <sbrktest+0x263>
    3b43:	90                   	nop
    3b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(0);
    3b48:	83 ec 0c             	sub    $0xc,%esp
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b4b:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(0);
    3b51:	6a 00                	push   $0x0
    3b53:	e8 72 0a 00 00       	call   45ca <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b58:	83 c4 10             	add    $0x10,%esp
    3b5b:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    3b61:	74 64                	je     3bc7 <sbrktest+0x2c7>
    ppid = getpid();
    3b63:	e8 da 0a 00 00       	call   4642 <getpid>
    3b68:	89 c7                	mov    %eax,%edi
    pid = fork();
    3b6a:	e8 4b 0a 00 00       	call   45ba <fork>
    if(pid < 0){
    3b6f:	85 c0                	test   %eax,%eax
    3b71:	78 30                	js     3ba3 <sbrktest+0x2a3>
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
    3b73:	75 d3                	jne    3b48 <sbrktest+0x248>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3b75:	0f be 03             	movsbl (%ebx),%eax
    3b78:	50                   	push   %eax
    3b79:	53                   	push   %ebx
    3b7a:	68 a4 58 00 00       	push   $0x58a4
    3b7f:	ff 35 00 6b 00 00    	pushl  0x6b00
    3b85:	e8 96 0b 00 00       	call   4720 <printf>
      kill(ppid);
    3b8a:	89 3c 24             	mov    %edi,(%esp)
    3b8d:	e8 60 0a 00 00       	call   45f2 <kill>
      exit(0);
    3b92:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b99:	e8 24 0a 00 00       	call   45c2 <exit>
    3b9e:	83 c4 10             	add    $0x10,%esp
    3ba1:	eb a5                	jmp    3b48 <sbrktest+0x248>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    3ba3:	83 ec 08             	sub    $0x8,%esp
    3ba6:	68 81 59 00 00       	push   $0x5981
    3bab:	ff 35 00 6b 00 00    	pushl  0x6b00
    3bb1:	e8 6a 0b 00 00       	call   4720 <printf>
      exit(0);
    3bb6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bbd:	e8 00 0a 00 00       	call   45c2 <exit>
    3bc2:	83 c4 10             	add    $0x10,%esp
    3bc5:	eb 81                	jmp    3b48 <sbrktest+0x248>
    wait(0);
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    3bc7:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3bca:	83 ec 0c             	sub    $0xc,%esp
    3bcd:	50                   	push   %eax
    3bce:	e8 ff 09 00 00       	call   45d2 <pipe>
    3bd3:	83 c4 10             	add    $0x10,%esp
    3bd6:	85 c0                	test   %eax,%eax
    3bd8:	74 1e                	je     3bf8 <sbrktest+0x2f8>
    printf(1, "pipe() failed\n");
    3bda:	83 ec 08             	sub    $0x8,%esp
    3bdd:	68 79 4d 00 00       	push   $0x4d79
    3be2:	6a 01                	push   $0x1
    3be4:	e8 37 0b 00 00       	call   4720 <printf>
    exit(0);
    3be9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bf0:	e8 cd 09 00 00       	call   45c2 <exit>
    3bf5:	83 c4 10             	add    $0x10,%esp
    3bf8:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    3bfb:	8d 7d e8             	lea    -0x18(%ebp),%edi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3bfe:	89 de                	mov    %ebx,%esi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    3c00:	e8 b5 09 00 00       	call   45ba <fork>
    3c05:	85 c0                	test   %eax,%eax
    3c07:	89 06                	mov    %eax,(%esi)
    3c09:	0f 84 a8 00 00 00    	je     3cb7 <sbrktest+0x3b7>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    3c0f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c12:	74 14                	je     3c28 <sbrktest+0x328>
      read(fds[0], &scratch, 1);
    3c14:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3c17:	83 ec 04             	sub    $0x4,%esp
    3c1a:	6a 01                	push   $0x1
    3c1c:	50                   	push   %eax
    3c1d:	ff 75 b8             	pushl  -0x48(%ebp)
    3c20:	e8 b5 09 00 00       	call   45da <read>
    3c25:	83 c4 10             	add    $0x10,%esp
    3c28:	83 c6 04             	add    $0x4,%esi
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c2b:	39 f7                	cmp    %esi,%edi
    3c2d:	75 d1                	jne    3c00 <sbrktest+0x300>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    3c2f:	83 ec 0c             	sub    $0xc,%esp
    3c32:	68 00 10 00 00       	push   $0x1000
    3c37:	e8 0e 0a 00 00       	call   464a <sbrk>
    3c3c:	83 c4 10             	add    $0x10,%esp
    3c3f:	89 c6                	mov    %eax,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    3c41:	8b 03                	mov    (%ebx),%eax
    3c43:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c46:	74 18                	je     3c60 <sbrktest+0x360>
      continue;
    kill(pids[i]);
    3c48:	83 ec 0c             	sub    $0xc,%esp
    3c4b:	50                   	push   %eax
    3c4c:	e8 a1 09 00 00       	call   45f2 <kill>
    wait(0);
    3c51:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c58:	e8 6d 09 00 00       	call   45ca <wait>
    3c5d:	83 c4 10             	add    $0x10,%esp
    3c60:	83 c3 04             	add    $0x4,%ebx
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c63:	39 df                	cmp    %ebx,%edi
    3c65:	75 da                	jne    3c41 <sbrktest+0x341>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    3c67:	83 fe ff             	cmp    $0xffffffff,%esi
    3c6a:	0f 84 b1 00 00 00    	je     3d21 <sbrktest+0x421>
    printf(stdout, "failed sbrk leaked memory\n");
    exit(0);
  }

  if(sbrk(0) > oldbrk)
    3c70:	83 ec 0c             	sub    $0xc,%esp
    3c73:	6a 00                	push   $0x0
    3c75:	e8 d0 09 00 00       	call   464a <sbrk>
    3c7a:	83 c4 10             	add    $0x10,%esp
    3c7d:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3c80:	73 1a                	jae    3c9c <sbrktest+0x39c>
    sbrk(-(sbrk(0) - oldbrk));
    3c82:	83 ec 0c             	sub    $0xc,%esp
    3c85:	6a 00                	push   $0x0
    3c87:	e8 be 09 00 00       	call   464a <sbrk>
    3c8c:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    3c8f:	29 c6                	sub    %eax,%esi
    3c91:	89 34 24             	mov    %esi,(%esp)
    3c94:	e8 b1 09 00 00       	call   464a <sbrk>
    3c99:	83 c4 10             	add    $0x10,%esp

  printf(stdout, "sbrk test OK\n");
    3c9c:	83 ec 08             	sub    $0x8,%esp
    3c9f:	68 d8 58 00 00       	push   $0x58d8
    3ca4:	ff 35 00 6b 00 00    	pushl  0x6b00
    3caa:	e8 71 0a 00 00       	call   4720 <printf>
}
    3caf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cb2:	5b                   	pop    %ebx
    3cb3:	5e                   	pop    %esi
    3cb4:	5f                   	pop    %edi
    3cb5:	5d                   	pop    %ebp
    3cb6:	c3                   	ret    
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    3cb7:	83 ec 0c             	sub    $0xc,%esp
    3cba:	6a 00                	push   $0x0
    3cbc:	e8 89 09 00 00       	call   464a <sbrk>
    3cc1:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3cc6:	29 c2                	sub    %eax,%edx
    3cc8:	89 14 24             	mov    %edx,(%esp)
    3ccb:	e8 7a 09 00 00       	call   464a <sbrk>
      write(fds[1], "x", 1);
    3cd0:	83 c4 0c             	add    $0xc,%esp
    3cd3:	6a 01                	push   $0x1
    3cd5:	68 99 53 00 00       	push   $0x5399
    3cda:	ff 75 bc             	pushl  -0x44(%ebp)
    3cdd:	e8 00 09 00 00       	call   45e2 <write>
    3ce2:	83 c4 10             	add    $0x10,%esp
    3ce5:	8d 76 00             	lea    0x0(%esi),%esi
      // sit around until killed
      for(;;) sleep(1000);
    3ce8:	83 ec 0c             	sub    $0xc,%esp
    3ceb:	68 e8 03 00 00       	push   $0x3e8
    3cf0:	e8 5d 09 00 00       	call   4652 <sleep>
    3cf5:	83 c4 10             	add    $0x10,%esp
    3cf8:	eb ee                	jmp    3ce8 <sbrktest+0x3e8>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    3cfa:	83 ec 08             	sub    $0x8,%esp
    3cfd:	68 56 58 00 00       	push   $0x5856
    3d02:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d08:	e8 13 0a 00 00       	call   4720 <printf>
    exit(0);
    3d0d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d14:	e8 a9 08 00 00       	call   45c2 <exit>
    3d19:	83 c4 10             	add    $0x10,%esp
    3d1c:	e9 75 fc ff ff       	jmp    3996 <sbrktest+0x96>
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    3d21:	83 ec 08             	sub    $0x8,%esp
    3d24:	68 bd 58 00 00       	push   $0x58bd
    3d29:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d2f:	e8 ec 09 00 00       	call   4720 <printf>
    exit(0);
    3d34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d3b:	e8 82 08 00 00       	call   45c2 <exit>
    3d40:	83 c4 10             	add    $0x10,%esp
    3d43:	e9 28 ff ff ff       	jmp    3c70 <sbrktest+0x370>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3d48:	83 ec 08             	sub    $0x8,%esp
    3d4b:	68 54 60 00 00       	push   $0x6054
    3d50:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d56:	e8 c5 09 00 00       	call   4720 <printf>
    exit(0);
    3d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d62:	e8 5b 08 00 00       	call   45c2 <exit>
    3d67:	83 c4 10             	add    $0x10,%esp
    3d6a:	e9 80 fd ff ff       	jmp    3aef <sbrktest+0x1ef>
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    3d6f:	83 ec 0c             	sub    $0xc,%esp
    3d72:	6a 00                	push   $0x0
    3d74:	e8 d1 08 00 00       	call   464a <sbrk>
    3d79:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    3d7f:	83 c4 10             	add    $0x10,%esp
    3d82:	39 d0                	cmp    %edx,%eax
    3d84:	0f 85 37 fd ff ff    	jne    3ac1 <sbrktest+0x1c1>
    3d8a:	e9 53 fd ff ff       	jmp    3ae2 <sbrktest+0x1e2>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    3d8f:	83 ec 08             	sub    $0x8,%esp
    3d92:	68 89 58 00 00       	push   $0x5889
    3d97:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d9d:	e8 7e 09 00 00       	call   4720 <printf>
    exit(0);
    3da2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3da9:	e8 14 08 00 00       	call   45c2 <exit>
    3dae:	83 c4 10             	add    $0x10,%esp
    3db1:	e9 ae fc ff ff       	jmp    3a64 <sbrktest+0x164>
    3db6:	8d 76 00             	lea    0x0(%esi),%esi
    3db9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003dc0 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    3dc0:	55                   	push   %ebp
    3dc1:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    3dc3:	5d                   	pop    %ebp
    3dc4:	c3                   	ret    
    3dc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003dd0 <validatetest>:

void
validatetest(void)
{
    3dd0:	55                   	push   %ebp
    3dd1:	89 e5                	mov    %esp,%ebp
    3dd3:	56                   	push   %esi
    3dd4:	53                   	push   %ebx
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3dd5:	31 db                	xor    %ebx,%ebx
validatetest(void)
{
  int hi, pid;
  uint p;

  printf(stdout, "validate test\n");
    3dd7:	83 ec 08             	sub    $0x8,%esp
    3dda:	68 e6 58 00 00       	push   $0x58e6
    3ddf:	ff 35 00 6b 00 00    	pushl  0x6b00
    3de5:	e8 36 09 00 00       	call   4720 <printf>
    3dea:	83 c4 10             	add    $0x10,%esp
    3ded:	eb 70                	jmp    3e5f <validatetest+0x8f>
    3def:	90                   	nop
    if((pid = fork()) == 0){
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    }
    sleep(0);
    3df0:	83 ec 0c             	sub    $0xc,%esp
    3df3:	6a 00                	push   $0x0
    3df5:	e8 58 08 00 00       	call   4652 <sleep>
    sleep(0);
    3dfa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e01:	e8 4c 08 00 00       	call   4652 <sleep>
    kill(pid);
    3e06:	89 34 24             	mov    %esi,(%esp)
    3e09:	e8 e4 07 00 00       	call   45f2 <kill>
    wait(0);
    3e0e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e15:	e8 b0 07 00 00       	call   45ca <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    3e1a:	58                   	pop    %eax
    3e1b:	5a                   	pop    %edx
    3e1c:	53                   	push   %ebx
    3e1d:	68 f5 58 00 00       	push   $0x58f5
    3e22:	e8 fb 07 00 00       	call   4622 <link>
    3e27:	83 c4 10             	add    $0x10,%esp
    3e2a:	83 f8 ff             	cmp    $0xffffffff,%eax
    3e2d:	74 22                	je     3e51 <validatetest+0x81>
      printf(stdout, "link should not succeed\n");
    3e2f:	83 ec 08             	sub    $0x8,%esp
    3e32:	68 00 59 00 00       	push   $0x5900
    3e37:	ff 35 00 6b 00 00    	pushl  0x6b00
    3e3d:	e8 de 08 00 00       	call   4720 <printf>
      exit(0);
    3e42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e49:	e8 74 07 00 00       	call   45c2 <exit>
    3e4e:	83 c4 10             	add    $0x10,%esp
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3e51:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3e57:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3e5d:	74 21                	je     3e80 <validatetest+0xb0>
    if((pid = fork()) == 0){
    3e5f:	e8 56 07 00 00       	call   45ba <fork>
    3e64:	85 c0                	test   %eax,%eax
    3e66:	89 c6                	mov    %eax,%esi
    3e68:	75 86                	jne    3df0 <validatetest+0x20>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    3e6a:	83 ec 0c             	sub    $0xc,%esp
    3e6d:	6a 00                	push   $0x0
    3e6f:	e8 4e 07 00 00       	call   45c2 <exit>
    3e74:	83 c4 10             	add    $0x10,%esp
    3e77:	e9 74 ff ff ff       	jmp    3df0 <validatetest+0x20>
    3e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "link should not succeed\n");
      exit(0);
    }
  }

  printf(stdout, "validate ok\n");
    3e80:	83 ec 08             	sub    $0x8,%esp
    3e83:	68 19 59 00 00       	push   $0x5919
    3e88:	ff 35 00 6b 00 00    	pushl  0x6b00
    3e8e:	e8 8d 08 00 00       	call   4720 <printf>
}
    3e93:	83 c4 10             	add    $0x10,%esp
    3e96:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3e99:	5b                   	pop    %ebx
    3e9a:	5e                   	pop    %esi
    3e9b:	5d                   	pop    %ebp
    3e9c:	c3                   	ret    
    3e9d:	8d 76 00             	lea    0x0(%esi),%esi

00003ea0 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3ea0:	55                   	push   %ebp
    3ea1:	89 e5                	mov    %esp,%ebp
    3ea3:	53                   	push   %ebx
  int i;

  printf(stdout, "bss test\n");
    3ea4:	31 db                	xor    %ebx,%ebx

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3ea6:	83 ec 0c             	sub    $0xc,%esp
  int i;

  printf(stdout, "bss test\n");
    3ea9:	68 26 59 00 00       	push   $0x5926
    3eae:	ff 35 00 6b 00 00    	pushl  0x6b00
    3eb4:	e8 67 08 00 00       	call   4720 <printf>
    3eb9:	83 c4 10             	add    $0x10,%esp
    3ebc:	eb 0d                	jmp    3ecb <bsstest+0x2b>
    3ebe:	66 90                	xchg   %ax,%ax
  for(i = 0; i < sizeof(uninit); i++){
    3ec0:	83 c3 01             	add    $0x1,%ebx
    3ec3:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3ec9:	74 36                	je     3f01 <bsstest+0x61>
    if(uninit[i] != '\0'){
    3ecb:	80 bb c0 6b 00 00 00 	cmpb   $0x0,0x6bc0(%ebx)
    3ed2:	74 ec                	je     3ec0 <bsstest+0x20>
      printf(stdout, "bss test failed\n");
    3ed4:	83 ec 08             	sub    $0x8,%esp
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3ed7:	83 c3 01             	add    $0x1,%ebx
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    3eda:	68 30 59 00 00       	push   $0x5930
    3edf:	ff 35 00 6b 00 00    	pushl  0x6b00
    3ee5:	e8 36 08 00 00       	call   4720 <printf>
      exit(0);
    3eea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ef1:	e8 cc 06 00 00       	call   45c2 <exit>
    3ef6:	83 c4 10             	add    $0x10,%esp
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3ef9:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3eff:	75 ca                	jne    3ecb <bsstest+0x2b>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit(0);
    }
  }
  printf(stdout, "bss test ok\n");
    3f01:	83 ec 08             	sub    $0x8,%esp
    3f04:	68 41 59 00 00       	push   $0x5941
    3f09:	ff 35 00 6b 00 00    	pushl  0x6b00
    3f0f:	e8 0c 08 00 00       	call   4720 <printf>
}
    3f14:	83 c4 10             	add    $0x10,%esp
    3f17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3f1a:	c9                   	leave  
    3f1b:	c3                   	ret    
    3f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003f20 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    3f20:	55                   	push   %ebp
    3f21:	89 e5                	mov    %esp,%ebp
    3f23:	83 ec 24             	sub    $0x24,%esp
  int pid, fd;

  unlink("bigarg-ok");
    3f26:	68 4e 59 00 00       	push   $0x594e
    3f2b:	e8 e2 06 00 00       	call   4612 <unlink>
  pid = fork();
    3f30:	e8 85 06 00 00       	call   45ba <fork>
  if(pid == 0){
    3f35:	83 c4 10             	add    $0x10,%esp
    3f38:	85 c0                	test   %eax,%eax
    3f3a:	0f 85 c0 00 00 00    	jne    4000 <bigargtest+0xe0>
    3f40:	b8 20 6b 00 00       	mov    $0x6b20,%eax
    3f45:	8d 76 00             	lea    0x0(%esi),%esi
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3f48:	c7 00 a8 60 00 00    	movl   $0x60a8,(%eax)
    3f4e:	83 c0 04             	add    $0x4,%eax
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    3f51:	3d 9c 6b 00 00       	cmp    $0x6b9c,%eax
    3f56:	75 f0                	jne    3f48 <bigargtest+0x28>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    3f58:	83 ec 08             	sub    $0x8,%esp
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    3f5b:	c7 05 9c 6b 00 00 00 	movl   $0x0,0x6b9c
    3f62:	00 00 00 
    printf(stdout, "bigarg test\n");
    3f65:	68 58 59 00 00       	push   $0x5958
    3f6a:	ff 35 00 6b 00 00    	pushl  0x6b00
    3f70:	e8 ab 07 00 00       	call   4720 <printf>
    exec("echo", args);
    3f75:	59                   	pop    %ecx
    3f76:	58                   	pop    %eax
    3f77:	68 20 6b 00 00       	push   $0x6b20
    3f7c:	68 25 4b 00 00       	push   $0x4b25
    3f81:	e8 74 06 00 00       	call   45fa <exec>
    printf(stdout, "bigarg test ok\n");
    3f86:	58                   	pop    %eax
    3f87:	5a                   	pop    %edx
    3f88:	68 65 59 00 00       	push   $0x5965
    3f8d:	ff 35 00 6b 00 00    	pushl  0x6b00
    3f93:	e8 88 07 00 00       	call   4720 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3f98:	59                   	pop    %ecx
    3f99:	58                   	pop    %eax
    3f9a:	68 00 02 00 00       	push   $0x200
    3f9f:	68 4e 59 00 00       	push   $0x594e
    3fa4:	e8 59 06 00 00       	call   4602 <open>
    close(fd);
    3fa9:	89 04 24             	mov    %eax,(%esp)
    3fac:	e8 39 06 00 00       	call   45ea <close>
    exit(0);
    3fb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3fb8:	e8 05 06 00 00       	call   45c2 <exit>
    3fbd:	83 c4 10             	add    $0x10,%esp
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    exit(0);
  }
  wait(0);
    3fc0:	83 ec 0c             	sub    $0xc,%esp
    3fc3:	6a 00                	push   $0x0
    3fc5:	e8 00 06 00 00       	call   45ca <wait>
  fd = open("bigarg-ok", 0);
    3fca:	58                   	pop    %eax
    3fcb:	5a                   	pop    %edx
    3fcc:	6a 00                	push   $0x0
    3fce:	68 4e 59 00 00       	push   $0x594e
    3fd3:	e8 2a 06 00 00       	call   4602 <open>
  if(fd < 0){
    3fd8:	83 c4 10             	add    $0x10,%esp
    3fdb:	85 c0                	test   %eax,%eax
    3fdd:	78 51                	js     4030 <bigargtest+0x110>
    printf(stdout, "bigarg test failed!\n");
    exit(0);
  }
  close(fd);
    3fdf:	83 ec 0c             	sub    $0xc,%esp
    3fe2:	50                   	push   %eax
    3fe3:	e8 02 06 00 00       	call   45ea <close>
  unlink("bigarg-ok");
    3fe8:	c7 04 24 4e 59 00 00 	movl   $0x594e,(%esp)
    3fef:	e8 1e 06 00 00       	call   4612 <unlink>
}
    3ff4:	83 c4 10             	add    $0x10,%esp
    3ff7:	c9                   	leave  
    3ff8:	c3                   	ret    
    3ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    4000:	79 be                	jns    3fc0 <bigargtest+0xa0>
    printf(stdout, "bigargtest: fork failed\n");
    4002:	83 ec 08             	sub    $0x8,%esp
    4005:	68 75 59 00 00       	push   $0x5975
    400a:	ff 35 00 6b 00 00    	pushl  0x6b00
    4010:	e8 0b 07 00 00       	call   4720 <printf>
    exit(0);
    4015:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    401c:	e8 a1 05 00 00       	call   45c2 <exit>
    4021:	83 c4 10             	add    $0x10,%esp
    4024:	eb 9a                	jmp    3fc0 <bigargtest+0xa0>
    4026:	8d 76 00             	lea    0x0(%esi),%esi
    4029:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  wait(0);
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    4030:	83 ec 08             	sub    $0x8,%esp
    4033:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4036:	68 8e 59 00 00       	push   $0x598e
    403b:	ff 35 00 6b 00 00    	pushl  0x6b00
    4041:	e8 da 06 00 00       	call   4720 <printf>
    exit(0);
    4046:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    404d:	e8 70 05 00 00       	call   45c2 <exit>
    4052:	83 c4 10             	add    $0x10,%esp
    4055:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4058:	eb 85                	jmp    3fdf <bigargtest+0xbf>
    405a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004060 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    4060:	55                   	push   %ebp
    4061:	89 e5                	mov    %esp,%ebp
    4063:	57                   	push   %edi
    4064:	56                   	push   %esi
    4065:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    4066:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    4068:	83 ec 54             	sub    $0x54,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    406b:	68 a3 59 00 00       	push   $0x59a3
    4070:	6a 01                	push   $0x1
    4072:	e8 a9 06 00 00       	call   4720 <printf>
    4077:	83 c4 10             	add    $0x10,%esp
    407a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4080:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    4085:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    4087:	89 d9                	mov    %ebx,%ecx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4089:	f7 eb                	imul   %ebx
    408b:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    408e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    4090:	83 ec 04             	sub    $0x4,%esp

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    4093:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    4097:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    409b:	c1 fa 06             	sar    $0x6,%edx
    409e:	29 f2                	sub    %esi,%edx
    40a0:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    40a3:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    40a9:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    40ac:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    40b1:	29 d1                	sub    %edx,%ecx
    40b3:	f7 e9                	imul   %ecx
    40b5:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    40b8:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    40bd:	c1 fa 05             	sar    $0x5,%edx
    40c0:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    40c2:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    40c7:	83 c2 30             	add    $0x30,%edx
    40ca:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    40cd:	f7 eb                	imul   %ebx
    40cf:	c1 fa 05             	sar    $0x5,%edx
    40d2:	29 f2                	sub    %esi,%edx
    40d4:	6b d2 64             	imul   $0x64,%edx,%edx
    40d7:	29 d7                	sub    %edx,%edi
    40d9:	89 f8                	mov    %edi,%eax
    40db:	c1 ff 1f             	sar    $0x1f,%edi
    40de:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    40e0:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    40e2:	c1 fa 02             	sar    $0x2,%edx
    40e5:	29 fa                	sub    %edi,%edx
    40e7:	83 c2 30             	add    $0x30,%edx
    40ea:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    40ed:	f7 e9                	imul   %ecx
    40ef:	89 d9                	mov    %ebx,%ecx
    40f1:	c1 fa 02             	sar    $0x2,%edx
    40f4:	29 f2                	sub    %esi,%edx
    40f6:	8d 04 92             	lea    (%edx,%edx,4),%eax
    40f9:	01 c0                	add    %eax,%eax
    40fb:	29 c1                	sub    %eax,%ecx
    40fd:	89 c8                	mov    %ecx,%eax
    40ff:	83 c0 30             	add    $0x30,%eax
    4102:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    4105:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4108:	50                   	push   %eax
    4109:	68 b0 59 00 00       	push   $0x59b0
    410e:	6a 01                	push   $0x1
    4110:	e8 0b 06 00 00       	call   4720 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    4115:	58                   	pop    %eax
    4116:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4119:	5a                   	pop    %edx
    411a:	68 02 02 00 00       	push   $0x202
    411f:	50                   	push   %eax
    4120:	e8 dd 04 00 00       	call   4602 <open>
    if(fd < 0){
    4125:	83 c4 10             	add    $0x10,%esp
    4128:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    412a:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    412c:	78 50                	js     417e <fsfull+0x11e>
    412e:	31 f6                	xor    %esi,%esi
    4130:	eb 08                	jmp    413a <fsfull+0xda>
    4132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    4138:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    413a:	83 ec 04             	sub    $0x4,%esp
    413d:	68 00 02 00 00       	push   $0x200
    4142:	68 e0 92 00 00       	push   $0x92e0
    4147:	57                   	push   %edi
    4148:	e8 95 04 00 00       	call   45e2 <write>
      if(cc < 512)
    414d:	83 c4 10             	add    $0x10,%esp
    4150:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    4155:	7f e1                	jg     4138 <fsfull+0xd8>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    4157:	83 ec 04             	sub    $0x4,%esp
    415a:	56                   	push   %esi
    415b:	68 cc 59 00 00       	push   $0x59cc
    4160:	6a 01                	push   $0x1
    4162:	e8 b9 05 00 00       	call   4720 <printf>
    close(fd);
    4167:	89 3c 24             	mov    %edi,(%esp)
    416a:	e8 7b 04 00 00       	call   45ea <close>
    if(total == 0)
    416f:	83 c4 10             	add    $0x10,%esp
    4172:	85 f6                	test   %esi,%esi
    4174:	74 22                	je     4198 <fsfull+0x138>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    4176:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    4179:	e9 02 ff ff ff       	jmp    4080 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    417e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4181:	83 ec 04             	sub    $0x4,%esp
    4184:	50                   	push   %eax
    4185:	68 bc 59 00 00       	push   $0x59bc
    418a:	6a 01                	push   $0x1
    418c:	e8 8f 05 00 00       	call   4720 <printf>
      break;
    4191:	83 c4 10             	add    $0x10,%esp
    4194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4198:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    419d:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    419f:	89 d9                	mov    %ebx,%ecx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    41a1:	f7 eb                	imul   %ebx
    41a3:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    41a6:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    unlink(name);
    41a8:	83 ec 0c             	sub    $0xc,%esp
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    41ab:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    41af:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    41b3:	c1 fa 06             	sar    $0x6,%edx
    41b6:	29 f2                	sub    %esi,%edx
    41b8:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    41bb:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    41c1:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    41c4:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    41c9:	29 d1                	sub    %edx,%ecx
    41cb:	f7 e9                	imul   %ecx
    41cd:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    41d0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    41d5:	c1 fa 05             	sar    $0x5,%edx
    41d8:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    41da:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    41df:	83 c2 30             	add    $0x30,%edx
    41e2:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    41e5:	f7 eb                	imul   %ebx
    41e7:	c1 fa 05             	sar    $0x5,%edx
    41ea:	29 f2                	sub    %esi,%edx
    41ec:	6b d2 64             	imul   $0x64,%edx,%edx
    41ef:	29 d7                	sub    %edx,%edi
    41f1:	89 f8                	mov    %edi,%eax
    41f3:	c1 ff 1f             	sar    $0x1f,%edi
    41f6:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    41f8:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    41fa:	c1 fa 02             	sar    $0x2,%edx
    41fd:	29 fa                	sub    %edi,%edx
    41ff:	83 c2 30             	add    $0x30,%edx
    4202:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    4205:	f7 e9                	imul   %ecx
    4207:	89 d9                	mov    %ebx,%ecx
    name[5] = '\0';
    unlink(name);
    nfiles--;
    4209:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    420c:	c1 fa 02             	sar    $0x2,%edx
    420f:	29 f2                	sub    %esi,%edx
    4211:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4214:	01 c0                	add    %eax,%eax
    4216:	29 c1                	sub    %eax,%ecx
    4218:	89 c8                	mov    %ecx,%eax
    421a:	83 c0 30             	add    $0x30,%eax
    421d:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    4220:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4223:	50                   	push   %eax
    4224:	e8 e9 03 00 00       	call   4612 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    4229:	83 c4 10             	add    $0x10,%esp
    422c:	83 fb ff             	cmp    $0xffffffff,%ebx
    422f:	0f 85 63 ff ff ff    	jne    4198 <fsfull+0x138>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    4235:	83 ec 08             	sub    $0x8,%esp
    4238:	68 dc 59 00 00       	push   $0x59dc
    423d:	6a 01                	push   $0x1
    423f:	e8 dc 04 00 00       	call   4720 <printf>
}
    4244:	83 c4 10             	add    $0x10,%esp
    4247:	8d 65 f4             	lea    -0xc(%ebp),%esp
    424a:	5b                   	pop    %ebx
    424b:	5e                   	pop    %esi
    424c:	5f                   	pop    %edi
    424d:	5d                   	pop    %ebp
    424e:	c3                   	ret    
    424f:	90                   	nop

00004250 <uio>:

void
uio()
{
    4250:	55                   	push   %ebp
    4251:	89 e5                	mov    %esp,%ebp
    4253:	83 ec 10             	sub    $0x10,%esp

  ushort port = 0;
  uchar val = 0;
  int pid;

  printf(1, "uio test\n");
    4256:	68 f2 59 00 00       	push   $0x59f2
    425b:	6a 01                	push   $0x1
    425d:	e8 be 04 00 00       	call   4720 <printf>
  pid = fork();
    4262:	e8 53 03 00 00       	call   45ba <fork>
  if(pid == 0){
    4267:	83 c4 10             	add    $0x10,%esp
    426a:	85 c0                	test   %eax,%eax
    426c:	74 22                	je     4290 <uio+0x40>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    426e:	78 58                	js     42c8 <uio+0x78>
    printf (1, "fork failed\n");
    exit(0);
  }
  wait(0);
    4270:	83 ec 0c             	sub    $0xc,%esp
    4273:	6a 00                	push   $0x0
    4275:	e8 50 03 00 00       	call   45ca <wait>
  printf(1, "uio test done\n");
    427a:	58                   	pop    %eax
    427b:	5a                   	pop    %edx
    427c:	68 fc 59 00 00       	push   $0x59fc
    4281:	6a 01                	push   $0x1
    4283:	e8 98 04 00 00       	call   4720 <printf>
}
    4288:	83 c4 10             	add    $0x10,%esp
    428b:	c9                   	leave  
    428c:	c3                   	ret    
    428d:	8d 76 00             	lea    0x0(%esi),%esi
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    4290:	ba 70 00 00 00       	mov    $0x70,%edx
    4295:	b8 09 00 00 00       	mov    $0x9,%eax
    429a:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    429b:	ba 71 00 00 00       	mov    $0x71,%edx
    42a0:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    42a1:	83 ec 08             	sub    $0x8,%esp
    42a4:	68 88 61 00 00       	push   $0x6188
    exit(0);
  } else if(pid < 0){
    printf (1, "fork failed\n");
    42a9:	6a 01                	push   $0x1
    42ab:	e8 70 04 00 00       	call   4720 <printf>
    exit(0);
    42b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    42b7:	e8 06 03 00 00       	call   45c2 <exit>
    42bc:	83 c4 10             	add    $0x10,%esp
    42bf:	eb af                	jmp    4270 <uio+0x20>
    42c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    printf (1, "fork failed\n");
    42c8:	83 ec 08             	sub    $0x8,%esp
    42cb:	68 81 59 00 00       	push   $0x5981
    42d0:	eb d7                	jmp    42a9 <uio+0x59>
    42d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    42d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000042e0 <argptest>:
  wait(0);
  printf(1, "uio test done\n");
}

void argptest()
{
    42e0:	55                   	push   %ebp
    42e1:	89 e5                	mov    %esp,%ebp
    42e3:	53                   	push   %ebx
    42e4:	83 ec 0c             	sub    $0xc,%esp
  int fd;
  fd = open("init", O_RDONLY);
    42e7:	6a 00                	push   $0x0
    42e9:	68 0b 5a 00 00       	push   $0x5a0b
    42ee:	e8 0f 03 00 00       	call   4602 <open>
  if (fd < 0) {
    42f3:	83 c4 10             	add    $0x10,%esp
    42f6:	85 c0                	test   %eax,%eax
}

void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
    42f8:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    42fa:	78 3c                	js     4338 <argptest+0x58>
    printf(2, "open failed\n");
    exit(0);
  }
  read(fd, sbrk(0) - 1, -1);
    42fc:	83 ec 0c             	sub    $0xc,%esp
    42ff:	6a 00                	push   $0x0
    4301:	e8 44 03 00 00       	call   464a <sbrk>
    4306:	83 c4 0c             	add    $0xc,%esp
    4309:	83 e8 01             	sub    $0x1,%eax
    430c:	6a ff                	push   $0xffffffff
    430e:	50                   	push   %eax
    430f:	53                   	push   %ebx
    4310:	e8 c5 02 00 00       	call   45da <read>
  close(fd);
    4315:	89 1c 24             	mov    %ebx,(%esp)
    4318:	e8 cd 02 00 00       	call   45ea <close>
  printf(1, "arg test passed\n");
    431d:	58                   	pop    %eax
    431e:	5a                   	pop    %edx
    431f:	68 1d 5a 00 00       	push   $0x5a1d
    4324:	6a 01                	push   $0x1
    4326:	e8 f5 03 00 00       	call   4720 <printf>
}
    432b:	83 c4 10             	add    $0x10,%esp
    432e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4331:	c9                   	leave  
    4332:	c3                   	ret    
    4333:	90                   	nop
    4334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    4338:	83 ec 08             	sub    $0x8,%esp
    433b:	68 10 5a 00 00       	push   $0x5a10
    4340:	6a 02                	push   $0x2
    4342:	e8 d9 03 00 00       	call   4720 <printf>
    exit(0);
    4347:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    434e:	e8 6f 02 00 00       	call   45c2 <exit>
    4353:	83 c4 10             	add    $0x10,%esp
    4356:	eb a4                	jmp    42fc <argptest+0x1c>
    4358:	90                   	nop
    4359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004360 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    4360:	69 05 fc 6a 00 00 0d 	imul   $0x19660d,0x6afc,%eax
    4367:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    436a:	55                   	push   %ebp
    436b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    436d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    436e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4373:	a3 fc 6a 00 00       	mov    %eax,0x6afc
  return randstate;
}
    4378:	c3                   	ret    
    4379:	66 90                	xchg   %ax,%ax
    437b:	66 90                	xchg   %ax,%ax
    437d:	66 90                	xchg   %ax,%ax
    437f:	90                   	nop

00004380 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    4380:	55                   	push   %ebp
    4381:	89 e5                	mov    %esp,%ebp
    4383:	53                   	push   %ebx
    4384:	8b 45 08             	mov    0x8(%ebp),%eax
    4387:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    438a:	89 c2                	mov    %eax,%edx
    438c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4390:	83 c1 01             	add    $0x1,%ecx
    4393:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    4397:	83 c2 01             	add    $0x1,%edx
    439a:	84 db                	test   %bl,%bl
    439c:	88 5a ff             	mov    %bl,-0x1(%edx)
    439f:	75 ef                	jne    4390 <strcpy+0x10>
    ;
  return os;
}
    43a1:	5b                   	pop    %ebx
    43a2:	5d                   	pop    %ebp
    43a3:	c3                   	ret    
    43a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    43aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    43b0:	55                   	push   %ebp
    43b1:	89 e5                	mov    %esp,%ebp
    43b3:	56                   	push   %esi
    43b4:	53                   	push   %ebx
    43b5:	8b 55 08             	mov    0x8(%ebp),%edx
    43b8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    43bb:	0f b6 02             	movzbl (%edx),%eax
    43be:	0f b6 19             	movzbl (%ecx),%ebx
    43c1:	84 c0                	test   %al,%al
    43c3:	75 1e                	jne    43e3 <strcmp+0x33>
    43c5:	eb 29                	jmp    43f0 <strcmp+0x40>
    43c7:	89 f6                	mov    %esi,%esi
    43c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    43d0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43d3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    43d6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43d9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    43dd:	84 c0                	test   %al,%al
    43df:	74 0f                	je     43f0 <strcmp+0x40>
    43e1:	89 f1                	mov    %esi,%ecx
    43e3:	38 d8                	cmp    %bl,%al
    43e5:	74 e9                	je     43d0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    43e7:	29 d8                	sub    %ebx,%eax
}
    43e9:	5b                   	pop    %ebx
    43ea:	5e                   	pop    %esi
    43eb:	5d                   	pop    %ebp
    43ec:	c3                   	ret    
    43ed:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43f0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    43f2:	29 d8                	sub    %ebx,%eax
}
    43f4:	5b                   	pop    %ebx
    43f5:	5e                   	pop    %esi
    43f6:	5d                   	pop    %ebp
    43f7:	c3                   	ret    
    43f8:	90                   	nop
    43f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004400 <strlen>:

uint
strlen(char *s)
{
    4400:	55                   	push   %ebp
    4401:	89 e5                	mov    %esp,%ebp
    4403:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    4406:	80 39 00             	cmpb   $0x0,(%ecx)
    4409:	74 12                	je     441d <strlen+0x1d>
    440b:	31 d2                	xor    %edx,%edx
    440d:	8d 76 00             	lea    0x0(%esi),%esi
    4410:	83 c2 01             	add    $0x1,%edx
    4413:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    4417:	89 d0                	mov    %edx,%eax
    4419:	75 f5                	jne    4410 <strlen+0x10>
    ;
  return n;
}
    441b:	5d                   	pop    %ebp
    441c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    441d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    441f:	5d                   	pop    %ebp
    4420:	c3                   	ret    
    4421:	eb 0d                	jmp    4430 <memset>
    4423:	90                   	nop
    4424:	90                   	nop
    4425:	90                   	nop
    4426:	90                   	nop
    4427:	90                   	nop
    4428:	90                   	nop
    4429:	90                   	nop
    442a:	90                   	nop
    442b:	90                   	nop
    442c:	90                   	nop
    442d:	90                   	nop
    442e:	90                   	nop
    442f:	90                   	nop

00004430 <memset>:

void*
memset(void *dst, int c, uint n)
{
    4430:	55                   	push   %ebp
    4431:	89 e5                	mov    %esp,%ebp
    4433:	57                   	push   %edi
    4434:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    4437:	8b 4d 10             	mov    0x10(%ebp),%ecx
    443a:	8b 45 0c             	mov    0xc(%ebp),%eax
    443d:	89 d7                	mov    %edx,%edi
    443f:	fc                   	cld    
    4440:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    4442:	89 d0                	mov    %edx,%eax
    4444:	5f                   	pop    %edi
    4445:	5d                   	pop    %ebp
    4446:	c3                   	ret    
    4447:	89 f6                	mov    %esi,%esi
    4449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004450 <strchr>:

char*
strchr(const char *s, char c)
{
    4450:	55                   	push   %ebp
    4451:	89 e5                	mov    %esp,%ebp
    4453:	53                   	push   %ebx
    4454:	8b 45 08             	mov    0x8(%ebp),%eax
    4457:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    445a:	0f b6 10             	movzbl (%eax),%edx
    445d:	84 d2                	test   %dl,%dl
    445f:	74 1d                	je     447e <strchr+0x2e>
    if(*s == c)
    4461:	38 d3                	cmp    %dl,%bl
    4463:	89 d9                	mov    %ebx,%ecx
    4465:	75 0d                	jne    4474 <strchr+0x24>
    4467:	eb 17                	jmp    4480 <strchr+0x30>
    4469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4470:	38 ca                	cmp    %cl,%dl
    4472:	74 0c                	je     4480 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    4474:	83 c0 01             	add    $0x1,%eax
    4477:	0f b6 10             	movzbl (%eax),%edx
    447a:	84 d2                	test   %dl,%dl
    447c:	75 f2                	jne    4470 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    447e:	31 c0                	xor    %eax,%eax
}
    4480:	5b                   	pop    %ebx
    4481:	5d                   	pop    %ebp
    4482:	c3                   	ret    
    4483:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004490 <gets>:

char*
gets(char *buf, int max)
{
    4490:	55                   	push   %ebp
    4491:	89 e5                	mov    %esp,%ebp
    4493:	57                   	push   %edi
    4494:	56                   	push   %esi
    4495:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4496:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    4498:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    449b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    449e:	eb 29                	jmp    44c9 <gets+0x39>
    cc = read(0, &c, 1);
    44a0:	83 ec 04             	sub    $0x4,%esp
    44a3:	6a 01                	push   $0x1
    44a5:	57                   	push   %edi
    44a6:	6a 00                	push   $0x0
    44a8:	e8 2d 01 00 00       	call   45da <read>
    if(cc < 1)
    44ad:	83 c4 10             	add    $0x10,%esp
    44b0:	85 c0                	test   %eax,%eax
    44b2:	7e 1d                	jle    44d1 <gets+0x41>
      break;
    buf[i++] = c;
    44b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    44b8:	8b 55 08             	mov    0x8(%ebp),%edx
    44bb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    44bd:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    44bf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    44c3:	74 1b                	je     44e0 <gets+0x50>
    44c5:	3c 0d                	cmp    $0xd,%al
    44c7:	74 17                	je     44e0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    44c9:	8d 5e 01             	lea    0x1(%esi),%ebx
    44cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    44cf:	7c cf                	jl     44a0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44d1:	8b 45 08             	mov    0x8(%ebp),%eax
    44d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    44d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    44db:	5b                   	pop    %ebx
    44dc:	5e                   	pop    %esi
    44dd:	5f                   	pop    %edi
    44de:	5d                   	pop    %ebp
    44df:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44e0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    44e3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    44e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    44ec:	5b                   	pop    %ebx
    44ed:	5e                   	pop    %esi
    44ee:	5f                   	pop    %edi
    44ef:	5d                   	pop    %ebp
    44f0:	c3                   	ret    
    44f1:	eb 0d                	jmp    4500 <stat>
    44f3:	90                   	nop
    44f4:	90                   	nop
    44f5:	90                   	nop
    44f6:	90                   	nop
    44f7:	90                   	nop
    44f8:	90                   	nop
    44f9:	90                   	nop
    44fa:	90                   	nop
    44fb:	90                   	nop
    44fc:	90                   	nop
    44fd:	90                   	nop
    44fe:	90                   	nop
    44ff:	90                   	nop

00004500 <stat>:

int
stat(char *n, struct stat *st)
{
    4500:	55                   	push   %ebp
    4501:	89 e5                	mov    %esp,%ebp
    4503:	56                   	push   %esi
    4504:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    4505:	83 ec 08             	sub    $0x8,%esp
    4508:	6a 00                	push   $0x0
    450a:	ff 75 08             	pushl  0x8(%ebp)
    450d:	e8 f0 00 00 00       	call   4602 <open>
  if(fd < 0)
    4512:	83 c4 10             	add    $0x10,%esp
    4515:	85 c0                	test   %eax,%eax
    4517:	78 27                	js     4540 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    4519:	83 ec 08             	sub    $0x8,%esp
    451c:	ff 75 0c             	pushl  0xc(%ebp)
    451f:	89 c3                	mov    %eax,%ebx
    4521:	50                   	push   %eax
    4522:	e8 f3 00 00 00       	call   461a <fstat>
    4527:	89 c6                	mov    %eax,%esi
  close(fd);
    4529:	89 1c 24             	mov    %ebx,(%esp)
    452c:	e8 b9 00 00 00       	call   45ea <close>
  return r;
    4531:	83 c4 10             	add    $0x10,%esp
    4534:	89 f0                	mov    %esi,%eax
}
    4536:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4539:	5b                   	pop    %ebx
    453a:	5e                   	pop    %esi
    453b:	5d                   	pop    %ebp
    453c:	c3                   	ret    
    453d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    4540:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4545:	eb ef                	jmp    4536 <stat+0x36>
    4547:	89 f6                	mov    %esi,%esi
    4549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004550 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    4550:	55                   	push   %ebp
    4551:	89 e5                	mov    %esp,%ebp
    4553:	53                   	push   %ebx
    4554:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    4557:	0f be 11             	movsbl (%ecx),%edx
    455a:	8d 42 d0             	lea    -0x30(%edx),%eax
    455d:	3c 09                	cmp    $0x9,%al
    455f:	b8 00 00 00 00       	mov    $0x0,%eax
    4564:	77 1f                	ja     4585 <atoi+0x35>
    4566:	8d 76 00             	lea    0x0(%esi),%esi
    4569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    4570:	8d 04 80             	lea    (%eax,%eax,4),%eax
    4573:	83 c1 01             	add    $0x1,%ecx
    4576:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    457a:	0f be 11             	movsbl (%ecx),%edx
    457d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    4580:	80 fb 09             	cmp    $0x9,%bl
    4583:	76 eb                	jbe    4570 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    4585:	5b                   	pop    %ebx
    4586:	5d                   	pop    %ebp
    4587:	c3                   	ret    
    4588:	90                   	nop
    4589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004590 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    4590:	55                   	push   %ebp
    4591:	89 e5                	mov    %esp,%ebp
    4593:	56                   	push   %esi
    4594:	53                   	push   %ebx
    4595:	8b 5d 10             	mov    0x10(%ebp),%ebx
    4598:	8b 45 08             	mov    0x8(%ebp),%eax
    459b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    459e:	85 db                	test   %ebx,%ebx
    45a0:	7e 14                	jle    45b6 <memmove+0x26>
    45a2:	31 d2                	xor    %edx,%edx
    45a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    45a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    45ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    45af:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    45b2:	39 da                	cmp    %ebx,%edx
    45b4:	75 f2                	jne    45a8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    45b6:	5b                   	pop    %ebx
    45b7:	5e                   	pop    %esi
    45b8:	5d                   	pop    %ebp
    45b9:	c3                   	ret    

000045ba <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    45ba:	b8 01 00 00 00       	mov    $0x1,%eax
    45bf:	cd 40                	int    $0x40
    45c1:	c3                   	ret    

000045c2 <exit>:
SYSCALL(exit)
    45c2:	b8 02 00 00 00       	mov    $0x2,%eax
    45c7:	cd 40                	int    $0x40
    45c9:	c3                   	ret    

000045ca <wait>:
SYSCALL(wait)
    45ca:	b8 03 00 00 00       	mov    $0x3,%eax
    45cf:	cd 40                	int    $0x40
    45d1:	c3                   	ret    

000045d2 <pipe>:
SYSCALL(pipe)
    45d2:	b8 04 00 00 00       	mov    $0x4,%eax
    45d7:	cd 40                	int    $0x40
    45d9:	c3                   	ret    

000045da <read>:
SYSCALL(read)
    45da:	b8 05 00 00 00       	mov    $0x5,%eax
    45df:	cd 40                	int    $0x40
    45e1:	c3                   	ret    

000045e2 <write>:
SYSCALL(write)
    45e2:	b8 10 00 00 00       	mov    $0x10,%eax
    45e7:	cd 40                	int    $0x40
    45e9:	c3                   	ret    

000045ea <close>:
SYSCALL(close)
    45ea:	b8 15 00 00 00       	mov    $0x15,%eax
    45ef:	cd 40                	int    $0x40
    45f1:	c3                   	ret    

000045f2 <kill>:
SYSCALL(kill)
    45f2:	b8 06 00 00 00       	mov    $0x6,%eax
    45f7:	cd 40                	int    $0x40
    45f9:	c3                   	ret    

000045fa <exec>:
SYSCALL(exec)
    45fa:	b8 07 00 00 00       	mov    $0x7,%eax
    45ff:	cd 40                	int    $0x40
    4601:	c3                   	ret    

00004602 <open>:
SYSCALL(open)
    4602:	b8 0f 00 00 00       	mov    $0xf,%eax
    4607:	cd 40                	int    $0x40
    4609:	c3                   	ret    

0000460a <mknod>:
SYSCALL(mknod)
    460a:	b8 11 00 00 00       	mov    $0x11,%eax
    460f:	cd 40                	int    $0x40
    4611:	c3                   	ret    

00004612 <unlink>:
SYSCALL(unlink)
    4612:	b8 12 00 00 00       	mov    $0x12,%eax
    4617:	cd 40                	int    $0x40
    4619:	c3                   	ret    

0000461a <fstat>:
SYSCALL(fstat)
    461a:	b8 08 00 00 00       	mov    $0x8,%eax
    461f:	cd 40                	int    $0x40
    4621:	c3                   	ret    

00004622 <link>:
SYSCALL(link)
    4622:	b8 13 00 00 00       	mov    $0x13,%eax
    4627:	cd 40                	int    $0x40
    4629:	c3                   	ret    

0000462a <mkdir>:
SYSCALL(mkdir)
    462a:	b8 14 00 00 00       	mov    $0x14,%eax
    462f:	cd 40                	int    $0x40
    4631:	c3                   	ret    

00004632 <chdir>:
SYSCALL(chdir)
    4632:	b8 09 00 00 00       	mov    $0x9,%eax
    4637:	cd 40                	int    $0x40
    4639:	c3                   	ret    

0000463a <dup>:
SYSCALL(dup)
    463a:	b8 0a 00 00 00       	mov    $0xa,%eax
    463f:	cd 40                	int    $0x40
    4641:	c3                   	ret    

00004642 <getpid>:
SYSCALL(getpid)
    4642:	b8 0b 00 00 00       	mov    $0xb,%eax
    4647:	cd 40                	int    $0x40
    4649:	c3                   	ret    

0000464a <sbrk>:
SYSCALL(sbrk)
    464a:	b8 0c 00 00 00       	mov    $0xc,%eax
    464f:	cd 40                	int    $0x40
    4651:	c3                   	ret    

00004652 <sleep>:
SYSCALL(sleep)
    4652:	b8 0d 00 00 00       	mov    $0xd,%eax
    4657:	cd 40                	int    $0x40
    4659:	c3                   	ret    

0000465a <uptime>:
SYSCALL(uptime)
    465a:	b8 0e 00 00 00       	mov    $0xe,%eax
    465f:	cd 40                	int    $0x40
    4661:	c3                   	ret    

00004662 <waitpid>:
SYSCALL(waitpid)
    4662:	b8 16 00 00 00       	mov    $0x16,%eax
    4667:	cd 40                	int    $0x40
    4669:	c3                   	ret    

0000466a <setpriority>:
SYSCALL(setpriority)
    466a:	b8 17 00 00 00       	mov    $0x17,%eax
    466f:	cd 40                	int    $0x40
    4671:	c3                   	ret    
    4672:	66 90                	xchg   %ax,%ax
    4674:	66 90                	xchg   %ax,%ax
    4676:	66 90                	xchg   %ax,%ax
    4678:	66 90                	xchg   %ax,%ax
    467a:	66 90                	xchg   %ax,%ax
    467c:	66 90                	xchg   %ax,%ax
    467e:	66 90                	xchg   %ax,%ax

00004680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4680:	55                   	push   %ebp
    4681:	89 e5                	mov    %esp,%ebp
    4683:	57                   	push   %edi
    4684:	56                   	push   %esi
    4685:	53                   	push   %ebx
    4686:	89 c6                	mov    %eax,%esi
    4688:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    468b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    468e:	85 db                	test   %ebx,%ebx
    4690:	74 7e                	je     4710 <printint+0x90>
    4692:	89 d0                	mov    %edx,%eax
    4694:	c1 e8 1f             	shr    $0x1f,%eax
    4697:	84 c0                	test   %al,%al
    4699:	74 75                	je     4710 <printint+0x90>
    neg = 1;
    x = -xx;
    469b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    469d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    46a4:	f7 d8                	neg    %eax
    46a6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    46a9:	31 ff                	xor    %edi,%edi
    46ab:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    46ae:	89 ce                	mov    %ecx,%esi
    46b0:	eb 08                	jmp    46ba <printint+0x3a>
    46b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    46b8:	89 cf                	mov    %ecx,%edi
    46ba:	31 d2                	xor    %edx,%edx
    46bc:	8d 4f 01             	lea    0x1(%edi),%ecx
    46bf:	f7 f6                	div    %esi
    46c1:	0f b6 92 e0 61 00 00 	movzbl 0x61e0(%edx),%edx
  }while((x /= base) != 0);
    46c8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    46ca:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    46cd:	75 e9                	jne    46b8 <printint+0x38>
  if(neg)
    46cf:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    46d2:	8b 75 c0             	mov    -0x40(%ebp),%esi
    46d5:	85 c0                	test   %eax,%eax
    46d7:	74 08                	je     46e1 <printint+0x61>
    buf[i++] = '-';
    46d9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    46de:	8d 4f 02             	lea    0x2(%edi),%ecx
    46e1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    46e5:	8d 76 00             	lea    0x0(%esi),%esi
    46e8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    46eb:	83 ec 04             	sub    $0x4,%esp
    46ee:	83 ef 01             	sub    $0x1,%edi
    46f1:	6a 01                	push   $0x1
    46f3:	53                   	push   %ebx
    46f4:	56                   	push   %esi
    46f5:	88 45 d7             	mov    %al,-0x29(%ebp)
    46f8:	e8 e5 fe ff ff       	call   45e2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    46fd:	83 c4 10             	add    $0x10,%esp
    4700:	39 df                	cmp    %ebx,%edi
    4702:	75 e4                	jne    46e8 <printint+0x68>
    putc(fd, buf[i]);
}
    4704:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4707:	5b                   	pop    %ebx
    4708:	5e                   	pop    %esi
    4709:	5f                   	pop    %edi
    470a:	5d                   	pop    %ebp
    470b:	c3                   	ret    
    470c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    4710:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    4712:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    4719:	eb 8b                	jmp    46a6 <printint+0x26>
    471b:	90                   	nop
    471c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004720 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4720:	55                   	push   %ebp
    4721:	89 e5                	mov    %esp,%ebp
    4723:	57                   	push   %edi
    4724:	56                   	push   %esi
    4725:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4726:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4729:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    472c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    472f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4732:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4735:	0f b6 1e             	movzbl (%esi),%ebx
    4738:	83 c6 01             	add    $0x1,%esi
    473b:	84 db                	test   %bl,%bl
    473d:	0f 84 b0 00 00 00    	je     47f3 <printf+0xd3>
    4743:	31 d2                	xor    %edx,%edx
    4745:	eb 39                	jmp    4780 <printf+0x60>
    4747:	89 f6                	mov    %esi,%esi
    4749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4750:	83 f8 25             	cmp    $0x25,%eax
    4753:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    4756:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    475b:	74 18                	je     4775 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    475d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4760:	83 ec 04             	sub    $0x4,%esp
    4763:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    4766:	6a 01                	push   $0x1
    4768:	50                   	push   %eax
    4769:	57                   	push   %edi
    476a:	e8 73 fe ff ff       	call   45e2 <write>
    476f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    4772:	83 c4 10             	add    $0x10,%esp
    4775:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4778:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    477c:	84 db                	test   %bl,%bl
    477e:	74 73                	je     47f3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    4780:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    4782:	0f be cb             	movsbl %bl,%ecx
    4785:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4788:	74 c6                	je     4750 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    478a:	83 fa 25             	cmp    $0x25,%edx
    478d:	75 e6                	jne    4775 <printf+0x55>
      if(c == 'd'){
    478f:	83 f8 64             	cmp    $0x64,%eax
    4792:	0f 84 f8 00 00 00    	je     4890 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4798:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    479e:	83 f9 70             	cmp    $0x70,%ecx
    47a1:	74 5d                	je     4800 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    47a3:	83 f8 73             	cmp    $0x73,%eax
    47a6:	0f 84 84 00 00 00    	je     4830 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    47ac:	83 f8 63             	cmp    $0x63,%eax
    47af:	0f 84 ea 00 00 00    	je     489f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    47b5:	83 f8 25             	cmp    $0x25,%eax
    47b8:	0f 84 c2 00 00 00    	je     4880 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    47be:	8d 45 e7             	lea    -0x19(%ebp),%eax
    47c1:	83 ec 04             	sub    $0x4,%esp
    47c4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    47c8:	6a 01                	push   $0x1
    47ca:	50                   	push   %eax
    47cb:	57                   	push   %edi
    47cc:	e8 11 fe ff ff       	call   45e2 <write>
    47d1:	83 c4 0c             	add    $0xc,%esp
    47d4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    47d7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    47da:	6a 01                	push   $0x1
    47dc:	50                   	push   %eax
    47dd:	57                   	push   %edi
    47de:	83 c6 01             	add    $0x1,%esi
    47e1:	e8 fc fd ff ff       	call   45e2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47e6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    47ea:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    47ed:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47ef:	84 db                	test   %bl,%bl
    47f1:	75 8d                	jne    4780 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    47f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    47f6:	5b                   	pop    %ebx
    47f7:	5e                   	pop    %esi
    47f8:	5f                   	pop    %edi
    47f9:	5d                   	pop    %ebp
    47fa:	c3                   	ret    
    47fb:	90                   	nop
    47fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    4800:	83 ec 0c             	sub    $0xc,%esp
    4803:	b9 10 00 00 00       	mov    $0x10,%ecx
    4808:	6a 00                	push   $0x0
    480a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    480d:	89 f8                	mov    %edi,%eax
    480f:	8b 13                	mov    (%ebx),%edx
    4811:	e8 6a fe ff ff       	call   4680 <printint>
        ap++;
    4816:	89 d8                	mov    %ebx,%eax
    4818:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    481b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    481d:	83 c0 04             	add    $0x4,%eax
    4820:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4823:	e9 4d ff ff ff       	jmp    4775 <printf+0x55>
    4828:	90                   	nop
    4829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    4830:	8b 45 d0             	mov    -0x30(%ebp),%eax
    4833:	8b 18                	mov    (%eax),%ebx
        ap++;
    4835:	83 c0 04             	add    $0x4,%eax
    4838:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    483b:	b8 d8 61 00 00       	mov    $0x61d8,%eax
    4840:	85 db                	test   %ebx,%ebx
    4842:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    4845:	0f b6 03             	movzbl (%ebx),%eax
    4848:	84 c0                	test   %al,%al
    484a:	74 23                	je     486f <printf+0x14f>
    484c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4850:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4853:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    4856:	83 ec 04             	sub    $0x4,%esp
    4859:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    485b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    485e:	50                   	push   %eax
    485f:	57                   	push   %edi
    4860:	e8 7d fd ff ff       	call   45e2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    4865:	0f b6 03             	movzbl (%ebx),%eax
    4868:	83 c4 10             	add    $0x10,%esp
    486b:	84 c0                	test   %al,%al
    486d:	75 e1                	jne    4850 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    486f:	31 d2                	xor    %edx,%edx
    4871:	e9 ff fe ff ff       	jmp    4775 <printf+0x55>
    4876:	8d 76 00             	lea    0x0(%esi),%esi
    4879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4880:	83 ec 04             	sub    $0x4,%esp
    4883:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4886:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4889:	6a 01                	push   $0x1
    488b:	e9 4c ff ff ff       	jmp    47dc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    4890:	83 ec 0c             	sub    $0xc,%esp
    4893:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4898:	6a 01                	push   $0x1
    489a:	e9 6b ff ff ff       	jmp    480a <printf+0xea>
    489f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    48a2:	83 ec 04             	sub    $0x4,%esp
    48a5:	8b 03                	mov    (%ebx),%eax
    48a7:	6a 01                	push   $0x1
    48a9:	88 45 e4             	mov    %al,-0x1c(%ebp)
    48ac:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    48af:	50                   	push   %eax
    48b0:	57                   	push   %edi
    48b1:	e8 2c fd ff ff       	call   45e2 <write>
    48b6:	e9 5b ff ff ff       	jmp    4816 <printf+0xf6>
    48bb:	66 90                	xchg   %ax,%ax
    48bd:	66 90                	xchg   %ax,%ax
    48bf:	90                   	nop

000048c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    48c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48c1:	a1 a0 6b 00 00       	mov    0x6ba0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    48c6:	89 e5                	mov    %esp,%ebp
    48c8:	57                   	push   %edi
    48c9:	56                   	push   %esi
    48ca:	53                   	push   %ebx
    48cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48ce:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    48d0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48d3:	39 c8                	cmp    %ecx,%eax
    48d5:	73 19                	jae    48f0 <free+0x30>
    48d7:	89 f6                	mov    %esi,%esi
    48d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    48e0:	39 d1                	cmp    %edx,%ecx
    48e2:	72 1c                	jb     4900 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48e4:	39 d0                	cmp    %edx,%eax
    48e6:	73 18                	jae    4900 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    48e8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48ea:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48ec:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48ee:	72 f0                	jb     48e0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48f0:	39 d0                	cmp    %edx,%eax
    48f2:	72 f4                	jb     48e8 <free+0x28>
    48f4:	39 d1                	cmp    %edx,%ecx
    48f6:	73 f0                	jae    48e8 <free+0x28>
    48f8:	90                   	nop
    48f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    4900:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4903:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4906:	39 d7                	cmp    %edx,%edi
    4908:	74 19                	je     4923 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    490a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    490d:	8b 50 04             	mov    0x4(%eax),%edx
    4910:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4913:	39 f1                	cmp    %esi,%ecx
    4915:	74 23                	je     493a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4917:	89 08                	mov    %ecx,(%eax)
  freep = p;
    4919:	a3 a0 6b 00 00       	mov    %eax,0x6ba0
}
    491e:	5b                   	pop    %ebx
    491f:	5e                   	pop    %esi
    4920:	5f                   	pop    %edi
    4921:	5d                   	pop    %ebp
    4922:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    4923:	03 72 04             	add    0x4(%edx),%esi
    4926:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4929:	8b 10                	mov    (%eax),%edx
    492b:	8b 12                	mov    (%edx),%edx
    492d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    4930:	8b 50 04             	mov    0x4(%eax),%edx
    4933:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4936:	39 f1                	cmp    %esi,%ecx
    4938:	75 dd                	jne    4917 <free+0x57>
    p->s.size += bp->s.size;
    493a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    493d:	a3 a0 6b 00 00       	mov    %eax,0x6ba0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    4942:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4945:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4948:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    494a:	5b                   	pop    %ebx
    494b:	5e                   	pop    %esi
    494c:	5f                   	pop    %edi
    494d:	5d                   	pop    %ebp
    494e:	c3                   	ret    
    494f:	90                   	nop

00004950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4950:	55                   	push   %ebp
    4951:	89 e5                	mov    %esp,%ebp
    4953:	57                   	push   %edi
    4954:	56                   	push   %esi
    4955:	53                   	push   %ebx
    4956:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    495c:	8b 15 a0 6b 00 00    	mov    0x6ba0,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4962:	8d 78 07             	lea    0x7(%eax),%edi
    4965:	c1 ef 03             	shr    $0x3,%edi
    4968:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    496b:	85 d2                	test   %edx,%edx
    496d:	0f 84 a3 00 00 00    	je     4a16 <malloc+0xc6>
    4973:	8b 02                	mov    (%edx),%eax
    4975:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4978:	39 cf                	cmp    %ecx,%edi
    497a:	76 74                	jbe    49f0 <malloc+0xa0>
    497c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4982:	be 00 10 00 00       	mov    $0x1000,%esi
    4987:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    498e:	0f 43 f7             	cmovae %edi,%esi
    4991:	ba 00 80 00 00       	mov    $0x8000,%edx
    4996:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    499c:	0f 46 da             	cmovbe %edx,%ebx
    499f:	eb 10                	jmp    49b1 <malloc+0x61>
    49a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    49a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    49aa:	8b 48 04             	mov    0x4(%eax),%ecx
    49ad:	39 cf                	cmp    %ecx,%edi
    49af:	76 3f                	jbe    49f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    49b1:	39 05 a0 6b 00 00    	cmp    %eax,0x6ba0
    49b7:	89 c2                	mov    %eax,%edx
    49b9:	75 ed                	jne    49a8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    49bb:	83 ec 0c             	sub    $0xc,%esp
    49be:	53                   	push   %ebx
    49bf:	e8 86 fc ff ff       	call   464a <sbrk>
  if(p == (char*)-1)
    49c4:	83 c4 10             	add    $0x10,%esp
    49c7:	83 f8 ff             	cmp    $0xffffffff,%eax
    49ca:	74 1c                	je     49e8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    49cc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    49cf:	83 ec 0c             	sub    $0xc,%esp
    49d2:	83 c0 08             	add    $0x8,%eax
    49d5:	50                   	push   %eax
    49d6:	e8 e5 fe ff ff       	call   48c0 <free>
  return freep;
    49db:	8b 15 a0 6b 00 00    	mov    0x6ba0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    49e1:	83 c4 10             	add    $0x10,%esp
    49e4:	85 d2                	test   %edx,%edx
    49e6:	75 c0                	jne    49a8 <malloc+0x58>
        return 0;
    49e8:	31 c0                	xor    %eax,%eax
    49ea:	eb 1c                	jmp    4a08 <malloc+0xb8>
    49ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    49f0:	39 cf                	cmp    %ecx,%edi
    49f2:	74 1c                	je     4a10 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    49f4:	29 f9                	sub    %edi,%ecx
    49f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    49f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    49fc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    49ff:	89 15 a0 6b 00 00    	mov    %edx,0x6ba0
      return (void*)(p + 1);
    4a05:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    4a08:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4a0b:	5b                   	pop    %ebx
    4a0c:	5e                   	pop    %esi
    4a0d:	5f                   	pop    %edi
    4a0e:	5d                   	pop    %ebp
    4a0f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    4a10:	8b 08                	mov    (%eax),%ecx
    4a12:	89 0a                	mov    %ecx,(%edx)
    4a14:	eb e9                	jmp    49ff <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    4a16:	c7 05 a0 6b 00 00 a4 	movl   $0x6ba4,0x6ba0
    4a1d:	6b 00 00 
    4a20:	c7 05 a4 6b 00 00 a4 	movl   $0x6ba4,0x6ba4
    4a27:	6b 00 00 
    base.s.size = 0;
    4a2a:	b8 a4 6b 00 00       	mov    $0x6ba4,%eax
    4a2f:	c7 05 a8 6b 00 00 00 	movl   $0x0,0x6ba8
    4a36:	00 00 00 
    4a39:	e9 3e ff ff ff       	jmp    497c <malloc+0x2c>
