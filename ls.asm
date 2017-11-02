
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	bb 01 00 00 00       	mov    $0x1,%ebx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 31                	mov    (%ecx),%esi
  1b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1e:	83 fe 01             	cmp    $0x1,%esi
  21:	7e 32                	jle    55 <main+0x55>
  23:	90                   	nop
  24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ls(".");
    exit(0);
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 34 9f             	pushl  (%edi,%ebx,4)

  if(argc < 2){
    ls(".");
    exit(0);
  }
  for(i=1; i<argc; i++)
  2e:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  31:	e8 ea 00 00 00       	call   120 <ls>

  if(argc < 2){
    ls(".");
    exit(0);
  }
  for(i=1; i<argc; i++)
  36:	83 c4 10             	add    $0x10,%esp
  39:	39 de                	cmp    %ebx,%esi
  3b:	75 eb                	jne    28 <main+0x28>
    ls(argv[i]);
  exit(0);
  3d:	83 ec 0c             	sub    $0xc,%esp
  40:	6a 00                	push   $0x0
  42:	e8 5b 05 00 00       	call   5a2 <exit>
}
  47:	8d 65 f0             	lea    -0x10(%ebp),%esp
  4a:	31 c0                	xor    %eax,%eax
  4c:	59                   	pop    %ecx
  4d:	5b                   	pop    %ebx
  4e:	5e                   	pop    %esi
  4f:	5f                   	pop    %edi
  50:	5d                   	pop    %ebp
  51:	8d 61 fc             	lea    -0x4(%ecx),%esp
  54:	c3                   	ret    
main(int argc, char *argv[])
{
  int i;

  if(argc < 2){
    ls(".");
  55:	83 ec 0c             	sub    $0xc,%esp
  58:	68 68 0a 00 00       	push   $0xa68
  5d:	e8 be 00 00 00       	call   120 <ls>
    exit(0);
  62:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  69:	e8 34 05 00 00       	call   5a2 <exit>
  6e:	83 c4 10             	add    $0x10,%esp
  71:	eb ca                	jmp    3d <main+0x3d>
  73:	66 90                	xchg   %ax,%ax
  75:	66 90                	xchg   %ax,%ax
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <fmtname>:
#include "user.h"
#include "fs.h"

char*
fmtname(char *path)
{
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	56                   	push   %esi
  84:	53                   	push   %ebx
  85:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  88:	83 ec 0c             	sub    $0xc,%esp
  8b:	53                   	push   %ebx
  8c:	e8 4f 03 00 00       	call   3e0 <strlen>
  91:	83 c4 10             	add    $0x10,%esp
  94:	01 d8                	add    %ebx,%eax
  96:	73 0f                	jae    a7 <fmtname+0x27>
  98:	eb 12                	jmp    ac <fmtname+0x2c>
  9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  a0:	83 e8 01             	sub    $0x1,%eax
  a3:	39 c3                	cmp    %eax,%ebx
  a5:	77 05                	ja     ac <fmtname+0x2c>
  a7:	80 38 2f             	cmpb   $0x2f,(%eax)
  aa:	75 f4                	jne    a0 <fmtname+0x20>
    ;
  p++;
  ac:	8d 58 01             	lea    0x1(%eax),%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
  af:	83 ec 0c             	sub    $0xc,%esp
  b2:	53                   	push   %ebx
  b3:	e8 28 03 00 00       	call   3e0 <strlen>
  b8:	83 c4 10             	add    $0x10,%esp
  bb:	83 f8 0d             	cmp    $0xd,%eax
  be:	77 4a                	ja     10a <fmtname+0x8a>
    return p;
  memmove(buf, p, strlen(p));
  c0:	83 ec 0c             	sub    $0xc,%esp
  c3:	53                   	push   %ebx
  c4:	e8 17 03 00 00       	call   3e0 <strlen>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	50                   	push   %eax
  cd:	53                   	push   %ebx
  ce:	68 94 0d 00 00       	push   $0xd94
  d3:	e8 98 04 00 00       	call   570 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  d8:	89 1c 24             	mov    %ebx,(%esp)
  db:	e8 00 03 00 00       	call   3e0 <strlen>
  e0:	89 1c 24             	mov    %ebx,(%esp)
  e3:	89 c6                	mov    %eax,%esi
  return buf;
  e5:	bb 94 0d 00 00       	mov    $0xd94,%ebx

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ea:	e8 f1 02 00 00       	call   3e0 <strlen>
  ef:	ba 0e 00 00 00       	mov    $0xe,%edx
  f4:	83 c4 0c             	add    $0xc,%esp
  f7:	05 94 0d 00 00       	add    $0xd94,%eax
  fc:	29 f2                	sub    %esi,%edx
  fe:	52                   	push   %edx
  ff:	6a 20                	push   $0x20
 101:	50                   	push   %eax
 102:	e8 09 03 00 00       	call   410 <memset>
  return buf;
 107:	83 c4 10             	add    $0x10,%esp
}
 10a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 10d:	89 d8                	mov    %ebx,%eax
 10f:	5b                   	pop    %ebx
 110:	5e                   	pop    %esi
 111:	5d                   	pop    %ebp
 112:	c3                   	ret    
 113:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000120 <ls>:

void
ls(char *path)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	56                   	push   %esi
 125:	53                   	push   %ebx
 126:	81 ec 64 02 00 00    	sub    $0x264,%esp
 12c:	8b 7d 08             	mov    0x8(%ebp),%edi
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
 12f:	6a 00                	push   $0x0
 131:	57                   	push   %edi
 132:	e8 ab 04 00 00       	call   5e2 <open>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	85 c0                	test   %eax,%eax
 13c:	0f 88 9e 01 00 00    	js     2e0 <ls+0x1c0>
    printf(2, "ls: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
 142:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 148:	83 ec 08             	sub    $0x8,%esp
 14b:	89 c3                	mov    %eax,%ebx
 14d:	56                   	push   %esi
 14e:	50                   	push   %eax
 14f:	e8 a6 04 00 00       	call   5fa <fstat>
 154:	83 c4 10             	add    $0x10,%esp
 157:	85 c0                	test   %eax,%eax
 159:	0f 88 c1 01 00 00    	js     320 <ls+0x200>
    printf(2, "ls: cannot stat %s\n", path);
    close(fd);
    return;
  }

  switch(st.type){
 15f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 166:	66 83 f8 01          	cmp    $0x1,%ax
 16a:	74 54                	je     1c0 <ls+0xa0>
 16c:	66 83 f8 02          	cmp    $0x2,%ax
 170:	75 37                	jne    1a9 <ls+0x89>
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 172:	83 ec 0c             	sub    $0xc,%esp
 175:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 17b:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 181:	57                   	push   %edi
 182:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 188:	e8 f3 fe ff ff       	call   80 <fmtname>
 18d:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 193:	59                   	pop    %ecx
 194:	5f                   	pop    %edi
 195:	52                   	push   %edx
 196:	56                   	push   %esi
 197:	6a 02                	push   $0x2
 199:	50                   	push   %eax
 19a:	68 48 0a 00 00       	push   $0xa48
 19f:	6a 01                	push   $0x1
 1a1:	e8 5a 05 00 00       	call   700 <printf>
    break;
 1a6:	83 c4 20             	add    $0x20,%esp
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);
 1a9:	83 ec 0c             	sub    $0xc,%esp
 1ac:	53                   	push   %ebx
 1ad:	e8 18 04 00 00       	call   5ca <close>
 1b2:	83 c4 10             	add    $0x10,%esp
}
 1b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1b8:	5b                   	pop    %ebx
 1b9:	5e                   	pop    %esi
 1ba:	5f                   	pop    %edi
 1bb:	5d                   	pop    %ebp
 1bc:	c3                   	ret    
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
  case T_FILE:
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1c0:	83 ec 0c             	sub    $0xc,%esp
 1c3:	57                   	push   %edi
 1c4:	e8 17 02 00 00       	call   3e0 <strlen>
 1c9:	83 c0 10             	add    $0x10,%eax
 1cc:	83 c4 10             	add    $0x10,%esp
 1cf:	3d 00 02 00 00       	cmp    $0x200,%eax
 1d4:	0f 87 26 01 00 00    	ja     300 <ls+0x1e0>
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
 1da:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1e0:	83 ec 08             	sub    $0x8,%esp
 1e3:	57                   	push   %edi
 1e4:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 1ea:	50                   	push   %eax
 1eb:	e8 70 01 00 00       	call   360 <strcpy>
    p = buf+strlen(buf);
 1f0:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1f6:	89 04 24             	mov    %eax,(%esp)
 1f9:	e8 e2 01 00 00       	call   3e0 <strlen>
 1fe:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 204:	83 c4 10             	add    $0x10,%esp
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
 207:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    *p++ = '/';
 20a:	8d 84 05 e9 fd ff ff 	lea    -0x217(%ebp,%eax,1),%eax
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
 211:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%ebp)
    *p++ = '/';
 217:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)
 21d:	c6 01 2f             	movb   $0x2f,(%ecx)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 220:	83 ec 04             	sub    $0x4,%esp
 223:	6a 10                	push   $0x10
 225:	57                   	push   %edi
 226:	53                   	push   %ebx
 227:	e8 8e 03 00 00       	call   5ba <read>
 22c:	83 c4 10             	add    $0x10,%esp
 22f:	83 f8 10             	cmp    $0x10,%eax
 232:	0f 85 71 ff ff ff    	jne    1a9 <ls+0x89>
      if(de.inum == 0)
 238:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 23f:	00 
 240:	74 de                	je     220 <ls+0x100>
        continue;
      memmove(p, de.name, DIRSIZ);
 242:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 248:	83 ec 04             	sub    $0x4,%esp
 24b:	6a 0e                	push   $0xe
 24d:	50                   	push   %eax
 24e:	ff b5 a4 fd ff ff    	pushl  -0x25c(%ebp)
 254:	e8 17 03 00 00       	call   570 <memmove>
      p[DIRSIZ] = 0;
 259:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 25f:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 263:	58                   	pop    %eax
 264:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 26a:	5a                   	pop    %edx
 26b:	56                   	push   %esi
 26c:	50                   	push   %eax
 26d:	e8 6e 02 00 00       	call   4e0 <stat>
 272:	83 c4 10             	add    $0x10,%esp
 275:	85 c0                	test   %eax,%eax
 277:	0f 88 c3 00 00 00    	js     340 <ls+0x220>
        printf(1, "ls: cannot stat %s\n", buf);
        continue;
      }
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 27d:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 283:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 28a:	83 ec 0c             	sub    $0xc,%esp
 28d:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 293:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 299:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 29f:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 2a5:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 2ab:	51                   	push   %ecx
 2ac:	e8 cf fd ff ff       	call   80 <fmtname>
 2b1:	5a                   	pop    %edx
 2b2:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 2b8:	59                   	pop    %ecx
 2b9:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 2bf:	51                   	push   %ecx
 2c0:	52                   	push   %edx
 2c1:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 2c7:	50                   	push   %eax
 2c8:	68 48 0a 00 00       	push   $0xa48
 2cd:	6a 01                	push   $0x1
 2cf:	e8 2c 04 00 00       	call   700 <printf>
 2d4:	83 c4 20             	add    $0x20,%esp
 2d7:	e9 44 ff ff ff       	jmp    220 <ls+0x100>
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    printf(2, "ls: cannot open %s\n", path);
 2e0:	83 ec 04             	sub    $0x4,%esp
 2e3:	57                   	push   %edi
 2e4:	68 20 0a 00 00       	push   $0xa20
 2e9:	6a 02                	push   $0x2
 2eb:	e8 10 04 00 00       	call   700 <printf>
    return;
 2f0:	83 c4 10             	add    $0x10,%esp
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
    }
    break;
  }
  close(fd);
}
 2f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2f6:	5b                   	pop    %ebx
 2f7:	5e                   	pop    %esi
 2f8:	5f                   	pop    %edi
 2f9:	5d                   	pop    %ebp
 2fa:	c3                   	ret    
 2fb:	90                   	nop
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf(1, "ls: path too long\n");
 300:	83 ec 08             	sub    $0x8,%esp
 303:	68 55 0a 00 00       	push   $0xa55
 308:	6a 01                	push   $0x1
 30a:	e8 f1 03 00 00       	call   700 <printf>
      break;
 30f:	83 c4 10             	add    $0x10,%esp
 312:	e9 92 fe ff ff       	jmp    1a9 <ls+0x89>
 317:	89 f6                	mov    %esi,%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(2, "ls: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "ls: cannot stat %s\n", path);
 320:	83 ec 04             	sub    $0x4,%esp
 323:	57                   	push   %edi
 324:	68 34 0a 00 00       	push   $0xa34
 329:	6a 02                	push   $0x2
 32b:	e8 d0 03 00 00       	call   700 <printf>
    close(fd);
 330:	89 1c 24             	mov    %ebx,(%esp)
 333:	e8 92 02 00 00       	call   5ca <close>
    return;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 75 fe ff ff       	jmp    1b5 <ls+0x95>
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", buf);
 340:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 346:	83 ec 04             	sub    $0x4,%esp
 349:	50                   	push   %eax
 34a:	68 34 0a 00 00       	push   $0xa34
 34f:	6a 01                	push   $0x1
 351:	e8 aa 03 00 00       	call   700 <printf>
        continue;
 356:	83 c4 10             	add    $0x10,%esp
 359:	e9 c2 fe ff ff       	jmp    220 <ls+0x100>
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 45 08             	mov    0x8(%ebp),%eax
 367:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 36a:	89 c2                	mov    %eax,%edx
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 370:	83 c1 01             	add    $0x1,%ecx
 373:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 377:	83 c2 01             	add    $0x1,%edx
 37a:	84 db                	test   %bl,%bl
 37c:	88 5a ff             	mov    %bl,-0x1(%edx)
 37f:	75 ef                	jne    370 <strcpy+0x10>
    ;
  return os;
}
 381:	5b                   	pop    %ebx
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 38a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000390 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	56                   	push   %esi
 394:	53                   	push   %ebx
 395:	8b 55 08             	mov    0x8(%ebp),%edx
 398:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 39b:	0f b6 02             	movzbl (%edx),%eax
 39e:	0f b6 19             	movzbl (%ecx),%ebx
 3a1:	84 c0                	test   %al,%al
 3a3:	75 1e                	jne    3c3 <strcmp+0x33>
 3a5:	eb 29                	jmp    3d0 <strcmp+0x40>
 3a7:	89 f6                	mov    %esi,%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 3b0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3b3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3b6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3b9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3bd:	84 c0                	test   %al,%al
 3bf:	74 0f                	je     3d0 <strcmp+0x40>
 3c1:	89 f1                	mov    %esi,%ecx
 3c3:	38 d8                	cmp    %bl,%al
 3c5:	74 e9                	je     3b0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 3c7:	29 d8                	sub    %ebx,%eax
}
 3c9:	5b                   	pop    %ebx
 3ca:	5e                   	pop    %esi
 3cb:	5d                   	pop    %ebp
 3cc:	c3                   	ret    
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3d0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 3d2:	29 d8                	sub    %ebx,%eax
}
 3d4:	5b                   	pop    %ebx
 3d5:	5e                   	pop    %esi
 3d6:	5d                   	pop    %ebp
 3d7:	c3                   	ret    
 3d8:	90                   	nop
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <strlen>:

uint
strlen(char *s)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3e6:	80 39 00             	cmpb   $0x0,(%ecx)
 3e9:	74 12                	je     3fd <strlen+0x1d>
 3eb:	31 d2                	xor    %edx,%edx
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
 3f0:	83 c2 01             	add    $0x1,%edx
 3f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3f7:	89 d0                	mov    %edx,%eax
 3f9:	75 f5                	jne    3f0 <strlen+0x10>
    ;
  return n;
}
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 3fd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 3ff:	5d                   	pop    %ebp
 400:	c3                   	ret    
 401:	eb 0d                	jmp    410 <memset>
 403:	90                   	nop
 404:	90                   	nop
 405:	90                   	nop
 406:	90                   	nop
 407:	90                   	nop
 408:	90                   	nop
 409:	90                   	nop
 40a:	90                   	nop
 40b:	90                   	nop
 40c:	90                   	nop
 40d:	90                   	nop
 40e:	90                   	nop
 40f:	90                   	nop

00000410 <memset>:

void*
memset(void *dst, int c, uint n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 417:	8b 4d 10             	mov    0x10(%ebp),%ecx
 41a:	8b 45 0c             	mov    0xc(%ebp),%eax
 41d:	89 d7                	mov    %edx,%edi
 41f:	fc                   	cld    
 420:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 422:	89 d0                	mov    %edx,%eax
 424:	5f                   	pop    %edi
 425:	5d                   	pop    %ebp
 426:	c3                   	ret    
 427:	89 f6                	mov    %esi,%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <strchr>:

char*
strchr(const char *s, char c)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	53                   	push   %ebx
 434:	8b 45 08             	mov    0x8(%ebp),%eax
 437:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 43a:	0f b6 10             	movzbl (%eax),%edx
 43d:	84 d2                	test   %dl,%dl
 43f:	74 1d                	je     45e <strchr+0x2e>
    if(*s == c)
 441:	38 d3                	cmp    %dl,%bl
 443:	89 d9                	mov    %ebx,%ecx
 445:	75 0d                	jne    454 <strchr+0x24>
 447:	eb 17                	jmp    460 <strchr+0x30>
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 450:	38 ca                	cmp    %cl,%dl
 452:	74 0c                	je     460 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 454:	83 c0 01             	add    $0x1,%eax
 457:	0f b6 10             	movzbl (%eax),%edx
 45a:	84 d2                	test   %dl,%dl
 45c:	75 f2                	jne    450 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 45e:	31 c0                	xor    %eax,%eax
}
 460:	5b                   	pop    %ebx
 461:	5d                   	pop    %ebp
 462:	c3                   	ret    
 463:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <gets>:

char*
gets(char *buf, int max)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	56                   	push   %esi
 475:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 476:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 478:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 47b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 47e:	eb 29                	jmp    4a9 <gets+0x39>
    cc = read(0, &c, 1);
 480:	83 ec 04             	sub    $0x4,%esp
 483:	6a 01                	push   $0x1
 485:	57                   	push   %edi
 486:	6a 00                	push   $0x0
 488:	e8 2d 01 00 00       	call   5ba <read>
    if(cc < 1)
 48d:	83 c4 10             	add    $0x10,%esp
 490:	85 c0                	test   %eax,%eax
 492:	7e 1d                	jle    4b1 <gets+0x41>
      break;
    buf[i++] = c;
 494:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 498:	8b 55 08             	mov    0x8(%ebp),%edx
 49b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 49d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 49f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4a3:	74 1b                	je     4c0 <gets+0x50>
 4a5:	3c 0d                	cmp    $0xd,%al
 4a7:	74 17                	je     4c0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4a9:	8d 5e 01             	lea    0x1(%esi),%ebx
 4ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4af:	7c cf                	jl     480 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4b1:	8b 45 08             	mov    0x8(%ebp),%eax
 4b4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4bb:	5b                   	pop    %ebx
 4bc:	5e                   	pop    %esi
 4bd:	5f                   	pop    %edi
 4be:	5d                   	pop    %ebp
 4bf:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4c0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4c3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 4c5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cc:	5b                   	pop    %ebx
 4cd:	5e                   	pop    %esi
 4ce:	5f                   	pop    %edi
 4cf:	5d                   	pop    %ebp
 4d0:	c3                   	ret    
 4d1:	eb 0d                	jmp    4e0 <stat>
 4d3:	90                   	nop
 4d4:	90                   	nop
 4d5:	90                   	nop
 4d6:	90                   	nop
 4d7:	90                   	nop
 4d8:	90                   	nop
 4d9:	90                   	nop
 4da:	90                   	nop
 4db:	90                   	nop
 4dc:	90                   	nop
 4dd:	90                   	nop
 4de:	90                   	nop
 4df:	90                   	nop

000004e0 <stat>:

int
stat(char *n, struct stat *st)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	56                   	push   %esi
 4e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4e5:	83 ec 08             	sub    $0x8,%esp
 4e8:	6a 00                	push   $0x0
 4ea:	ff 75 08             	pushl  0x8(%ebp)
 4ed:	e8 f0 00 00 00       	call   5e2 <open>
  if(fd < 0)
 4f2:	83 c4 10             	add    $0x10,%esp
 4f5:	85 c0                	test   %eax,%eax
 4f7:	78 27                	js     520 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4f9:	83 ec 08             	sub    $0x8,%esp
 4fc:	ff 75 0c             	pushl  0xc(%ebp)
 4ff:	89 c3                	mov    %eax,%ebx
 501:	50                   	push   %eax
 502:	e8 f3 00 00 00       	call   5fa <fstat>
 507:	89 c6                	mov    %eax,%esi
  close(fd);
 509:	89 1c 24             	mov    %ebx,(%esp)
 50c:	e8 b9 00 00 00       	call   5ca <close>
  return r;
 511:	83 c4 10             	add    $0x10,%esp
 514:	89 f0                	mov    %esi,%eax
}
 516:	8d 65 f8             	lea    -0x8(%ebp),%esp
 519:	5b                   	pop    %ebx
 51a:	5e                   	pop    %esi
 51b:	5d                   	pop    %ebp
 51c:	c3                   	ret    
 51d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 520:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 525:	eb ef                	jmp    516 <stat+0x36>
 527:	89 f6                	mov    %esi,%esi
 529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000530 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	53                   	push   %ebx
 534:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 537:	0f be 11             	movsbl (%ecx),%edx
 53a:	8d 42 d0             	lea    -0x30(%edx),%eax
 53d:	3c 09                	cmp    $0x9,%al
 53f:	b8 00 00 00 00       	mov    $0x0,%eax
 544:	77 1f                	ja     565 <atoi+0x35>
 546:	8d 76 00             	lea    0x0(%esi),%esi
 549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 550:	8d 04 80             	lea    (%eax,%eax,4),%eax
 553:	83 c1 01             	add    $0x1,%ecx
 556:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 55a:	0f be 11             	movsbl (%ecx),%edx
 55d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 560:	80 fb 09             	cmp    $0x9,%bl
 563:	76 eb                	jbe    550 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 565:	5b                   	pop    %ebx
 566:	5d                   	pop    %ebp
 567:	c3                   	ret    
 568:	90                   	nop
 569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000570 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
 575:	8b 5d 10             	mov    0x10(%ebp),%ebx
 578:	8b 45 08             	mov    0x8(%ebp),%eax
 57b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 57e:	85 db                	test   %ebx,%ebx
 580:	7e 14                	jle    596 <memmove+0x26>
 582:	31 d2                	xor    %edx,%edx
 584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 588:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 58c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 58f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 592:	39 da                	cmp    %ebx,%edx
 594:	75 f2                	jne    588 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 596:	5b                   	pop    %ebx
 597:	5e                   	pop    %esi
 598:	5d                   	pop    %ebp
 599:	c3                   	ret    

0000059a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 59a:	b8 01 00 00 00       	mov    $0x1,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <exit>:
SYSCALL(exit)
 5a2:	b8 02 00 00 00       	mov    $0x2,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <wait>:
SYSCALL(wait)
 5aa:	b8 03 00 00 00       	mov    $0x3,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <pipe>:
SYSCALL(pipe)
 5b2:	b8 04 00 00 00       	mov    $0x4,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <read>:
SYSCALL(read)
 5ba:	b8 05 00 00 00       	mov    $0x5,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <write>:
SYSCALL(write)
 5c2:	b8 10 00 00 00       	mov    $0x10,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <close>:
SYSCALL(close)
 5ca:	b8 15 00 00 00       	mov    $0x15,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <kill>:
SYSCALL(kill)
 5d2:	b8 06 00 00 00       	mov    $0x6,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <exec>:
SYSCALL(exec)
 5da:	b8 07 00 00 00       	mov    $0x7,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <open>:
SYSCALL(open)
 5e2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <mknod>:
SYSCALL(mknod)
 5ea:	b8 11 00 00 00       	mov    $0x11,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <unlink>:
SYSCALL(unlink)
 5f2:	b8 12 00 00 00       	mov    $0x12,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <fstat>:
SYSCALL(fstat)
 5fa:	b8 08 00 00 00       	mov    $0x8,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <link>:
SYSCALL(link)
 602:	b8 13 00 00 00       	mov    $0x13,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <mkdir>:
SYSCALL(mkdir)
 60a:	b8 14 00 00 00       	mov    $0x14,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <chdir>:
SYSCALL(chdir)
 612:	b8 09 00 00 00       	mov    $0x9,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <dup>:
SYSCALL(dup)
 61a:	b8 0a 00 00 00       	mov    $0xa,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <getpid>:
SYSCALL(getpid)
 622:	b8 0b 00 00 00       	mov    $0xb,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <sbrk>:
SYSCALL(sbrk)
 62a:	b8 0c 00 00 00       	mov    $0xc,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <sleep>:
SYSCALL(sleep)
 632:	b8 0d 00 00 00       	mov    $0xd,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <uptime>:
SYSCALL(uptime)
 63a:	b8 0e 00 00 00       	mov    $0xe,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <waitpid>:
SYSCALL(waitpid)
 642:	b8 16 00 00 00       	mov    $0x16,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <setpriority>:
SYSCALL(setpriority)
 64a:	b8 17 00 00 00       	mov    $0x17,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    
 652:	66 90                	xchg   %ax,%ax
 654:	66 90                	xchg   %ax,%ax
 656:	66 90                	xchg   %ax,%ax
 658:	66 90                	xchg   %ax,%ax
 65a:	66 90                	xchg   %ax,%ax
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	89 c6                	mov    %eax,%esi
 668:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 66b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 66e:	85 db                	test   %ebx,%ebx
 670:	74 7e                	je     6f0 <printint+0x90>
 672:	89 d0                	mov    %edx,%eax
 674:	c1 e8 1f             	shr    $0x1f,%eax
 677:	84 c0                	test   %al,%al
 679:	74 75                	je     6f0 <printint+0x90>
    neg = 1;
    x = -xx;
 67b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 67d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 684:	f7 d8                	neg    %eax
 686:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 689:	31 ff                	xor    %edi,%edi
 68b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 68e:	89 ce                	mov    %ecx,%esi
 690:	eb 08                	jmp    69a <printint+0x3a>
 692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 698:	89 cf                	mov    %ecx,%edi
 69a:	31 d2                	xor    %edx,%edx
 69c:	8d 4f 01             	lea    0x1(%edi),%ecx
 69f:	f7 f6                	div    %esi
 6a1:	0f b6 92 74 0a 00 00 	movzbl 0xa74(%edx),%edx
  }while((x /= base) != 0);
 6a8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6aa:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6ad:	75 e9                	jne    698 <printint+0x38>
  if(neg)
 6af:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 6b2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 6b5:	85 c0                	test   %eax,%eax
 6b7:	74 08                	je     6c1 <printint+0x61>
    buf[i++] = '-';
 6b9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 6be:	8d 4f 02             	lea    0x2(%edi),%ecx
 6c1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 6c5:	8d 76 00             	lea    0x0(%esi),%esi
 6c8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6cb:	83 ec 04             	sub    $0x4,%esp
 6ce:	83 ef 01             	sub    $0x1,%edi
 6d1:	6a 01                	push   $0x1
 6d3:	53                   	push   %ebx
 6d4:	56                   	push   %esi
 6d5:	88 45 d7             	mov    %al,-0x29(%ebp)
 6d8:	e8 e5 fe ff ff       	call   5c2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 6dd:	83 c4 10             	add    $0x10,%esp
 6e0:	39 df                	cmp    %ebx,%edi
 6e2:	75 e4                	jne    6c8 <printint+0x68>
    putc(fd, buf[i]);
}
 6e4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e7:	5b                   	pop    %ebx
 6e8:	5e                   	pop    %esi
 6e9:	5f                   	pop    %edi
 6ea:	5d                   	pop    %ebp
 6eb:	c3                   	ret    
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6f0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6f2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6f9:	eb 8b                	jmp    686 <printint+0x26>
 6fb:	90                   	nop
 6fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000700 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 706:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 709:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 70c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 70f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 712:	89 45 d0             	mov    %eax,-0x30(%ebp)
 715:	0f b6 1e             	movzbl (%esi),%ebx
 718:	83 c6 01             	add    $0x1,%esi
 71b:	84 db                	test   %bl,%bl
 71d:	0f 84 b0 00 00 00    	je     7d3 <printf+0xd3>
 723:	31 d2                	xor    %edx,%edx
 725:	eb 39                	jmp    760 <printf+0x60>
 727:	89 f6                	mov    %esi,%esi
 729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 730:	83 f8 25             	cmp    $0x25,%eax
 733:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 736:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 73b:	74 18                	je     755 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 73d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 740:	83 ec 04             	sub    $0x4,%esp
 743:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 746:	6a 01                	push   $0x1
 748:	50                   	push   %eax
 749:	57                   	push   %edi
 74a:	e8 73 fe ff ff       	call   5c2 <write>
 74f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 752:	83 c4 10             	add    $0x10,%esp
 755:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 758:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 75c:	84 db                	test   %bl,%bl
 75e:	74 73                	je     7d3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 760:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 762:	0f be cb             	movsbl %bl,%ecx
 765:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 768:	74 c6                	je     730 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 76a:	83 fa 25             	cmp    $0x25,%edx
 76d:	75 e6                	jne    755 <printf+0x55>
      if(c == 'd'){
 76f:	83 f8 64             	cmp    $0x64,%eax
 772:	0f 84 f8 00 00 00    	je     870 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 778:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 77e:	83 f9 70             	cmp    $0x70,%ecx
 781:	74 5d                	je     7e0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 783:	83 f8 73             	cmp    $0x73,%eax
 786:	0f 84 84 00 00 00    	je     810 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 78c:	83 f8 63             	cmp    $0x63,%eax
 78f:	0f 84 ea 00 00 00    	je     87f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 795:	83 f8 25             	cmp    $0x25,%eax
 798:	0f 84 c2 00 00 00    	je     860 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 79e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7a1:	83 ec 04             	sub    $0x4,%esp
 7a4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7a8:	6a 01                	push   $0x1
 7aa:	50                   	push   %eax
 7ab:	57                   	push   %edi
 7ac:	e8 11 fe ff ff       	call   5c2 <write>
 7b1:	83 c4 0c             	add    $0xc,%esp
 7b4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7b7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 7ba:	6a 01                	push   $0x1
 7bc:	50                   	push   %eax
 7bd:	57                   	push   %edi
 7be:	83 c6 01             	add    $0x1,%esi
 7c1:	e8 fc fd ff ff       	call   5c2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7c6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7ca:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7cd:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7cf:	84 db                	test   %bl,%bl
 7d1:	75 8d                	jne    760 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7d6:	5b                   	pop    %ebx
 7d7:	5e                   	pop    %esi
 7d8:	5f                   	pop    %edi
 7d9:	5d                   	pop    %ebp
 7da:	c3                   	ret    
 7db:	90                   	nop
 7dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7e8:	6a 00                	push   $0x0
 7ea:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7ed:	89 f8                	mov    %edi,%eax
 7ef:	8b 13                	mov    (%ebx),%edx
 7f1:	e8 6a fe ff ff       	call   660 <printint>
        ap++;
 7f6:	89 d8                	mov    %ebx,%eax
 7f8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7fb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 7fd:	83 c0 04             	add    $0x4,%eax
 800:	89 45 d0             	mov    %eax,-0x30(%ebp)
 803:	e9 4d ff ff ff       	jmp    755 <printf+0x55>
 808:	90                   	nop
 809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 810:	8b 45 d0             	mov    -0x30(%ebp),%eax
 813:	8b 18                	mov    (%eax),%ebx
        ap++;
 815:	83 c0 04             	add    $0x4,%eax
 818:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 81b:	b8 6a 0a 00 00       	mov    $0xa6a,%eax
 820:	85 db                	test   %ebx,%ebx
 822:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 825:	0f b6 03             	movzbl (%ebx),%eax
 828:	84 c0                	test   %al,%al
 82a:	74 23                	je     84f <printf+0x14f>
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 830:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 833:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 836:	83 ec 04             	sub    $0x4,%esp
 839:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 83b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 83e:	50                   	push   %eax
 83f:	57                   	push   %edi
 840:	e8 7d fd ff ff       	call   5c2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 845:	0f b6 03             	movzbl (%ebx),%eax
 848:	83 c4 10             	add    $0x10,%esp
 84b:	84 c0                	test   %al,%al
 84d:	75 e1                	jne    830 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 84f:	31 d2                	xor    %edx,%edx
 851:	e9 ff fe ff ff       	jmp    755 <printf+0x55>
 856:	8d 76 00             	lea    0x0(%esi),%esi
 859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 866:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 869:	6a 01                	push   $0x1
 86b:	e9 4c ff ff ff       	jmp    7bc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 870:	83 ec 0c             	sub    $0xc,%esp
 873:	b9 0a 00 00 00       	mov    $0xa,%ecx
 878:	6a 01                	push   $0x1
 87a:	e9 6b ff ff ff       	jmp    7ea <printf+0xea>
 87f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 882:	83 ec 04             	sub    $0x4,%esp
 885:	8b 03                	mov    (%ebx),%eax
 887:	6a 01                	push   $0x1
 889:	88 45 e4             	mov    %al,-0x1c(%ebp)
 88c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 88f:	50                   	push   %eax
 890:	57                   	push   %edi
 891:	e8 2c fd ff ff       	call   5c2 <write>
 896:	e9 5b ff ff ff       	jmp    7f6 <printf+0xf6>
 89b:	66 90                	xchg   %ax,%ax
 89d:	66 90                	xchg   %ax,%ax
 89f:	90                   	nop

000008a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8a1:	a1 a4 0d 00 00       	mov    0xda4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a6:	89 e5                	mov    %esp,%ebp
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	53                   	push   %ebx
 8ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8ae:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 8b0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8b3:	39 c8                	cmp    %ecx,%eax
 8b5:	73 19                	jae    8d0 <free+0x30>
 8b7:	89 f6                	mov    %esi,%esi
 8b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8c0:	39 d1                	cmp    %edx,%ecx
 8c2:	72 1c                	jb     8e0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c4:	39 d0                	cmp    %edx,%eax
 8c6:	73 18                	jae    8e0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 8c8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8ca:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8cc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8ce:	72 f0                	jb     8c0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d0:	39 d0                	cmp    %edx,%eax
 8d2:	72 f4                	jb     8c8 <free+0x28>
 8d4:	39 d1                	cmp    %edx,%ecx
 8d6:	73 f0                	jae    8c8 <free+0x28>
 8d8:	90                   	nop
 8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 8e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8e3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8e6:	39 d7                	cmp    %edx,%edi
 8e8:	74 19                	je     903 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ed:	8b 50 04             	mov    0x4(%eax),%edx
 8f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8f3:	39 f1                	cmp    %esi,%ecx
 8f5:	74 23                	je     91a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8f7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8f9:	a3 a4 0d 00 00       	mov    %eax,0xda4
}
 8fe:	5b                   	pop    %ebx
 8ff:	5e                   	pop    %esi
 900:	5f                   	pop    %edi
 901:	5d                   	pop    %ebp
 902:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 903:	03 72 04             	add    0x4(%edx),%esi
 906:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 909:	8b 10                	mov    (%eax),%edx
 90b:	8b 12                	mov    (%edx),%edx
 90d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 910:	8b 50 04             	mov    0x4(%eax),%edx
 913:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 916:	39 f1                	cmp    %esi,%ecx
 918:	75 dd                	jne    8f7 <free+0x57>
    p->s.size += bp->s.size;
 91a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 91d:	a3 a4 0d 00 00       	mov    %eax,0xda4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 922:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 925:	8b 53 f8             	mov    -0x8(%ebx),%edx
 928:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 92a:	5b                   	pop    %ebx
 92b:	5e                   	pop    %esi
 92c:	5f                   	pop    %edi
 92d:	5d                   	pop    %ebp
 92e:	c3                   	ret    
 92f:	90                   	nop

00000930 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 939:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 93c:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 942:	8d 78 07             	lea    0x7(%eax),%edi
 945:	c1 ef 03             	shr    $0x3,%edi
 948:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 94b:	85 d2                	test   %edx,%edx
 94d:	0f 84 a3 00 00 00    	je     9f6 <malloc+0xc6>
 953:	8b 02                	mov    (%edx),%eax
 955:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 958:	39 cf                	cmp    %ecx,%edi
 95a:	76 74                	jbe    9d0 <malloc+0xa0>
 95c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 962:	be 00 10 00 00       	mov    $0x1000,%esi
 967:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 96e:	0f 43 f7             	cmovae %edi,%esi
 971:	ba 00 80 00 00       	mov    $0x8000,%edx
 976:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 97c:	0f 46 da             	cmovbe %edx,%ebx
 97f:	eb 10                	jmp    991 <malloc+0x61>
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 988:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 98a:	8b 48 04             	mov    0x4(%eax),%ecx
 98d:	39 cf                	cmp    %ecx,%edi
 98f:	76 3f                	jbe    9d0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 991:	39 05 a4 0d 00 00    	cmp    %eax,0xda4
 997:	89 c2                	mov    %eax,%edx
 999:	75 ed                	jne    988 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 99b:	83 ec 0c             	sub    $0xc,%esp
 99e:	53                   	push   %ebx
 99f:	e8 86 fc ff ff       	call   62a <sbrk>
  if(p == (char*)-1)
 9a4:	83 c4 10             	add    $0x10,%esp
 9a7:	83 f8 ff             	cmp    $0xffffffff,%eax
 9aa:	74 1c                	je     9c8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 9ac:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 9af:	83 ec 0c             	sub    $0xc,%esp
 9b2:	83 c0 08             	add    $0x8,%eax
 9b5:	50                   	push   %eax
 9b6:	e8 e5 fe ff ff       	call   8a0 <free>
  return freep;
 9bb:	8b 15 a4 0d 00 00    	mov    0xda4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 9c1:	83 c4 10             	add    $0x10,%esp
 9c4:	85 d2                	test   %edx,%edx
 9c6:	75 c0                	jne    988 <malloc+0x58>
        return 0;
 9c8:	31 c0                	xor    %eax,%eax
 9ca:	eb 1c                	jmp    9e8 <malloc+0xb8>
 9cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 9d0:	39 cf                	cmp    %ecx,%edi
 9d2:	74 1c                	je     9f0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 9d4:	29 f9                	sub    %edi,%ecx
 9d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9dc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 9df:	89 15 a4 0d 00 00    	mov    %edx,0xda4
      return (void*)(p + 1);
 9e5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 9e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9eb:	5b                   	pop    %ebx
 9ec:	5e                   	pop    %esi
 9ed:	5f                   	pop    %edi
 9ee:	5d                   	pop    %ebp
 9ef:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 9f0:	8b 08                	mov    (%eax),%ecx
 9f2:	89 0a                	mov    %ecx,(%edx)
 9f4:	eb e9                	jmp    9df <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 9f6:	c7 05 a4 0d 00 00 a8 	movl   $0xda8,0xda4
 9fd:	0d 00 00 
 a00:	c7 05 a8 0d 00 00 a8 	movl   $0xda8,0xda8
 a07:	0d 00 00 
    base.s.size = 0;
 a0a:	b8 a8 0d 00 00       	mov    $0xda8,%eax
 a0f:	c7 05 ac 0d 00 00 00 	movl   $0x0,0xdac
 a16:	00 00 00 
 a19:	e9 3e ff ff ff       	jmp    95c <malloc+0x2c>
