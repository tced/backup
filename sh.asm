
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	90                   	nop
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f b3 00 00 00    	jg     d4 <main+0xd4>
{
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 61 14 00 00       	push   $0x1461
      2b:	e8 52 0f 00 00       	call   f82 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 4a                	jmp    83 <main+0x83>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d c2 1a 00 00 20 	cmpb   $0x20,0x1ac2
      47:	0f 84 95 00 00 00    	je     e2 <main+0xe2>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 e5 0e 00 00       	call   f3a <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	74 5b                	je     b5 <main+0xb5>
      buf[strlen(buf)-1] = 0;  // chop \n
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      5a:	85 c0                	test   %eax,%eax
      5c:	75 18                	jne    76 <main+0x76>
      runcmd(parsecmd(buf));
      5e:	83 ec 0c             	sub    $0xc,%esp
      61:	68 c0 1a 00 00       	push   $0x1ac0
      66:	e8 05 0c 00 00       	call   c70 <parsecmd>
      6b:	89 04 24             	mov    %eax,(%esp)
      6e:	e8 ed 00 00 00       	call   160 <runcmd>
      73:	83 c4 10             	add    $0x10,%esp
    wait(0);
      76:	83 ec 0c             	sub    $0xc,%esp
      79:	6a 00                	push   $0x0
      7b:	e8 ca 0e 00 00       	call   f4a <wait>
      80:	83 c4 10             	add    $0x10,%esp
      break;
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
      83:	83 ec 08             	sub    $0x8,%esp
      86:	6a 64                	push   $0x64
      88:	68 c0 1a 00 00       	push   $0x1ac0
      8d:	e8 7e 03 00 00       	call   410 <getcmd>
      92:	83 c4 10             	add    $0x10,%esp
      95:	85 c0                	test   %eax,%eax
      97:	78 27                	js     c0 <main+0xc0>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      99:	80 3d c0 1a 00 00 63 	cmpb   $0x63,0x1ac0
      a0:	75 ae                	jne    50 <main+0x50>
      a2:	80 3d c1 1a 00 00 64 	cmpb   $0x64,0x1ac1
      a9:	74 95                	je     40 <main+0x40>
int
fork1(void)
{
  int pid;

  pid = fork();
      ab:	e8 8a 0e 00 00       	call   f3a <fork>
  if(pid == -1)
      b0:	83 f8 ff             	cmp    $0xffffffff,%eax
      b3:	75 a5                	jne    5a <main+0x5a>
      b5:	e8 76 00 00 00       	call   130 <fork1.part.0>
      ba:	eb ba                	jmp    76 <main+0x76>
      bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
    wait(0);
  }
  exit(0);
      c0:	83 ec 0c             	sub    $0xc,%esp
      c3:	6a 00                	push   $0x0
      c5:	e8 78 0e 00 00       	call   f42 <exit>
}
      ca:	8b 4d fc             	mov    -0x4(%ebp),%ecx
      cd:	31 c0                	xor    %eax,%eax
      cf:	c9                   	leave  
      d0:	8d 61 fc             	lea    -0x4(%ecx),%esp
      d3:	c3                   	ret    
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
    if(fd >= 3){
      close(fd);
      d4:	83 ec 0c             	sub    $0xc,%esp
      d7:	50                   	push   %eax
      d8:	e8 8d 0e 00 00       	call   f6a <close>
      break;
      dd:	83 c4 10             	add    $0x10,%esp
      e0:	eb a1                	jmp    83 <main+0x83>

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      e2:	83 ec 0c             	sub    $0xc,%esp
      e5:	68 c0 1a 00 00       	push   $0x1ac0
      ea:	e8 91 0c 00 00       	call   d80 <strlen>
      if(chdir(buf+3) < 0)
      ef:	c7 04 24 c3 1a 00 00 	movl   $0x1ac3,(%esp)

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      f6:	c6 80 bf 1a 00 00 00 	movb   $0x0,0x1abf(%eax)
      if(chdir(buf+3) < 0)
      fd:	e8 b0 0e 00 00       	call   fb2 <chdir>
     102:	83 c4 10             	add    $0x10,%esp
     105:	85 c0                	test   %eax,%eax
     107:	0f 89 76 ff ff ff    	jns    83 <main+0x83>
        printf(2, "cannot cd %s\n", buf+3);
     10d:	50                   	push   %eax
     10e:	68 c3 1a 00 00       	push   $0x1ac3
     113:	68 69 14 00 00       	push   $0x1469
     118:	6a 02                	push   $0x2
     11a:	e8 81 0f 00 00       	call   10a0 <printf>
     11f:	83 c4 10             	add    $0x10,%esp
     122:	e9 5c ff ff ff       	jmp    83 <main+0x83>
     127:	66 90                	xchg   %ax,%ax
     129:	66 90                	xchg   %ax,%ax
     12b:	66 90                	xchg   %ax,%ax
     12d:	66 90                	xchg   %ax,%ax
     12f:	90                   	nop

00000130 <fork1.part.0>:
  printf(2, "%s\n", s);
  exit(0);
}

int
fork1(void)
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 0c             	sub    $0xc,%esp
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     136:	68 c0 13 00 00       	push   $0x13c0
     13b:	68 5d 14 00 00       	push   $0x145d
     140:	6a 02                	push   $0x2
     142:	e8 59 0f 00 00       	call   10a0 <printf>
  exit(0);
     147:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     14e:	e8 ef 0d 00 00       	call   f42 <exit>
     153:	83 c4 10             	add    $0x10,%esp

  pid = fork();
  if(pid == -1)
    panic("fork");
  return pid;
}
     156:	c9                   	leave  
     157:	c3                   	ret    
     158:	90                   	nop
     159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000160 <runcmd>:
struct cmd *parsecmd(char*);

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
     160:	55                   	push   %ebp
     161:	89 e5                	mov    %esp,%ebp
     163:	53                   	push   %ebx
     164:	83 ec 14             	sub    $0x14,%esp
     167:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     16a:	85 db                	test   %ebx,%ebx
     16c:	0f 84 fe 01 00 00    	je     370 <runcmd+0x210>
    exit(0);

  switch(cmd->type){
     172:	83 3b 05             	cmpl   $0x5,(%ebx)
     175:	77 09                	ja     180 <runcmd+0x20>
     177:	8b 03                	mov    (%ebx),%eax
     179:	ff 24 85 78 14 00 00 	jmp    *0x1478(,%eax,4)
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     180:	83 ec 04             	sub    $0x4,%esp
     183:	68 c5 13 00 00       	push   $0x13c5
     188:	68 5d 14 00 00       	push   $0x145d
     18d:	6a 02                	push   $0x2
     18f:	e8 0c 0f 00 00       	call   10a0 <printf>
  exit(0);
     194:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     19b:	e8 a2 0d 00 00       	call   f42 <exit>
     1a0:	83 c4 10             	add    $0x10,%esp
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     1a3:	8b 43 04             	mov    0x4(%ebx),%eax
     1a6:	85 c0                	test   %eax,%eax
     1a8:	0f 84 da 01 00 00    	je     388 <runcmd+0x228>
      exit(0);
    exec(ecmd->argv[0], ecmd->argv);
     1ae:	8d 53 04             	lea    0x4(%ebx),%edx
     1b1:	83 ec 08             	sub    $0x8,%esp
     1b4:	52                   	push   %edx
     1b5:	50                   	push   %eax
     1b6:	e8 bf 0d 00 00       	call   f7a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1bb:	83 c4 0c             	add    $0xc,%esp
     1be:	ff 73 04             	pushl  0x4(%ebx)
     1c1:	68 cc 13 00 00       	push   $0x13cc
     1c6:	6a 02                	push   $0x2
     1c8:	e8 d3 0e 00 00       	call   10a0 <printf>
    break;
     1cd:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
    break;
  }
  exit(0);
     1d0:	83 ec 0c             	sub    $0xc,%esp
     1d3:	6a 00                	push   $0x0
     1d5:	e8 68 0d 00 00       	call   f42 <exit>
}
     1da:	83 c4 10             	add    $0x10,%esp
     1dd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1e0:	c9                   	leave  
     1e1:	c3                   	ret    
     1e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
     1e8:	e8 4d 0d 00 00       	call   f3a <fork>
  if(pid == -1)
     1ed:	83 f8 ff             	cmp    $0xffffffff,%eax
     1f0:	0f 84 aa 01 00 00    	je     3a0 <runcmd+0x240>
    wait(0);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
     1f6:	85 c0                	test   %eax,%eax
     1f8:	75 d6                	jne    1d0 <runcmd+0x70>
      runcmd(bcmd->cmd);
     1fa:	83 ec 0c             	sub    $0xc,%esp
     1fd:	ff 73 04             	pushl  0x4(%ebx)
     200:	e8 5b ff ff ff       	call   160 <runcmd>
     205:	83 c4 10             	add    $0x10,%esp
     208:	eb c6                	jmp    1d0 <runcmd+0x70>
     20a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     210:	83 ec 0c             	sub    $0xc,%esp
     213:	ff 73 14             	pushl  0x14(%ebx)
     216:	e8 4f 0d 00 00       	call   f6a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     21b:	59                   	pop    %ecx
     21c:	58                   	pop    %eax
     21d:	ff 73 10             	pushl  0x10(%ebx)
     220:	ff 73 08             	pushl  0x8(%ebx)
     223:	e8 5a 0d 00 00       	call   f82 <open>
     228:	83 c4 10             	add    $0x10,%esp
     22b:	85 c0                	test   %eax,%eax
     22d:	79 cb                	jns    1fa <runcmd+0x9a>
      printf(2, "open %s failed\n", rcmd->file);
     22f:	83 ec 04             	sub    $0x4,%esp
     232:	ff 73 08             	pushl  0x8(%ebx)
     235:	68 dc 13 00 00       	push   $0x13dc
     23a:	6a 02                	push   $0x2
     23c:	e8 5f 0e 00 00       	call   10a0 <printf>
      exit(0);
     241:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     248:	e8 f5 0c 00 00       	call   f42 <exit>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	eb a8                	jmp    1fa <runcmd+0x9a>
     252:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     258:	8d 45 f0             	lea    -0x10(%ebp),%eax
     25b:	83 ec 0c             	sub    $0xc,%esp
     25e:	50                   	push   %eax
     25f:	e8 ee 0c 00 00       	call   f52 <pipe>
     264:	83 c4 10             	add    $0x10,%esp
     267:	85 c0                	test   %eax,%eax
     269:	0f 88 71 01 00 00    	js     3e0 <runcmd+0x280>
int
fork1(void)
{
  int pid;

  pid = fork();
     26f:	e8 c6 0c 00 00       	call   f3a <fork>
  if(pid == -1)
     274:	83 f8 ff             	cmp    $0xffffffff,%eax
     277:	0f 84 33 01 00 00    	je     3b0 <runcmd+0x250>

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
     27d:	85 c0                	test   %eax,%eax
     27f:	75 31                	jne    2b2 <runcmd+0x152>
      close(1);
     281:	83 ec 0c             	sub    $0xc,%esp
     284:	6a 01                	push   $0x1
     286:	e8 df 0c 00 00       	call   f6a <close>
      dup(p[1]);
     28b:	58                   	pop    %eax
     28c:	ff 75 f4             	pushl  -0xc(%ebp)
     28f:	e8 26 0d 00 00       	call   fba <dup>
      close(p[0]);
     294:	58                   	pop    %eax
     295:	ff 75 f0             	pushl  -0x10(%ebp)
     298:	e8 cd 0c 00 00       	call   f6a <close>
      close(p[1]);
     29d:	58                   	pop    %eax
     29e:	ff 75 f4             	pushl  -0xc(%ebp)
     2a1:	e8 c4 0c 00 00       	call   f6a <close>
      runcmd(pcmd->left);
     2a6:	58                   	pop    %eax
     2a7:	ff 73 04             	pushl  0x4(%ebx)
     2aa:	e8 b1 fe ff ff       	call   160 <runcmd>
     2af:	83 c4 10             	add    $0x10,%esp
int
fork1(void)
{
  int pid;

  pid = fork();
     2b2:	e8 83 0c 00 00       	call   f3a <fork>
  if(pid == -1)
     2b7:	83 f8 ff             	cmp    $0xffffffff,%eax
     2ba:	0f 84 10 01 00 00    	je     3d0 <runcmd+0x270>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
     2c0:	85 c0                	test   %eax,%eax
     2c2:	75 31                	jne    2f5 <runcmd+0x195>
      close(0);
     2c4:	83 ec 0c             	sub    $0xc,%esp
     2c7:	6a 00                	push   $0x0
     2c9:	e8 9c 0c 00 00       	call   f6a <close>
      dup(p[0]);
     2ce:	5a                   	pop    %edx
     2cf:	ff 75 f0             	pushl  -0x10(%ebp)
     2d2:	e8 e3 0c 00 00       	call   fba <dup>
      close(p[0]);
     2d7:	59                   	pop    %ecx
     2d8:	ff 75 f0             	pushl  -0x10(%ebp)
     2db:	e8 8a 0c 00 00       	call   f6a <close>
      close(p[1]);
     2e0:	58                   	pop    %eax
     2e1:	ff 75 f4             	pushl  -0xc(%ebp)
     2e4:	e8 81 0c 00 00       	call   f6a <close>
      runcmd(pcmd->right);
     2e9:	58                   	pop    %eax
     2ea:	ff 73 08             	pushl  0x8(%ebx)
     2ed:	e8 6e fe ff ff       	call   160 <runcmd>
     2f2:	83 c4 10             	add    $0x10,%esp
    }
    close(p[0]);
     2f5:	83 ec 0c             	sub    $0xc,%esp
     2f8:	ff 75 f0             	pushl  -0x10(%ebp)
     2fb:	e8 6a 0c 00 00       	call   f6a <close>
    close(p[1]);
     300:	58                   	pop    %eax
     301:	ff 75 f4             	pushl  -0xc(%ebp)
     304:	e8 61 0c 00 00       	call   f6a <close>
    wait(0);
     309:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     310:	e8 35 0c 00 00       	call   f4a <wait>
    wait(0);
     315:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     31c:	e8 29 0c 00 00       	call   f4a <wait>
    break;
     321:	83 c4 10             	add    $0x10,%esp
     324:	e9 a7 fe ff ff       	jmp    1d0 <runcmd+0x70>
     329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
     330:	e8 05 0c 00 00       	call   f3a <fork>
  if(pid == -1)
     335:	83 f8 ff             	cmp    $0xffffffff,%eax
     338:	0f 84 82 00 00 00    	je     3c0 <runcmd+0x260>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
     33e:	85 c0                	test   %eax,%eax
     340:	75 0e                	jne    350 <runcmd+0x1f0>
      runcmd(lcmd->left);
     342:	83 ec 0c             	sub    $0xc,%esp
     345:	ff 73 04             	pushl  0x4(%ebx)
     348:	e8 13 fe ff ff       	call   160 <runcmd>
     34d:	83 c4 10             	add    $0x10,%esp
    wait(0);
     350:	83 ec 0c             	sub    $0xc,%esp
     353:	6a 00                	push   $0x0
     355:	e8 f0 0b 00 00       	call   f4a <wait>
    runcmd(lcmd->right);
     35a:	5a                   	pop    %edx
     35b:	ff 73 08             	pushl  0x8(%ebx)
     35e:	e8 fd fd ff ff       	call   160 <runcmd>
    break;
     363:	83 c4 10             	add    $0x10,%esp
     366:	e9 65 fe ff ff       	jmp    1d0 <runcmd+0x70>
     36b:	90                   	nop
     36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    exit(0);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 00                	push   $0x0
     375:	e8 c8 0b 00 00       	call   f42 <exit>
     37a:	83 c4 10             	add    $0x10,%esp
     37d:	e9 f0 fd ff ff       	jmp    172 <runcmd+0x12>
     382:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
      exit(0);
     388:	83 ec 0c             	sub    $0xc,%esp
     38b:	6a 00                	push   $0x0
     38d:	e8 b0 0b 00 00       	call   f42 <exit>
     392:	8b 43 04             	mov    0x4(%ebx),%eax
     395:	83 c4 10             	add    $0x10,%esp
     398:	e9 11 fe ff ff       	jmp    1ae <runcmd+0x4e>
     39d:	8d 76 00             	lea    0x0(%esi),%esi
     3a0:	e8 8b fd ff ff       	call   130 <fork1.part.0>
     3a5:	e9 26 fe ff ff       	jmp    1d0 <runcmd+0x70>
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3b0:	e8 7b fd ff ff       	call   130 <fork1.part.0>
     3b5:	e9 f8 fe ff ff       	jmp    2b2 <runcmd+0x152>
     3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3c0:	e8 6b fd ff ff       	call   130 <fork1.part.0>
     3c5:	eb 89                	jmp    350 <runcmd+0x1f0>
     3c7:	89 f6                	mov    %esi,%esi
     3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     3d0:	e8 5b fd ff ff       	call   130 <fork1.part.0>
     3d5:	e9 1b ff ff ff       	jmp    2f5 <runcmd+0x195>
     3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     3e0:	83 ec 04             	sub    $0x4,%esp
     3e3:	68 ec 13 00 00       	push   $0x13ec
     3e8:	68 5d 14 00 00       	push   $0x145d
     3ed:	6a 02                	push   $0x2
     3ef:	e8 ac 0c 00 00       	call   10a0 <printf>
  exit(0);
     3f4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3fb:	e8 42 0b 00 00       	call   f42 <exit>
     400:	83 c4 10             	add    $0x10,%esp
     403:	e9 67 fe ff ff       	jmp    26f <runcmd+0x10f>
     408:	90                   	nop
     409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000410 <getcmd>:
  exit(0);
}

int
getcmd(char *buf, int nbuf)
{
     410:	55                   	push   %ebp
     411:	89 e5                	mov    %esp,%ebp
     413:	56                   	push   %esi
     414:	53                   	push   %ebx
     415:	8b 75 0c             	mov    0xc(%ebp),%esi
     418:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     41b:	83 ec 08             	sub    $0x8,%esp
     41e:	68 f1 13 00 00       	push   $0x13f1
     423:	6a 02                	push   $0x2
     425:	e8 76 0c 00 00       	call   10a0 <printf>
  memset(buf, 0, nbuf);
     42a:	83 c4 0c             	add    $0xc,%esp
     42d:	56                   	push   %esi
     42e:	6a 00                	push   $0x0
     430:	53                   	push   %ebx
     431:	e8 7a 09 00 00       	call   db0 <memset>
  gets(buf, nbuf);
     436:	58                   	pop    %eax
     437:	5a                   	pop    %edx
     438:	56                   	push   %esi
     439:	53                   	push   %ebx
     43a:	e8 d1 09 00 00       	call   e10 <gets>
     43f:	83 c4 10             	add    $0x10,%esp
     442:	31 c0                	xor    %eax,%eax
     444:	80 3b 00             	cmpb   $0x0,(%ebx)
     447:	0f 94 c0             	sete   %al
  if(buf[0] == 0) // EOF
    return -1;
  return 0;
}
     44a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     44d:	f7 d8                	neg    %eax
     44f:	5b                   	pop    %ebx
     450:	5e                   	pop    %esi
     451:	5d                   	pop    %ebp
     452:	c3                   	ret    
     453:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <panic>:
  exit(0);
}

void
panic(char *s)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     466:	ff 75 08             	pushl  0x8(%ebp)
     469:	68 5d 14 00 00       	push   $0x145d
     46e:	6a 02                	push   $0x2
     470:	e8 2b 0c 00 00       	call   10a0 <printf>
  exit(0);
     475:	83 c4 10             	add    $0x10,%esp
     478:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
}
     47f:	c9                   	leave  

void
panic(char *s)
{
  printf(2, "%s\n", s);
  exit(0);
     480:	e9 bd 0a 00 00       	jmp    f42 <exit>
     485:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <fork1>:
}

int
fork1(void)
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	53                   	push   %ebx
     494:	83 ec 04             	sub    $0x4,%esp
  int pid;

  pid = fork();
     497:	e8 9e 0a 00 00       	call   f3a <fork>
  if(pid == -1)
     49c:	83 f8 ff             	cmp    $0xffffffff,%eax
int
fork1(void)
{
  int pid;

  pid = fork();
     49f:	89 c3                	mov    %eax,%ebx
  if(pid == -1)
     4a1:	74 0d                	je     4b0 <fork1+0x20>
    panic("fork");
  return pid;
}
     4a3:	83 c4 04             	add    $0x4,%esp
     4a6:	89 d8                	mov    %ebx,%eax
     4a8:	5b                   	pop    %ebx
     4a9:	5d                   	pop    %ebp
     4aa:	c3                   	ret    
     4ab:	90                   	nop
     4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     4b0:	e8 7b fc ff ff       	call   130 <fork1.part.0>
     4b5:	83 c4 04             	add    $0x4,%esp
     4b8:	89 d8                	mov    %ebx,%eax
     4ba:	5b                   	pop    %ebx
     4bb:	5d                   	pop    %ebp
     4bc:	c3                   	ret    
     4bd:	8d 76 00             	lea    0x0(%esi),%esi

000004c0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     4c0:	55                   	push   %ebp
     4c1:	89 e5                	mov    %esp,%ebp
     4c3:	53                   	push   %ebx
     4c4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4c7:	6a 54                	push   $0x54
     4c9:	e8 02 0e 00 00       	call   12d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4ce:	83 c4 0c             	add    $0xc,%esp
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4d1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4d3:	6a 54                	push   $0x54
     4d5:	6a 00                	push   $0x0
     4d7:	50                   	push   %eax
     4d8:	e8 d3 08 00 00       	call   db0 <memset>
  cmd->type = EXEC;
     4dd:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     4e3:	89 d8                	mov    %ebx,%eax
     4e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4e8:	c9                   	leave  
     4e9:	c3                   	ret    
     4ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004f0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     4f0:	55                   	push   %ebp
     4f1:	89 e5                	mov    %esp,%ebp
     4f3:	53                   	push   %ebx
     4f4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4f7:	6a 18                	push   $0x18
     4f9:	e8 d2 0d 00 00       	call   12d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4fe:	83 c4 0c             	add    $0xc,%esp
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     501:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     503:	6a 18                	push   $0x18
     505:	6a 00                	push   $0x0
     507:	50                   	push   %eax
     508:	e8 a3 08 00 00       	call   db0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     50d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     510:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     516:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     519:	8b 45 0c             	mov    0xc(%ebp),%eax
     51c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     51f:	8b 45 10             	mov    0x10(%ebp),%eax
     522:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     525:	8b 45 14             	mov    0x14(%ebp),%eax
     528:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     52b:	8b 45 18             	mov    0x18(%ebp),%eax
     52e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     531:	89 d8                	mov    %ebx,%eax
     533:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     536:	c9                   	leave  
     537:	c3                   	ret    
     538:	90                   	nop
     539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000540 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     540:	55                   	push   %ebp
     541:	89 e5                	mov    %esp,%ebp
     543:	53                   	push   %ebx
     544:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     547:	6a 0c                	push   $0xc
     549:	e8 82 0d 00 00       	call   12d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     54e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     551:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     553:	6a 0c                	push   $0xc
     555:	6a 00                	push   $0x0
     557:	50                   	push   %eax
     558:	e8 53 08 00 00       	call   db0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     55d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     560:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     566:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     569:	8b 45 0c             	mov    0xc(%ebp),%eax
     56c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     56f:	89 d8                	mov    %ebx,%eax
     571:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     574:	c9                   	leave  
     575:	c3                   	ret    
     576:	8d 76 00             	lea    0x0(%esi),%esi
     579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000580 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     580:	55                   	push   %ebp
     581:	89 e5                	mov    %esp,%ebp
     583:	53                   	push   %ebx
     584:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     587:	6a 0c                	push   $0xc
     589:	e8 42 0d 00 00       	call   12d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     58e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     591:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     593:	6a 0c                	push   $0xc
     595:	6a 00                	push   $0x0
     597:	50                   	push   %eax
     598:	e8 13 08 00 00       	call   db0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     59d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     5a0:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     5a6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     5a9:	8b 45 0c             	mov    0xc(%ebp),%eax
     5ac:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     5af:	89 d8                	mov    %ebx,%eax
     5b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5b4:	c9                   	leave  
     5b5:	c3                   	ret    
     5b6:	8d 76 00             	lea    0x0(%esi),%esi
     5b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005c0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     5c0:	55                   	push   %ebp
     5c1:	89 e5                	mov    %esp,%ebp
     5c3:	53                   	push   %ebx
     5c4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5c7:	6a 08                	push   $0x8
     5c9:	e8 02 0d 00 00       	call   12d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ce:	83 c4 0c             	add    $0xc,%esp
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5d1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5d3:	6a 08                	push   $0x8
     5d5:	6a 00                	push   $0x0
     5d7:	50                   	push   %eax
     5d8:	e8 d3 07 00 00       	call   db0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     5dd:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     5e0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     5e6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     5e9:	89 d8                	mov    %ebx,%eax
     5eb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5ee:	c9                   	leave  
     5ef:	c3                   	ret    

000005f0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5f0:	55                   	push   %ebp
     5f1:	89 e5                	mov    %esp,%ebp
     5f3:	57                   	push   %edi
     5f4:	56                   	push   %esi
     5f5:	53                   	push   %ebx
     5f6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     5f9:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5fc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     5ff:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     602:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     604:	39 df                	cmp    %ebx,%edi
     606:	72 13                	jb     61b <gettoken+0x2b>
     608:	eb 29                	jmp    633 <gettoken+0x43>
     60a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     610:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     613:	39 fb                	cmp    %edi,%ebx
     615:	0f 84 ed 00 00 00    	je     708 <gettoken+0x118>
     61b:	0f be 07             	movsbl (%edi),%eax
     61e:	83 ec 08             	sub    $0x8,%esp
     621:	50                   	push   %eax
     622:	68 a4 1a 00 00       	push   $0x1aa4
     627:	e8 a4 07 00 00       	call   dd0 <strchr>
     62c:	83 c4 10             	add    $0x10,%esp
     62f:	85 c0                	test   %eax,%eax
     631:	75 dd                	jne    610 <gettoken+0x20>
    s++;
  if(q)
     633:	85 f6                	test   %esi,%esi
     635:	74 02                	je     639 <gettoken+0x49>
    *q = s;
     637:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     639:	0f be 37             	movsbl (%edi),%esi
     63c:	89 f1                	mov    %esi,%ecx
     63e:	89 f0                	mov    %esi,%eax
  switch(*s){
     640:	80 f9 29             	cmp    $0x29,%cl
     643:	7f 5b                	jg     6a0 <gettoken+0xb0>
     645:	80 f9 28             	cmp    $0x28,%cl
     648:	7d 61                	jge    6ab <gettoken+0xbb>
     64a:	84 c9                	test   %cl,%cl
     64c:	0f 85 de 00 00 00    	jne    730 <gettoken+0x140>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     652:	8b 55 14             	mov    0x14(%ebp),%edx
     655:	85 d2                	test   %edx,%edx
     657:	74 05                	je     65e <gettoken+0x6e>
    *eq = s;
     659:	8b 45 14             	mov    0x14(%ebp),%eax
     65c:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     65e:	39 fb                	cmp    %edi,%ebx
     660:	77 0d                	ja     66f <gettoken+0x7f>
     662:	eb 23                	jmp    687 <gettoken+0x97>
     664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     668:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     66b:	39 fb                	cmp    %edi,%ebx
     66d:	74 18                	je     687 <gettoken+0x97>
     66f:	0f be 07             	movsbl (%edi),%eax
     672:	83 ec 08             	sub    $0x8,%esp
     675:	50                   	push   %eax
     676:	68 a4 1a 00 00       	push   $0x1aa4
     67b:	e8 50 07 00 00       	call   dd0 <strchr>
     680:	83 c4 10             	add    $0x10,%esp
     683:	85 c0                	test   %eax,%eax
     685:	75 e1                	jne    668 <gettoken+0x78>
    s++;
  *ps = s;
     687:	8b 45 08             	mov    0x8(%ebp),%eax
     68a:	89 38                	mov    %edi,(%eax)
  return ret;
}
     68c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     68f:	89 f0                	mov    %esi,%eax
     691:	5b                   	pop    %ebx
     692:	5e                   	pop    %esi
     693:	5f                   	pop    %edi
     694:	5d                   	pop    %ebp
     695:	c3                   	ret    
     696:	8d 76 00             	lea    0x0(%esi),%esi
     699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     6a0:	80 f9 3e             	cmp    $0x3e,%cl
     6a3:	75 0b                	jne    6b0 <gettoken+0xc0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     6a5:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     6a9:	74 75                	je     720 <gettoken+0x130>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     6ab:	83 c7 01             	add    $0x1,%edi
     6ae:	eb a2                	jmp    652 <gettoken+0x62>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     6b0:	7f 5e                	jg     710 <gettoken+0x120>
     6b2:	83 e9 3b             	sub    $0x3b,%ecx
     6b5:	80 f9 01             	cmp    $0x1,%cl
     6b8:	76 f1                	jbe    6ab <gettoken+0xbb>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6ba:	39 fb                	cmp    %edi,%ebx
     6bc:	77 24                	ja     6e2 <gettoken+0xf2>
     6be:	eb 7c                	jmp    73c <gettoken+0x14c>
     6c0:	0f be 07             	movsbl (%edi),%eax
     6c3:	83 ec 08             	sub    $0x8,%esp
     6c6:	50                   	push   %eax
     6c7:	68 9c 1a 00 00       	push   $0x1a9c
     6cc:	e8 ff 06 00 00       	call   dd0 <strchr>
     6d1:	83 c4 10             	add    $0x10,%esp
     6d4:	85 c0                	test   %eax,%eax
     6d6:	75 1f                	jne    6f7 <gettoken+0x107>
      s++;
     6d8:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6db:	39 fb                	cmp    %edi,%ebx
     6dd:	74 5b                	je     73a <gettoken+0x14a>
     6df:	0f be 07             	movsbl (%edi),%eax
     6e2:	83 ec 08             	sub    $0x8,%esp
     6e5:	50                   	push   %eax
     6e6:	68 a4 1a 00 00       	push   $0x1aa4
     6eb:	e8 e0 06 00 00       	call   dd0 <strchr>
     6f0:	83 c4 10             	add    $0x10,%esp
     6f3:	85 c0                	test   %eax,%eax
     6f5:	74 c9                	je     6c0 <gettoken+0xd0>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     6f7:	be 61 00 00 00       	mov    $0x61,%esi
     6fc:	e9 51 ff ff ff       	jmp    652 <gettoken+0x62>
     701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     708:	89 df                	mov    %ebx,%edi
     70a:	e9 24 ff ff ff       	jmp    633 <gettoken+0x43>
     70f:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     710:	80 f9 7c             	cmp    $0x7c,%cl
     713:	74 96                	je     6ab <gettoken+0xbb>
     715:	eb a3                	jmp    6ba <gettoken+0xca>
     717:	89 f6                	mov    %esi,%esi
     719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     720:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     723:	be 2b 00 00 00       	mov    $0x2b,%esi
     728:	e9 25 ff ff ff       	jmp    652 <gettoken+0x62>
     72d:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     730:	80 f9 26             	cmp    $0x26,%cl
     733:	75 85                	jne    6ba <gettoken+0xca>
     735:	e9 71 ff ff ff       	jmp    6ab <gettoken+0xbb>
     73a:	89 df                	mov    %ebx,%edi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     73c:	8b 45 14             	mov    0x14(%ebp),%eax
     73f:	be 61 00 00 00       	mov    $0x61,%esi
     744:	85 c0                	test   %eax,%eax
     746:	0f 85 0d ff ff ff    	jne    659 <gettoken+0x69>
     74c:	e9 36 ff ff ff       	jmp    687 <gettoken+0x97>
     751:	eb 0d                	jmp    760 <peek>
     753:	90                   	nop
     754:	90                   	nop
     755:	90                   	nop
     756:	90                   	nop
     757:	90                   	nop
     758:	90                   	nop
     759:	90                   	nop
     75a:	90                   	nop
     75b:	90                   	nop
     75c:	90                   	nop
     75d:	90                   	nop
     75e:	90                   	nop
     75f:	90                   	nop

00000760 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     760:	55                   	push   %ebp
     761:	89 e5                	mov    %esp,%ebp
     763:	57                   	push   %edi
     764:	56                   	push   %esi
     765:	53                   	push   %ebx
     766:	83 ec 0c             	sub    $0xc,%esp
     769:	8b 7d 08             	mov    0x8(%ebp),%edi
     76c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     76f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     771:	39 f3                	cmp    %esi,%ebx
     773:	72 12                	jb     787 <peek+0x27>
     775:	eb 28                	jmp    79f <peek+0x3f>
     777:	89 f6                	mov    %esi,%esi
     779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     780:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     783:	39 de                	cmp    %ebx,%esi
     785:	74 18                	je     79f <peek+0x3f>
     787:	0f be 03             	movsbl (%ebx),%eax
     78a:	83 ec 08             	sub    $0x8,%esp
     78d:	50                   	push   %eax
     78e:	68 a4 1a 00 00       	push   $0x1aa4
     793:	e8 38 06 00 00       	call   dd0 <strchr>
     798:	83 c4 10             	add    $0x10,%esp
     79b:	85 c0                	test   %eax,%eax
     79d:	75 e1                	jne    780 <peek+0x20>
    s++;
  *ps = s;
     79f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     7a1:	0f be 13             	movsbl (%ebx),%edx
     7a4:	31 c0                	xor    %eax,%eax
     7a6:	84 d2                	test   %dl,%dl
     7a8:	74 17                	je     7c1 <peek+0x61>
     7aa:	83 ec 08             	sub    $0x8,%esp
     7ad:	52                   	push   %edx
     7ae:	ff 75 10             	pushl  0x10(%ebp)
     7b1:	e8 1a 06 00 00       	call   dd0 <strchr>
     7b6:	83 c4 10             	add    $0x10,%esp
     7b9:	85 c0                	test   %eax,%eax
     7bb:	0f 95 c0             	setne  %al
     7be:	0f b6 c0             	movzbl %al,%eax
}
     7c1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7c4:	5b                   	pop    %ebx
     7c5:	5e                   	pop    %esi
     7c6:	5f                   	pop    %edi
     7c7:	5d                   	pop    %ebp
     7c8:	c3                   	ret    
     7c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007d0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     7d0:	55                   	push   %ebp
     7d1:	89 e5                	mov    %esp,%ebp
     7d3:	57                   	push   %edi
     7d4:	56                   	push   %esi
     7d5:	53                   	push   %ebx
     7d6:	83 ec 1c             	sub    $0x1c,%esp
     7d9:	8b 7d 0c             	mov    0xc(%ebp),%edi
     7dc:	8b 75 10             	mov    0x10(%ebp),%esi
     7df:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     7e0:	83 ec 04             	sub    $0x4,%esp
     7e3:	68 11 14 00 00       	push   $0x1411
     7e8:	56                   	push   %esi
     7e9:	57                   	push   %edi
     7ea:	e8 71 ff ff ff       	call   760 <peek>
     7ef:	83 c4 10             	add    $0x10,%esp
     7f2:	85 c0                	test   %eax,%eax
     7f4:	0f 84 8e 00 00 00    	je     888 <parseredirs+0xb8>
    tok = gettoken(ps, es, 0, 0);
     7fa:	6a 00                	push   $0x0
     7fc:	6a 00                	push   $0x0
     7fe:	56                   	push   %esi
     7ff:	57                   	push   %edi
     800:	e8 eb fd ff ff       	call   5f0 <gettoken>
     805:	89 c3                	mov    %eax,%ebx
    if(gettoken(ps, es, &q, &eq) != 'a')
     807:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     80a:	50                   	push   %eax
     80b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     80e:	50                   	push   %eax
     80f:	56                   	push   %esi
     810:	57                   	push   %edi
     811:	e8 da fd ff ff       	call   5f0 <gettoken>
     816:	83 c4 20             	add    $0x20,%esp
     819:	83 f8 61             	cmp    $0x61,%eax
     81c:	74 23                	je     841 <parseredirs+0x71>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     81e:	83 ec 04             	sub    $0x4,%esp
     821:	68 f4 13 00 00       	push   $0x13f4
     826:	68 5d 14 00 00       	push   $0x145d
     82b:	6a 02                	push   $0x2
     82d:	e8 6e 08 00 00       	call   10a0 <printf>
  exit(0);
     832:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     839:	e8 04 07 00 00       	call   f42 <exit>
     83e:	83 c4 10             	add    $0x10,%esp

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
     841:	83 fb 3c             	cmp    $0x3c,%ebx
     844:	74 32                	je     878 <parseredirs+0xa8>
     846:	83 fb 3e             	cmp    $0x3e,%ebx
     849:	74 05                	je     850 <parseredirs+0x80>
     84b:	83 fb 2b             	cmp    $0x2b,%ebx
     84e:	75 90                	jne    7e0 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     850:	83 ec 0c             	sub    $0xc,%esp
     853:	6a 01                	push   $0x1
     855:	68 01 02 00 00       	push   $0x201
     85a:	ff 75 e4             	pushl  -0x1c(%ebp)
     85d:	ff 75 e0             	pushl  -0x20(%ebp)
     860:	ff 75 08             	pushl  0x8(%ebp)
     863:	e8 88 fc ff ff       	call   4f0 <redircmd>
      break;
     868:	83 c4 20             	add    $0x20,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     86b:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     86e:	e9 6d ff ff ff       	jmp    7e0 <parseredirs+0x10>
     873:	90                   	nop
     874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     878:	83 ec 0c             	sub    $0xc,%esp
     87b:	6a 00                	push   $0x0
     87d:	6a 00                	push   $0x0
     87f:	eb d9                	jmp    85a <parseredirs+0x8a>
     881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     888:	8b 45 08             	mov    0x8(%ebp),%eax
     88b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     88e:	5b                   	pop    %ebx
     88f:	5e                   	pop    %esi
     890:	5f                   	pop    %edi
     891:	5d                   	pop    %ebp
     892:	c3                   	ret    
     893:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008a0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	57                   	push   %edi
     8a4:	56                   	push   %esi
     8a5:	53                   	push   %ebx
     8a6:	83 ec 30             	sub    $0x30,%esp
     8a9:	8b 75 08             	mov    0x8(%ebp),%esi
     8ac:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     8af:	68 14 14 00 00       	push   $0x1414
     8b4:	57                   	push   %edi
     8b5:	56                   	push   %esi
     8b6:	e8 a5 fe ff ff       	call   760 <peek>
     8bb:	83 c4 10             	add    $0x10,%esp
     8be:	85 c0                	test   %eax,%eax
     8c0:	0f 85 0a 01 00 00    	jne    9d0 <parseexec+0x130>
    return parseblock(ps, es);

  ret = execcmd();
     8c6:	e8 f5 fb ff ff       	call   4c0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     8cb:	83 ec 04             	sub    $0x4,%esp
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     8ce:	89 c3                	mov    %eax,%ebx
     8d0:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     8d3:	57                   	push   %edi
     8d4:	56                   	push   %esi
     8d5:	8d 5b 04             	lea    0x4(%ebx),%ebx
     8d8:	50                   	push   %eax
     8d9:	e8 f2 fe ff ff       	call   7d0 <parseredirs>
     8de:	83 c4 10             	add    $0x10,%esp
     8e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     8e4:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     8eb:	eb 19                	jmp    906 <parseexec+0x66>
     8ed:	8d 76 00             	lea    0x0(%esi),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     8f0:	83 ec 04             	sub    $0x4,%esp
     8f3:	83 c3 04             	add    $0x4,%ebx
     8f6:	57                   	push   %edi
     8f7:	56                   	push   %esi
     8f8:	ff 75 d0             	pushl  -0x30(%ebp)
     8fb:	e8 d0 fe ff ff       	call   7d0 <parseredirs>
     900:	83 c4 10             	add    $0x10,%esp
     903:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     906:	83 ec 04             	sub    $0x4,%esp
     909:	68 2b 14 00 00       	push   $0x142b
     90e:	57                   	push   %edi
     90f:	56                   	push   %esi
     910:	e8 4b fe ff ff       	call   760 <peek>
     915:	83 c4 10             	add    $0x10,%esp
     918:	85 c0                	test   %eax,%eax
     91a:	0f 85 88 00 00 00    	jne    9a8 <parseexec+0x108>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     920:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     923:	50                   	push   %eax
     924:	8d 45 e0             	lea    -0x20(%ebp),%eax
     927:	50                   	push   %eax
     928:	57                   	push   %edi
     929:	56                   	push   %esi
     92a:	e8 c1 fc ff ff       	call   5f0 <gettoken>
     92f:	83 c4 10             	add    $0x10,%esp
     932:	85 c0                	test   %eax,%eax
     934:	74 72                	je     9a8 <parseexec+0x108>
      break;
    if(tok != 'a')
     936:	83 f8 61             	cmp    $0x61,%eax
     939:	74 23                	je     95e <parseexec+0xbe>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     93b:	83 ec 04             	sub    $0x4,%esp
     93e:	68 16 14 00 00       	push   $0x1416
     943:	68 5d 14 00 00       	push   $0x145d
     948:	6a 02                	push   $0x2
     94a:	e8 51 07 00 00       	call   10a0 <printf>
  exit(0);
     94f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     956:	e8 e7 05 00 00       	call   f42 <exit>
     95b:	83 c4 10             	add    $0x10,%esp
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     95e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    cmd->eargv[argc] = eq;
    argc++;
     961:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     965:	89 03                	mov    %eax,(%ebx)
    cmd->eargv[argc] = eq;
     967:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     96a:	89 43 28             	mov    %eax,0x28(%ebx)
    argc++;
     96d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    if(argc >= MAXARGS)
     970:	83 f8 09             	cmp    $0x9,%eax
     973:	0f 8e 77 ff ff ff    	jle    8f0 <parseexec+0x50>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     979:	83 ec 04             	sub    $0x4,%esp
     97c:	68 1d 14 00 00       	push   $0x141d
     981:	68 5d 14 00 00       	push   $0x145d
     986:	6a 02                	push   $0x2
     988:	e8 13 07 00 00       	call   10a0 <printf>
  exit(0);
     98d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     994:	e8 a9 05 00 00       	call   f42 <exit>
     999:	83 c4 10             	add    $0x10,%esp
     99c:	e9 4f ff ff ff       	jmp    8f0 <parseexec+0x50>
     9a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     9a8:	8b 45 cc             	mov    -0x34(%ebp),%eax
     9ab:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     9ae:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     9b1:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     9b8:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
     9bf:	8b 45 d0             	mov    -0x30(%ebp),%eax
  return ret;
}
     9c2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c5:	5b                   	pop    %ebx
     9c6:	5e                   	pop    %esi
     9c7:	5f                   	pop    %edi
     9c8:	5d                   	pop    %ebp
     9c9:	c3                   	ret    
     9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     9d0:	83 ec 08             	sub    $0x8,%esp
     9d3:	57                   	push   %edi
     9d4:	56                   	push   %esi
     9d5:	e8 26 01 00 00       	call   b00 <parseblock>
     9da:	83 c4 10             	add    $0x10,%esp
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     9dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9e0:	5b                   	pop    %ebx
     9e1:	5e                   	pop    %esi
     9e2:	5f                   	pop    %edi
     9e3:	5d                   	pop    %ebp
     9e4:	c3                   	ret    
     9e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     9e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009f0 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     9f0:	55                   	push   %ebp
     9f1:	89 e5                	mov    %esp,%ebp
     9f3:	57                   	push   %edi
     9f4:	56                   	push   %esi
     9f5:	53                   	push   %ebx
     9f6:	83 ec 14             	sub    $0x14,%esp
     9f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9fc:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     9ff:	56                   	push   %esi
     a00:	53                   	push   %ebx
     a01:	e8 9a fe ff ff       	call   8a0 <parseexec>
  if(peek(ps, es, "|")){
     a06:	83 c4 0c             	add    $0xc,%esp
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     a09:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     a0b:	68 30 14 00 00       	push   $0x1430
     a10:	56                   	push   %esi
     a11:	53                   	push   %ebx
     a12:	e8 49 fd ff ff       	call   760 <peek>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	85 c0                	test   %eax,%eax
     a1c:	75 12                	jne    a30 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     a1e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a21:	89 f8                	mov    %edi,%eax
     a23:	5b                   	pop    %ebx
     a24:	5e                   	pop    %esi
     a25:	5f                   	pop    %edi
     a26:	5d                   	pop    %ebp
     a27:	c3                   	ret    
     a28:	90                   	nop
     a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     a30:	6a 00                	push   $0x0
     a32:	6a 00                	push   $0x0
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 b5 fb ff ff       	call   5f0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a3b:	58                   	pop    %eax
     a3c:	5a                   	pop    %edx
     a3d:	56                   	push   %esi
     a3e:	53                   	push   %ebx
     a3f:	e8 ac ff ff ff       	call   9f0 <parsepipe>
     a44:	89 7d 08             	mov    %edi,0x8(%ebp)
     a47:	89 45 0c             	mov    %eax,0xc(%ebp)
     a4a:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     a4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a50:	5b                   	pop    %ebx
     a51:	5e                   	pop    %esi
     a52:	5f                   	pop    %edi
     a53:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a54:	e9 e7 fa ff ff       	jmp    540 <pipecmd>
     a59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a60 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     a60:	55                   	push   %ebp
     a61:	89 e5                	mov    %esp,%ebp
     a63:	57                   	push   %edi
     a64:	56                   	push   %esi
     a65:	53                   	push   %ebx
     a66:	83 ec 14             	sub    $0x14,%esp
     a69:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a6c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     a6f:	56                   	push   %esi
     a70:	53                   	push   %ebx
     a71:	e8 7a ff ff ff       	call   9f0 <parsepipe>
  while(peek(ps, es, "&")){
     a76:	83 c4 10             	add    $0x10,%esp
struct cmd*
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     a79:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a7b:	eb 1b                	jmp    a98 <parseline+0x38>
     a7d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     a80:	6a 00                	push   $0x0
     a82:	6a 00                	push   $0x0
     a84:	56                   	push   %esi
     a85:	53                   	push   %ebx
     a86:	e8 65 fb ff ff       	call   5f0 <gettoken>
    cmd = backcmd(cmd);
     a8b:	89 3c 24             	mov    %edi,(%esp)
     a8e:	e8 2d fb ff ff       	call   5c0 <backcmd>
     a93:	83 c4 10             	add    $0x10,%esp
     a96:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
     a98:	83 ec 04             	sub    $0x4,%esp
     a9b:	68 32 14 00 00       	push   $0x1432
     aa0:	56                   	push   %esi
     aa1:	53                   	push   %ebx
     aa2:	e8 b9 fc ff ff       	call   760 <peek>
     aa7:	83 c4 10             	add    $0x10,%esp
     aaa:	85 c0                	test   %eax,%eax
     aac:	75 d2                	jne    a80 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
     aae:	83 ec 04             	sub    $0x4,%esp
     ab1:	68 2e 14 00 00       	push   $0x142e
     ab6:	56                   	push   %esi
     ab7:	53                   	push   %ebx
     ab8:	e8 a3 fc ff ff       	call   760 <peek>
     abd:	83 c4 10             	add    $0x10,%esp
     ac0:	85 c0                	test   %eax,%eax
     ac2:	75 0c                	jne    ad0 <parseline+0x70>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
     ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ac7:	89 f8                	mov    %edi,%eax
     ac9:	5b                   	pop    %ebx
     aca:	5e                   	pop    %esi
     acb:	5f                   	pop    %edi
     acc:	5d                   	pop    %ebp
     acd:	c3                   	ret    
     ace:	66 90                	xchg   %ax,%ax
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
     ad0:	6a 00                	push   $0x0
     ad2:	6a 00                	push   $0x0
     ad4:	56                   	push   %esi
     ad5:	53                   	push   %ebx
     ad6:	e8 15 fb ff ff       	call   5f0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     adb:	58                   	pop    %eax
     adc:	5a                   	pop    %edx
     add:	56                   	push   %esi
     ade:	53                   	push   %ebx
     adf:	e8 7c ff ff ff       	call   a60 <parseline>
     ae4:	89 7d 08             	mov    %edi,0x8(%ebp)
     ae7:	89 45 0c             	mov    %eax,0xc(%ebp)
     aea:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     aed:	8d 65 f4             	lea    -0xc(%ebp),%esp
     af0:	5b                   	pop    %ebx
     af1:	5e                   	pop    %esi
     af2:	5f                   	pop    %edi
     af3:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
     af4:	e9 87 fa ff ff       	jmp    580 <listcmd>
     af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b00 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
     b00:	55                   	push   %ebp
     b01:	89 e5                	mov    %esp,%ebp
     b03:	57                   	push   %edi
     b04:	56                   	push   %esi
     b05:	53                   	push   %ebx
     b06:	83 ec 10             	sub    $0x10,%esp
     b09:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b0c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
     b0f:	68 14 14 00 00       	push   $0x1414
     b14:	56                   	push   %esi
     b15:	53                   	push   %ebx
     b16:	e8 45 fc ff ff       	call   760 <peek>
     b1b:	83 c4 10             	add    $0x10,%esp
     b1e:	85 c0                	test   %eax,%eax
     b20:	74 6e                	je     b90 <parseblock+0x90>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
     b22:	6a 00                	push   $0x0
     b24:	6a 00                	push   $0x0
     b26:	56                   	push   %esi
     b27:	53                   	push   %ebx
     b28:	e8 c3 fa ff ff       	call   5f0 <gettoken>
  cmd = parseline(ps, es);
     b2d:	58                   	pop    %eax
     b2e:	5a                   	pop    %edx
     b2f:	56                   	push   %esi
     b30:	53                   	push   %ebx
     b31:	e8 2a ff ff ff       	call   a60 <parseline>
  if(!peek(ps, es, ")"))
     b36:	83 c4 0c             	add    $0xc,%esp
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
     b39:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     b3b:	68 50 14 00 00       	push   $0x1450
     b40:	56                   	push   %esi
     b41:	53                   	push   %ebx
     b42:	e8 19 fc ff ff       	call   760 <peek>
     b47:	83 c4 10             	add    $0x10,%esp
     b4a:	85 c0                	test   %eax,%eax
     b4c:	75 23                	jne    b71 <parseblock+0x71>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     b4e:	83 ec 04             	sub    $0x4,%esp
     b51:	68 3f 14 00 00       	push   $0x143f
     b56:	68 5d 14 00 00       	push   $0x145d
     b5b:	6a 02                	push   $0x2
     b5d:	e8 3e 05 00 00       	call   10a0 <printf>
  exit(0);
     b62:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b69:	e8 d4 03 00 00       	call   f42 <exit>
     b6e:	83 c4 10             	add    $0x10,%esp
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
     b71:	6a 00                	push   $0x0
     b73:	6a 00                	push   $0x0
     b75:	56                   	push   %esi
     b76:	53                   	push   %ebx
     b77:	e8 74 fa ff ff       	call   5f0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b7c:	83 c4 0c             	add    $0xc,%esp
     b7f:	56                   	push   %esi
     b80:	53                   	push   %ebx
     b81:	57                   	push   %edi
     b82:	e8 49 fc ff ff       	call   7d0 <parseredirs>
  return cmd;
}
     b87:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b8a:	5b                   	pop    %ebx
     b8b:	5e                   	pop    %esi
     b8c:	5f                   	pop    %edi
     b8d:	5d                   	pop    %ebp
     b8e:	c3                   	ret    
     b8f:	90                   	nop
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     b90:	83 ec 04             	sub    $0x4,%esp
     b93:	68 34 14 00 00       	push   $0x1434
     b98:	68 5d 14 00 00       	push   $0x145d
     b9d:	6a 02                	push   $0x2
     b9f:	e8 fc 04 00 00       	call   10a0 <printf>
  exit(0);
     ba4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bab:	e8 92 03 00 00       	call   f42 <exit>
     bb0:	83 c4 10             	add    $0x10,%esp
     bb3:	e9 6a ff ff ff       	jmp    b22 <parseblock+0x22>
     bb8:	90                   	nop
     bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000bc0 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	53                   	push   %ebx
     bc4:	83 ec 04             	sub    $0x4,%esp
     bc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     bca:	85 db                	test   %ebx,%ebx
     bcc:	0f 84 96 00 00 00    	je     c68 <nulterminate+0xa8>
    return 0;

  switch(cmd->type){
     bd2:	83 3b 05             	cmpl   $0x5,(%ebx)
     bd5:	77 48                	ja     c1f <nulterminate+0x5f>
     bd7:	8b 03                	mov    (%ebx),%eax
     bd9:	ff 24 85 90 14 00 00 	jmp    *0x1490(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     be0:	83 ec 0c             	sub    $0xc,%esp
     be3:	ff 73 04             	pushl  0x4(%ebx)
     be6:	e8 d5 ff ff ff       	call   bc0 <nulterminate>
    nulterminate(lcmd->right);
     beb:	58                   	pop    %eax
     bec:	ff 73 08             	pushl  0x8(%ebx)
     bef:	e8 cc ff ff ff       	call   bc0 <nulterminate>
    break;
     bf4:	83 c4 10             	add    $0x10,%esp
     bf7:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bf9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bfc:	c9                   	leave  
     bfd:	c3                   	ret    
     bfe:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     c00:	8b 4b 04             	mov    0x4(%ebx),%ecx
     c03:	8d 43 2c             	lea    0x2c(%ebx),%eax
     c06:	85 c9                	test   %ecx,%ecx
     c08:	74 15                	je     c1f <nulterminate+0x5f>
     c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     c10:	8b 10                	mov    (%eax),%edx
     c12:	83 c0 04             	add    $0x4,%eax
     c15:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     c18:	8b 50 d8             	mov    -0x28(%eax),%edx
     c1b:	85 d2                	test   %edx,%edx
     c1d:	75 f1                	jne    c10 <nulterminate+0x50>
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
     c1f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     c21:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c24:	c9                   	leave  
     c25:	c3                   	ret    
     c26:	8d 76 00             	lea    0x0(%esi),%esi
     c29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     c30:	83 ec 0c             	sub    $0xc,%esp
     c33:	ff 73 04             	pushl  0x4(%ebx)
     c36:	e8 85 ff ff ff       	call   bc0 <nulterminate>
    break;
     c3b:	89 d8                	mov    %ebx,%eax
     c3d:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     c40:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c43:	c9                   	leave  
     c44:	c3                   	ret    
     c45:	8d 76 00             	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 73 04             	pushl  0x4(%ebx)
     c4e:	e8 6d ff ff ff       	call   bc0 <nulterminate>
    *rcmd->efile = 0;
     c53:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     c56:	83 c4 10             	add    $0x10,%esp
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
     c59:	c6 00 00             	movb   $0x0,(%eax)
    break;
     c5c:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     c5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c61:	c9                   	leave  
     c62:	c3                   	ret    
     c63:	90                   	nop
     c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
     c68:	31 c0                	xor    %eax,%eax
     c6a:	eb 8d                	jmp    bf9 <nulterminate+0x39>
     c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c70 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	56                   	push   %esi
     c74:	53                   	push   %ebx
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     c75:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c78:	83 ec 0c             	sub    $0xc,%esp
     c7b:	53                   	push   %ebx
     c7c:	e8 ff 00 00 00       	call   d80 <strlen>
     c81:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     c83:	58                   	pop    %eax
     c84:	8d 45 08             	lea    0x8(%ebp),%eax
     c87:	5a                   	pop    %edx
     c88:	53                   	push   %ebx
     c89:	50                   	push   %eax
     c8a:	e8 d1 fd ff ff       	call   a60 <parseline>
     c8f:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c91:	8d 45 08             	lea    0x8(%ebp),%eax
     c94:	83 c4 0c             	add    $0xc,%esp
     c97:	68 db 13 00 00       	push   $0x13db
     c9c:	53                   	push   %ebx
     c9d:	50                   	push   %eax
     c9e:	e8 bd fa ff ff       	call   760 <peek>
  if(s != es){
     ca3:	8b 45 08             	mov    0x8(%ebp),%eax
     ca6:	83 c4 10             	add    $0x10,%esp
     ca9:	39 c3                	cmp    %eax,%ebx
     cab:	74 33                	je     ce0 <parsecmd+0x70>
    printf(2, "leftovers: %s\n", s);
     cad:	83 ec 04             	sub    $0x4,%esp
     cb0:	50                   	push   %eax
     cb1:	68 52 14 00 00       	push   $0x1452
     cb6:	6a 02                	push   $0x2
     cb8:	e8 e3 03 00 00       	call   10a0 <printf>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     cbd:	83 c4 0c             	add    $0xc,%esp
     cc0:	68 16 14 00 00       	push   $0x1416
     cc5:	68 5d 14 00 00       	push   $0x145d
     cca:	6a 02                	push   $0x2
     ccc:	e8 cf 03 00 00       	call   10a0 <printf>
  exit(0);
     cd1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cd8:	e8 65 02 00 00       	call   f42 <exit>
     cdd:	83 c4 10             	add    $0x10,%esp
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
     ce0:	83 ec 0c             	sub    $0xc,%esp
     ce3:	56                   	push   %esi
     ce4:	e8 d7 fe ff ff       	call   bc0 <nulterminate>
  return cmd;
}
     ce9:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cec:	89 f0                	mov    %esi,%eax
     cee:	5b                   	pop    %ebx
     cef:	5e                   	pop    %esi
     cf0:	5d                   	pop    %ebp
     cf1:	c3                   	ret    
     cf2:	66 90                	xchg   %ax,%ax
     cf4:	66 90                	xchg   %ax,%ax
     cf6:	66 90                	xchg   %ax,%ax
     cf8:	66 90                	xchg   %ax,%ax
     cfa:	66 90                	xchg   %ax,%ax
     cfc:	66 90                	xchg   %ax,%ax
     cfe:	66 90                	xchg   %ax,%ax

00000d00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     d00:	55                   	push   %ebp
     d01:	89 e5                	mov    %esp,%ebp
     d03:	53                   	push   %ebx
     d04:	8b 45 08             	mov    0x8(%ebp),%eax
     d07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     d0a:	89 c2                	mov    %eax,%edx
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d10:	83 c1 01             	add    $0x1,%ecx
     d13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     d17:	83 c2 01             	add    $0x1,%edx
     d1a:	84 db                	test   %bl,%bl
     d1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     d1f:	75 ef                	jne    d10 <strcpy+0x10>
    ;
  return os;
}
     d21:	5b                   	pop    %ebx
     d22:	5d                   	pop    %ebp
     d23:	c3                   	ret    
     d24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000d30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	56                   	push   %esi
     d34:	53                   	push   %ebx
     d35:	8b 55 08             	mov    0x8(%ebp),%edx
     d38:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     d3b:	0f b6 02             	movzbl (%edx),%eax
     d3e:	0f b6 19             	movzbl (%ecx),%ebx
     d41:	84 c0                	test   %al,%al
     d43:	75 1e                	jne    d63 <strcmp+0x33>
     d45:	eb 29                	jmp    d70 <strcmp+0x40>
     d47:	89 f6                	mov    %esi,%esi
     d49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     d50:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d53:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     d56:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d59:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     d5d:	84 c0                	test   %al,%al
     d5f:	74 0f                	je     d70 <strcmp+0x40>
     d61:	89 f1                	mov    %esi,%ecx
     d63:	38 d8                	cmp    %bl,%al
     d65:	74 e9                	je     d50 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     d67:	29 d8                	sub    %ebx,%eax
}
     d69:	5b                   	pop    %ebx
     d6a:	5e                   	pop    %esi
     d6b:	5d                   	pop    %ebp
     d6c:	c3                   	ret    
     d6d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d70:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     d72:	29 d8                	sub    %ebx,%eax
}
     d74:	5b                   	pop    %ebx
     d75:	5e                   	pop    %esi
     d76:	5d                   	pop    %ebp
     d77:	c3                   	ret    
     d78:	90                   	nop
     d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d80 <strlen>:

uint
strlen(char *s)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d86:	80 39 00             	cmpb   $0x0,(%ecx)
     d89:	74 12                	je     d9d <strlen+0x1d>
     d8b:	31 d2                	xor    %edx,%edx
     d8d:	8d 76 00             	lea    0x0(%esi),%esi
     d90:	83 c2 01             	add    $0x1,%edx
     d93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d97:	89 d0                	mov    %edx,%eax
     d99:	75 f5                	jne    d90 <strlen+0x10>
    ;
  return n;
}
     d9b:	5d                   	pop    %ebp
     d9c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     d9d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     d9f:	5d                   	pop    %ebp
     da0:	c3                   	ret    
     da1:	eb 0d                	jmp    db0 <memset>
     da3:	90                   	nop
     da4:	90                   	nop
     da5:	90                   	nop
     da6:	90                   	nop
     da7:	90                   	nop
     da8:	90                   	nop
     da9:	90                   	nop
     daa:	90                   	nop
     dab:	90                   	nop
     dac:	90                   	nop
     dad:	90                   	nop
     dae:	90                   	nop
     daf:	90                   	nop

00000db0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	57                   	push   %edi
     db4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     db7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     dba:	8b 45 0c             	mov    0xc(%ebp),%eax
     dbd:	89 d7                	mov    %edx,%edi
     dbf:	fc                   	cld    
     dc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     dc2:	89 d0                	mov    %edx,%eax
     dc4:	5f                   	pop    %edi
     dc5:	5d                   	pop    %ebp
     dc6:	c3                   	ret    
     dc7:	89 f6                	mov    %esi,%esi
     dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000dd0 <strchr>:

char*
strchr(const char *s, char c)
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	53                   	push   %ebx
     dd4:	8b 45 08             	mov    0x8(%ebp),%eax
     dd7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     dda:	0f b6 10             	movzbl (%eax),%edx
     ddd:	84 d2                	test   %dl,%dl
     ddf:	74 1d                	je     dfe <strchr+0x2e>
    if(*s == c)
     de1:	38 d3                	cmp    %dl,%bl
     de3:	89 d9                	mov    %ebx,%ecx
     de5:	75 0d                	jne    df4 <strchr+0x24>
     de7:	eb 17                	jmp    e00 <strchr+0x30>
     de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     df0:	38 ca                	cmp    %cl,%dl
     df2:	74 0c                	je     e00 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     df4:	83 c0 01             	add    $0x1,%eax
     df7:	0f b6 10             	movzbl (%eax),%edx
     dfa:	84 d2                	test   %dl,%dl
     dfc:	75 f2                	jne    df0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     dfe:	31 c0                	xor    %eax,%eax
}
     e00:	5b                   	pop    %ebx
     e01:	5d                   	pop    %ebp
     e02:	c3                   	ret    
     e03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e10 <gets>:

char*
gets(char *buf, int max)
{
     e10:	55                   	push   %ebp
     e11:	89 e5                	mov    %esp,%ebp
     e13:	57                   	push   %edi
     e14:	56                   	push   %esi
     e15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e16:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
     e18:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
     e1b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e1e:	eb 29                	jmp    e49 <gets+0x39>
    cc = read(0, &c, 1);
     e20:	83 ec 04             	sub    $0x4,%esp
     e23:	6a 01                	push   $0x1
     e25:	57                   	push   %edi
     e26:	6a 00                	push   $0x0
     e28:	e8 2d 01 00 00       	call   f5a <read>
    if(cc < 1)
     e2d:	83 c4 10             	add    $0x10,%esp
     e30:	85 c0                	test   %eax,%eax
     e32:	7e 1d                	jle    e51 <gets+0x41>
      break;
    buf[i++] = c;
     e34:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     e38:	8b 55 08             	mov    0x8(%ebp),%edx
     e3b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
     e3d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     e3f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     e43:	74 1b                	je     e60 <gets+0x50>
     e45:	3c 0d                	cmp    $0xd,%al
     e47:	74 17                	je     e60 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e49:	8d 5e 01             	lea    0x1(%esi),%ebx
     e4c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     e4f:	7c cf                	jl     e20 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e51:	8b 45 08             	mov    0x8(%ebp),%eax
     e54:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e58:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e5b:	5b                   	pop    %ebx
     e5c:	5e                   	pop    %esi
     e5d:	5f                   	pop    %edi
     e5e:	5d                   	pop    %ebp
     e5f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e60:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e63:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e65:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e69:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e6c:	5b                   	pop    %ebx
     e6d:	5e                   	pop    %esi
     e6e:	5f                   	pop    %edi
     e6f:	5d                   	pop    %ebp
     e70:	c3                   	ret    
     e71:	eb 0d                	jmp    e80 <stat>
     e73:	90                   	nop
     e74:	90                   	nop
     e75:	90                   	nop
     e76:	90                   	nop
     e77:	90                   	nop
     e78:	90                   	nop
     e79:	90                   	nop
     e7a:	90                   	nop
     e7b:	90                   	nop
     e7c:	90                   	nop
     e7d:	90                   	nop
     e7e:	90                   	nop
     e7f:	90                   	nop

00000e80 <stat>:

int
stat(char *n, struct stat *st)
{
     e80:	55                   	push   %ebp
     e81:	89 e5                	mov    %esp,%ebp
     e83:	56                   	push   %esi
     e84:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e85:	83 ec 08             	sub    $0x8,%esp
     e88:	6a 00                	push   $0x0
     e8a:	ff 75 08             	pushl  0x8(%ebp)
     e8d:	e8 f0 00 00 00       	call   f82 <open>
  if(fd < 0)
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	78 27                	js     ec0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     e99:	83 ec 08             	sub    $0x8,%esp
     e9c:	ff 75 0c             	pushl  0xc(%ebp)
     e9f:	89 c3                	mov    %eax,%ebx
     ea1:	50                   	push   %eax
     ea2:	e8 f3 00 00 00       	call   f9a <fstat>
     ea7:	89 c6                	mov    %eax,%esi
  close(fd);
     ea9:	89 1c 24             	mov    %ebx,(%esp)
     eac:	e8 b9 00 00 00       	call   f6a <close>
  return r;
     eb1:	83 c4 10             	add    $0x10,%esp
     eb4:	89 f0                	mov    %esi,%eax
}
     eb6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     eb9:	5b                   	pop    %ebx
     eba:	5e                   	pop    %esi
     ebb:	5d                   	pop    %ebp
     ebc:	c3                   	ret    
     ebd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     ec0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     ec5:	eb ef                	jmp    eb6 <stat+0x36>
     ec7:	89 f6                	mov    %esi,%esi
     ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ed0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     ed0:	55                   	push   %ebp
     ed1:	89 e5                	mov    %esp,%ebp
     ed3:	53                   	push   %ebx
     ed4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     ed7:	0f be 11             	movsbl (%ecx),%edx
     eda:	8d 42 d0             	lea    -0x30(%edx),%eax
     edd:	3c 09                	cmp    $0x9,%al
     edf:	b8 00 00 00 00       	mov    $0x0,%eax
     ee4:	77 1f                	ja     f05 <atoi+0x35>
     ee6:	8d 76 00             	lea    0x0(%esi),%esi
     ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     ef0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     ef3:	83 c1 01             	add    $0x1,%ecx
     ef6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     efa:	0f be 11             	movsbl (%ecx),%edx
     efd:	8d 5a d0             	lea    -0x30(%edx),%ebx
     f00:	80 fb 09             	cmp    $0x9,%bl
     f03:	76 eb                	jbe    ef0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
     f05:	5b                   	pop    %ebx
     f06:	5d                   	pop    %ebp
     f07:	c3                   	ret    
     f08:	90                   	nop
     f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000f10 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     f10:	55                   	push   %ebp
     f11:	89 e5                	mov    %esp,%ebp
     f13:	56                   	push   %esi
     f14:	53                   	push   %ebx
     f15:	8b 5d 10             	mov    0x10(%ebp),%ebx
     f18:	8b 45 08             	mov    0x8(%ebp),%eax
     f1b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f1e:	85 db                	test   %ebx,%ebx
     f20:	7e 14                	jle    f36 <memmove+0x26>
     f22:	31 d2                	xor    %edx,%edx
     f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     f28:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     f2c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     f2f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f32:	39 da                	cmp    %ebx,%edx
     f34:	75 f2                	jne    f28 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     f36:	5b                   	pop    %ebx
     f37:	5e                   	pop    %esi
     f38:	5d                   	pop    %ebp
     f39:	c3                   	ret    

00000f3a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     f3a:	b8 01 00 00 00       	mov    $0x1,%eax
     f3f:	cd 40                	int    $0x40
     f41:	c3                   	ret    

00000f42 <exit>:
SYSCALL(exit)
     f42:	b8 02 00 00 00       	mov    $0x2,%eax
     f47:	cd 40                	int    $0x40
     f49:	c3                   	ret    

00000f4a <wait>:
SYSCALL(wait)
     f4a:	b8 03 00 00 00       	mov    $0x3,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    

00000f52 <pipe>:
SYSCALL(pipe)
     f52:	b8 04 00 00 00       	mov    $0x4,%eax
     f57:	cd 40                	int    $0x40
     f59:	c3                   	ret    

00000f5a <read>:
SYSCALL(read)
     f5a:	b8 05 00 00 00       	mov    $0x5,%eax
     f5f:	cd 40                	int    $0x40
     f61:	c3                   	ret    

00000f62 <write>:
SYSCALL(write)
     f62:	b8 10 00 00 00       	mov    $0x10,%eax
     f67:	cd 40                	int    $0x40
     f69:	c3                   	ret    

00000f6a <close>:
SYSCALL(close)
     f6a:	b8 15 00 00 00       	mov    $0x15,%eax
     f6f:	cd 40                	int    $0x40
     f71:	c3                   	ret    

00000f72 <kill>:
SYSCALL(kill)
     f72:	b8 06 00 00 00       	mov    $0x6,%eax
     f77:	cd 40                	int    $0x40
     f79:	c3                   	ret    

00000f7a <exec>:
SYSCALL(exec)
     f7a:	b8 07 00 00 00       	mov    $0x7,%eax
     f7f:	cd 40                	int    $0x40
     f81:	c3                   	ret    

00000f82 <open>:
SYSCALL(open)
     f82:	b8 0f 00 00 00       	mov    $0xf,%eax
     f87:	cd 40                	int    $0x40
     f89:	c3                   	ret    

00000f8a <mknod>:
SYSCALL(mknod)
     f8a:	b8 11 00 00 00       	mov    $0x11,%eax
     f8f:	cd 40                	int    $0x40
     f91:	c3                   	ret    

00000f92 <unlink>:
SYSCALL(unlink)
     f92:	b8 12 00 00 00       	mov    $0x12,%eax
     f97:	cd 40                	int    $0x40
     f99:	c3                   	ret    

00000f9a <fstat>:
SYSCALL(fstat)
     f9a:	b8 08 00 00 00       	mov    $0x8,%eax
     f9f:	cd 40                	int    $0x40
     fa1:	c3                   	ret    

00000fa2 <link>:
SYSCALL(link)
     fa2:	b8 13 00 00 00       	mov    $0x13,%eax
     fa7:	cd 40                	int    $0x40
     fa9:	c3                   	ret    

00000faa <mkdir>:
SYSCALL(mkdir)
     faa:	b8 14 00 00 00       	mov    $0x14,%eax
     faf:	cd 40                	int    $0x40
     fb1:	c3                   	ret    

00000fb2 <chdir>:
SYSCALL(chdir)
     fb2:	b8 09 00 00 00       	mov    $0x9,%eax
     fb7:	cd 40                	int    $0x40
     fb9:	c3                   	ret    

00000fba <dup>:
SYSCALL(dup)
     fba:	b8 0a 00 00 00       	mov    $0xa,%eax
     fbf:	cd 40                	int    $0x40
     fc1:	c3                   	ret    

00000fc2 <getpid>:
SYSCALL(getpid)
     fc2:	b8 0b 00 00 00       	mov    $0xb,%eax
     fc7:	cd 40                	int    $0x40
     fc9:	c3                   	ret    

00000fca <sbrk>:
SYSCALL(sbrk)
     fca:	b8 0c 00 00 00       	mov    $0xc,%eax
     fcf:	cd 40                	int    $0x40
     fd1:	c3                   	ret    

00000fd2 <sleep>:
SYSCALL(sleep)
     fd2:	b8 0d 00 00 00       	mov    $0xd,%eax
     fd7:	cd 40                	int    $0x40
     fd9:	c3                   	ret    

00000fda <uptime>:
SYSCALL(uptime)
     fda:	b8 0e 00 00 00       	mov    $0xe,%eax
     fdf:	cd 40                	int    $0x40
     fe1:	c3                   	ret    

00000fe2 <waitpid>:
SYSCALL(waitpid)
     fe2:	b8 16 00 00 00       	mov    $0x16,%eax
     fe7:	cd 40                	int    $0x40
     fe9:	c3                   	ret    

00000fea <setpriority>:
SYSCALL(setpriority)
     fea:	b8 17 00 00 00       	mov    $0x17,%eax
     fef:	cd 40                	int    $0x40
     ff1:	c3                   	ret    
     ff2:	66 90                	xchg   %ax,%ax
     ff4:	66 90                	xchg   %ax,%ax
     ff6:	66 90                	xchg   %ax,%ax
     ff8:	66 90                	xchg   %ax,%ax
     ffa:	66 90                	xchg   %ax,%ax
     ffc:	66 90                	xchg   %ax,%ax
     ffe:	66 90                	xchg   %ax,%ax

00001000 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	57                   	push   %edi
    1004:	56                   	push   %esi
    1005:	53                   	push   %ebx
    1006:	89 c6                	mov    %eax,%esi
    1008:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    100b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    100e:	85 db                	test   %ebx,%ebx
    1010:	74 7e                	je     1090 <printint+0x90>
    1012:	89 d0                	mov    %edx,%eax
    1014:	c1 e8 1f             	shr    $0x1f,%eax
    1017:	84 c0                	test   %al,%al
    1019:	74 75                	je     1090 <printint+0x90>
    neg = 1;
    x = -xx;
    101b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    101d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    1024:	f7 d8                	neg    %eax
    1026:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1029:	31 ff                	xor    %edi,%edi
    102b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    102e:	89 ce                	mov    %ecx,%esi
    1030:	eb 08                	jmp    103a <printint+0x3a>
    1032:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1038:	89 cf                	mov    %ecx,%edi
    103a:	31 d2                	xor    %edx,%edx
    103c:	8d 4f 01             	lea    0x1(%edi),%ecx
    103f:	f7 f6                	div    %esi
    1041:	0f b6 92 b0 14 00 00 	movzbl 0x14b0(%edx),%edx
  }while((x /= base) != 0);
    1048:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    104a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    104d:	75 e9                	jne    1038 <printint+0x38>
  if(neg)
    104f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1052:	8b 75 c0             	mov    -0x40(%ebp),%esi
    1055:	85 c0                	test   %eax,%eax
    1057:	74 08                	je     1061 <printint+0x61>
    buf[i++] = '-';
    1059:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    105e:	8d 4f 02             	lea    0x2(%edi),%ecx
    1061:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    1065:	8d 76 00             	lea    0x0(%esi),%esi
    1068:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    106b:	83 ec 04             	sub    $0x4,%esp
    106e:	83 ef 01             	sub    $0x1,%edi
    1071:	6a 01                	push   $0x1
    1073:	53                   	push   %ebx
    1074:	56                   	push   %esi
    1075:	88 45 d7             	mov    %al,-0x29(%ebp)
    1078:	e8 e5 fe ff ff       	call   f62 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    107d:	83 c4 10             	add    $0x10,%esp
    1080:	39 df                	cmp    %ebx,%edi
    1082:	75 e4                	jne    1068 <printint+0x68>
    putc(fd, buf[i]);
}
    1084:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1087:	5b                   	pop    %ebx
    1088:	5e                   	pop    %esi
    1089:	5f                   	pop    %edi
    108a:	5d                   	pop    %ebp
    108b:	c3                   	ret    
    108c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    1090:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    1092:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1099:	eb 8b                	jmp    1026 <printint+0x26>
    109b:	90                   	nop
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000010a0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    10a0:	55                   	push   %ebp
    10a1:	89 e5                	mov    %esp,%ebp
    10a3:	57                   	push   %edi
    10a4:	56                   	push   %esi
    10a5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10a6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    10a9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10ac:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    10af:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10b2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    10b5:	0f b6 1e             	movzbl (%esi),%ebx
    10b8:	83 c6 01             	add    $0x1,%esi
    10bb:	84 db                	test   %bl,%bl
    10bd:	0f 84 b0 00 00 00    	je     1173 <printf+0xd3>
    10c3:	31 d2                	xor    %edx,%edx
    10c5:	eb 39                	jmp    1100 <printf+0x60>
    10c7:	89 f6                	mov    %esi,%esi
    10c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10d0:	83 f8 25             	cmp    $0x25,%eax
    10d3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    10d6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10db:	74 18                	je     10f5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10dd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    10e0:	83 ec 04             	sub    $0x4,%esp
    10e3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    10e6:	6a 01                	push   $0x1
    10e8:	50                   	push   %eax
    10e9:	57                   	push   %edi
    10ea:	e8 73 fe ff ff       	call   f62 <write>
    10ef:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    10f2:	83 c4 10             	add    $0x10,%esp
    10f5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10f8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    10fc:	84 db                	test   %bl,%bl
    10fe:	74 73                	je     1173 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    1100:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    1102:	0f be cb             	movsbl %bl,%ecx
    1105:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1108:	74 c6                	je     10d0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    110a:	83 fa 25             	cmp    $0x25,%edx
    110d:	75 e6                	jne    10f5 <printf+0x55>
      if(c == 'd'){
    110f:	83 f8 64             	cmp    $0x64,%eax
    1112:	0f 84 f8 00 00 00    	je     1210 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1118:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    111e:	83 f9 70             	cmp    $0x70,%ecx
    1121:	74 5d                	je     1180 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1123:	83 f8 73             	cmp    $0x73,%eax
    1126:	0f 84 84 00 00 00    	je     11b0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    112c:	83 f8 63             	cmp    $0x63,%eax
    112f:	0f 84 ea 00 00 00    	je     121f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1135:	83 f8 25             	cmp    $0x25,%eax
    1138:	0f 84 c2 00 00 00    	je     1200 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    113e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1141:	83 ec 04             	sub    $0x4,%esp
    1144:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1148:	6a 01                	push   $0x1
    114a:	50                   	push   %eax
    114b:	57                   	push   %edi
    114c:	e8 11 fe ff ff       	call   f62 <write>
    1151:	83 c4 0c             	add    $0xc,%esp
    1154:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1157:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    115a:	6a 01                	push   $0x1
    115c:	50                   	push   %eax
    115d:	57                   	push   %edi
    115e:	83 c6 01             	add    $0x1,%esi
    1161:	e8 fc fd ff ff       	call   f62 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1166:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    116a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    116d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    116f:	84 db                	test   %bl,%bl
    1171:	75 8d                	jne    1100 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1173:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1176:	5b                   	pop    %ebx
    1177:	5e                   	pop    %esi
    1178:	5f                   	pop    %edi
    1179:	5d                   	pop    %ebp
    117a:	c3                   	ret    
    117b:	90                   	nop
    117c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1180:	83 ec 0c             	sub    $0xc,%esp
    1183:	b9 10 00 00 00       	mov    $0x10,%ecx
    1188:	6a 00                	push   $0x0
    118a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    118d:	89 f8                	mov    %edi,%eax
    118f:	8b 13                	mov    (%ebx),%edx
    1191:	e8 6a fe ff ff       	call   1000 <printint>
        ap++;
    1196:	89 d8                	mov    %ebx,%eax
    1198:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    119b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    119d:	83 c0 04             	add    $0x4,%eax
    11a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    11a3:	e9 4d ff ff ff       	jmp    10f5 <printf+0x55>
    11a8:	90                   	nop
    11a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    11b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    11b3:	8b 18                	mov    (%eax),%ebx
        ap++;
    11b5:	83 c0 04             	add    $0x4,%eax
    11b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    11bb:	b8 a8 14 00 00       	mov    $0x14a8,%eax
    11c0:	85 db                	test   %ebx,%ebx
    11c2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    11c5:	0f b6 03             	movzbl (%ebx),%eax
    11c8:	84 c0                	test   %al,%al
    11ca:	74 23                	je     11ef <printf+0x14f>
    11cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11d0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11d3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    11d6:	83 ec 04             	sub    $0x4,%esp
    11d9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    11db:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11de:	50                   	push   %eax
    11df:	57                   	push   %edi
    11e0:	e8 7d fd ff ff       	call   f62 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    11e5:	0f b6 03             	movzbl (%ebx),%eax
    11e8:	83 c4 10             	add    $0x10,%esp
    11eb:	84 c0                	test   %al,%al
    11ed:	75 e1                	jne    11d0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    11ef:	31 d2                	xor    %edx,%edx
    11f1:	e9 ff fe ff ff       	jmp    10f5 <printf+0x55>
    11f6:	8d 76 00             	lea    0x0(%esi),%esi
    11f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1200:	83 ec 04             	sub    $0x4,%esp
    1203:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1206:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1209:	6a 01                	push   $0x1
    120b:	e9 4c ff ff ff       	jmp    115c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1210:	83 ec 0c             	sub    $0xc,%esp
    1213:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1218:	6a 01                	push   $0x1
    121a:	e9 6b ff ff ff       	jmp    118a <printf+0xea>
    121f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1222:	83 ec 04             	sub    $0x4,%esp
    1225:	8b 03                	mov    (%ebx),%eax
    1227:	6a 01                	push   $0x1
    1229:	88 45 e4             	mov    %al,-0x1c(%ebp)
    122c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    122f:	50                   	push   %eax
    1230:	57                   	push   %edi
    1231:	e8 2c fd ff ff       	call   f62 <write>
    1236:	e9 5b ff ff ff       	jmp    1196 <printf+0xf6>
    123b:	66 90                	xchg   %ax,%ax
    123d:	66 90                	xchg   %ax,%ax
    123f:	90                   	nop

00001240 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1240:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1241:	a1 24 1b 00 00       	mov    0x1b24,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1246:	89 e5                	mov    %esp,%ebp
    1248:	57                   	push   %edi
    1249:	56                   	push   %esi
    124a:	53                   	push   %ebx
    124b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    124e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1250:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1253:	39 c8                	cmp    %ecx,%eax
    1255:	73 19                	jae    1270 <free+0x30>
    1257:	89 f6                	mov    %esi,%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1260:	39 d1                	cmp    %edx,%ecx
    1262:	72 1c                	jb     1280 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1264:	39 d0                	cmp    %edx,%eax
    1266:	73 18                	jae    1280 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1268:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    126a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    126c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    126e:	72 f0                	jb     1260 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1270:	39 d0                	cmp    %edx,%eax
    1272:	72 f4                	jb     1268 <free+0x28>
    1274:	39 d1                	cmp    %edx,%ecx
    1276:	73 f0                	jae    1268 <free+0x28>
    1278:	90                   	nop
    1279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1280:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1283:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1286:	39 d7                	cmp    %edx,%edi
    1288:	74 19                	je     12a3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    128a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    128d:	8b 50 04             	mov    0x4(%eax),%edx
    1290:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1293:	39 f1                	cmp    %esi,%ecx
    1295:	74 23                	je     12ba <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1297:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1299:	a3 24 1b 00 00       	mov    %eax,0x1b24
}
    129e:	5b                   	pop    %ebx
    129f:	5e                   	pop    %esi
    12a0:	5f                   	pop    %edi
    12a1:	5d                   	pop    %ebp
    12a2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    12a3:	03 72 04             	add    0x4(%edx),%esi
    12a6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    12a9:	8b 10                	mov    (%eax),%edx
    12ab:	8b 12                	mov    (%edx),%edx
    12ad:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    12b0:	8b 50 04             	mov    0x4(%eax),%edx
    12b3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    12b6:	39 f1                	cmp    %esi,%ecx
    12b8:	75 dd                	jne    1297 <free+0x57>
    p->s.size += bp->s.size;
    12ba:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    12bd:	a3 24 1b 00 00       	mov    %eax,0x1b24
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    12c2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    12c5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    12c8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    12ca:	5b                   	pop    %ebx
    12cb:	5e                   	pop    %esi
    12cc:	5f                   	pop    %edi
    12cd:	5d                   	pop    %ebp
    12ce:	c3                   	ret    
    12cf:	90                   	nop

000012d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	57                   	push   %edi
    12d4:	56                   	push   %esi
    12d5:	53                   	push   %ebx
    12d6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    12d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    12dc:	8b 15 24 1b 00 00    	mov    0x1b24,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    12e2:	8d 78 07             	lea    0x7(%eax),%edi
    12e5:	c1 ef 03             	shr    $0x3,%edi
    12e8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    12eb:	85 d2                	test   %edx,%edx
    12ed:	0f 84 a3 00 00 00    	je     1396 <malloc+0xc6>
    12f3:	8b 02                	mov    (%edx),%eax
    12f5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12f8:	39 cf                	cmp    %ecx,%edi
    12fa:	76 74                	jbe    1370 <malloc+0xa0>
    12fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1302:	be 00 10 00 00       	mov    $0x1000,%esi
    1307:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    130e:	0f 43 f7             	cmovae %edi,%esi
    1311:	ba 00 80 00 00       	mov    $0x8000,%edx
    1316:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    131c:	0f 46 da             	cmovbe %edx,%ebx
    131f:	eb 10                	jmp    1331 <malloc+0x61>
    1321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1328:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    132a:	8b 48 04             	mov    0x4(%eax),%ecx
    132d:	39 cf                	cmp    %ecx,%edi
    132f:	76 3f                	jbe    1370 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1331:	39 05 24 1b 00 00    	cmp    %eax,0x1b24
    1337:	89 c2                	mov    %eax,%edx
    1339:	75 ed                	jne    1328 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    133b:	83 ec 0c             	sub    $0xc,%esp
    133e:	53                   	push   %ebx
    133f:	e8 86 fc ff ff       	call   fca <sbrk>
  if(p == (char*)-1)
    1344:	83 c4 10             	add    $0x10,%esp
    1347:	83 f8 ff             	cmp    $0xffffffff,%eax
    134a:	74 1c                	je     1368 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    134c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    134f:	83 ec 0c             	sub    $0xc,%esp
    1352:	83 c0 08             	add    $0x8,%eax
    1355:	50                   	push   %eax
    1356:	e8 e5 fe ff ff       	call   1240 <free>
  return freep;
    135b:	8b 15 24 1b 00 00    	mov    0x1b24,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1361:	83 c4 10             	add    $0x10,%esp
    1364:	85 d2                	test   %edx,%edx
    1366:	75 c0                	jne    1328 <malloc+0x58>
        return 0;
    1368:	31 c0                	xor    %eax,%eax
    136a:	eb 1c                	jmp    1388 <malloc+0xb8>
    136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1370:	39 cf                	cmp    %ecx,%edi
    1372:	74 1c                	je     1390 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1374:	29 f9                	sub    %edi,%ecx
    1376:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1379:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    137c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    137f:	89 15 24 1b 00 00    	mov    %edx,0x1b24
      return (void*)(p + 1);
    1385:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1388:	8d 65 f4             	lea    -0xc(%ebp),%esp
    138b:	5b                   	pop    %ebx
    138c:	5e                   	pop    %esi
    138d:	5f                   	pop    %edi
    138e:	5d                   	pop    %ebp
    138f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1390:	8b 08                	mov    (%eax),%ecx
    1392:	89 0a                	mov    %ecx,(%edx)
    1394:	eb e9                	jmp    137f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    1396:	c7 05 24 1b 00 00 28 	movl   $0x1b28,0x1b24
    139d:	1b 00 00 
    13a0:	c7 05 28 1b 00 00 28 	movl   $0x1b28,0x1b28
    13a7:	1b 00 00 
    base.s.size = 0;
    13aa:	b8 28 1b 00 00       	mov    $0x1b28,%eax
    13af:	c7 05 2c 1b 00 00 00 	movl   $0x0,0x1b2c
    13b6:	00 00 00 
    13b9:	e9 3e ff ff ff       	jmp    12fc <malloc+0x2c>
