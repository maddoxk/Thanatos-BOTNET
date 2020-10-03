#!/bin/bash
echo -e [Hito] installing shit noob
yum install epel-release -y
yum install groupinstall "Development Tools" -y
yum install gmp-devel -y
ln -s /usr/lib64/libgmp.so.3  /usr/lib64/libgmp.so.10
yum install screen wget bzip2 gcc gcc-c++ electric-fence sudo git libc6-dev httpd xinetd tftpd tftp-server mysql mysql-server gcc glibc-static -y
yum install gcc*

echo -e [Hito] wgetting the cross compilers tool chains for the elf executables for the cpu architectures, dayum the words
mkdir /etc/xcompile/
cd /etc/xcompile/
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-i586.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-m68k.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-mips.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-mipsel.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-powerpc.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-sh4.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-sparc.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-armv4l.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-armv5l.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-armv6l.tar.bz2
wget https://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-armv7l.tar.bz2

echo -e [Hito] getting EPIC cpu architecture cross compile tool chain bullshit -Light
wget https://toolchains.bootlin.com/downloads/releases/toolchains/xtensa-lx60/tarballs/xtensa-lx60--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/m68k-coldfire/tarballs/m68k-coldfire--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/m68k-68xxx/tarballs/m68k-68xxx--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/arcle-750d/tarballs/arcle-750d--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/microblazeel/tarballs/microblazeel--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/nios2/tarballs/nios2--glibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/openrisc/tarballs/openrisc--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/riscv64/tarballs/riscv64--glibc--bleeding-edge-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/microblazebe/tarballs/microblazebe--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/bfin/tarballs/bfin--uclibc--stable-2018.02-2.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64/tarballs/aarch64--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/aarch64be/tarballs/aarch64be--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/arcle-hs38/tarballs/arcle-hs38--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/sh-sh4/tarballs/sh-sh4--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/x86-i686/tarballs/x86-i686--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/x86-core2/tarballs/x86-core2--uclibc--stable-2018.11-1.tar.bz2
wget https://toolchains.bootlin.com/downloads/releases/toolchains/x86-64-core-i7/tarballs/x86-64-core-i7--uclibc--stable-2018.11-1.tar.bz2
wget https://github.com/foss-for-synopsys-dwc-arc-processors/toolchain/releases/download/arc-2017.09-release/arc_gnu_2017.09_prebuilt_uclibc_le_arc700_linux_install.tar.gz

wget http://ftp.iij.ad.jp/pub/linux/kernel/tools/crosstool/files/bin/x86_64/8.1.0/x86_64-gcc-8.1.0-nolibc-arc-linux.tar.gz
wget http://ftp.iij.ad.jp/pub/linux/kernel/tools/crosstool/files/bin/x86_64/8.1.0/x86_64-gcc-8.1.0-nolibc-alpha-linux.tar.xz
wget http://ftp.iij.ad.jp/pub/linux/kernel/tools/crosstool/files/bin/x86_64/8.1.0/x86_64-gcc-8.1.0-nolibc-mips64-linux.tar.gz

echo -e [Hito] tarring all the cross compilers
tar -xjf cross-compiler-i586.tar.bz2
tar -xjf cross-compiler-m68k.tar.bz2
tar -xjf cross-compiler-mips.tar.bz2
tar -xjf cross-compiler-mipsel.tar.bz2
tar -xjf cross-compiler-powerpc.tar.bz2
tar -xjf cross-compiler-sh4.tar.bz2
tar -xjf cross-compiler-sparc.tar.bz2
tar -xjf cross-compiler-armv4l.tar.bz2
tar -xjf cross-compiler-armv5l.tar.bz2
tar -xjf cross-compiler-armv6l.tar.bz2
tar -xjf cross-compiler-armv7l.tar.bz2
tar -xjf x86-i686--uclibc--stable-2018.11-1.tar.bz2
tar -xjf x86-core2--uclibc--stable-2018.11-1.tar.bz2
tar -xjf x86-64-core-i7--uclibc--stable-2018.11-1.tar.bz2
tar -xjf sh-sh4--uclibc--stable-2018.11-1.tar.bz2
tar -xjf arcle-hs38--uclibc--stable-2018.11-1.tar.bz2
tar -xjf aarch64be--uclibc--stable-2018.11-1.tar.bz2
tar -xjf bfin--uclibc--stable-2018.02-2.tar.bz2
tar -xjf aarch64--uclibc--stable-2018.11-1.tar.bz2
tar -xjf microblazebe--uclibc--stable-2018.11-1.tar.bz2
tar -xjf riscv64--glibc--bleeding-edge-2018.11-1.tar.bz2
tar -xjf openrisc--uclibc--stable-2018.11-1.tar.bz2
tar -xjf nios2--glibc--stable-2018.11-1.tar.bz2
tar -xjf microblazeel--uclibc--stable-2018.11-1.tar.bz2
tar -xjf arcle-750d--uclibc--stable-2018.11-1.tar.bz2
tar -xjf m68k-68xxx--uclibc--stable-2018.11-1.tar.bz2
tar -xjf m68k-coldfire--uclibc--stable-2018.11-1.tar.bz2
tar -xjf xtensa-lx60--uclibc--stable-2018.11-1.tar.bz2
tar -xjf xtensa-lx60--uclibc--stable-2018.11-1.tar.bz2
tar -xvf arc_gnu_2017.09_prebuilt_uclibc_le_arc700_linux_install.tar.gz

tar -xvzf x86_64-gcc-8.1.0-nolibc-arc-linux.tar.gz
tar -xf x86_64-gcc-8.1.0-nolibc-alpha-linux.tar.xz

rm -rf *.tar.bz2

echo -e [Hito] moving every cross compiler bullshit thing in the right directory
mv cross-compiler-i586 i586
mv cross-compiler-m68k m68k
mv cross-compiler-mips mips
mv cross-compiler-mipsel mipsel
mv cross-compiler-powerpc powerpc
mv cross-compiler-sh4 sh4
mv cross-compiler-sparc sparc
mv cross-compiler-armv4l armv4l
mv cross-compiler-armv5l armv5l
mv cross-compiler-armv6l armv6l
mv cross-compiler-armv7l armv7l
mv arc_gnu_2017.09_prebuilt_uclibc_le_arc700_linux_install arc
mv x86_64-gcc-8.1.0-nolibc-alpha-linux.tar.gz alpha
mv x86-i686--uclibc--stable-2018.11-1 x86-i686
mv x86-core2--uclibc--stable-2018.11-1 x86-core2
mv x86-64-core-i7--uclibc--stable-2018.11-1 x86-64-core-i7
mv sh-sh4--uclibc--stable-2018.11-1 sh-sh4
mv arcle-hs38--uclibc--stable-2018.11-1 arcle-hs38
mv aarch64be--uclibc--stable-2018.11-1 aarch64be
mv bfin--uclibc--stable-2018.02-2 bfin
mv aarch64--uclibc--stable-2018.11-1 aarch64
mv microblazebe--uclibc--stable-2018.11-1 microblazebe
mv riscv64--glibc--bleeding-edge-2018.11-1 riscv64
mv openrisc--uclibc--stable-2018.11-1 openrisc
mv nios2--glibc--stable-2018.11-1 nios2
mv microblazeel--uclibc--stable-2018.11-1 microblazeel
mv arcle-750d--uclibc--stable-2018.11-1 arcle-750d
mv m68k-68xxx--uclibc--stable-2018.11-1 m68k-68xxx
mv m68k-coldfire--uclibc--stable-2018.11-1 m68k-coldfire
mv xtensa-lx60--uclibc--stable-2018.11-1 xtensa-lx60

cd gcc-8.1.0-nolibc
mv arc-linux /etc/xcompile/arc
mv x86_64-gcc-8.1.0-nolibc-alpha-linux /etc/xcompile/alpha
mv mips64-linux /etc/xcompile/mips64
cd ..

echo -e [Hito] installing golang
cd /tmp
wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz -q
tar -xzf go1.8.3.linux-amd64.tar.gz
mv go /usr/local
export GOROOT=/usr/local/go; export GOPATH=$HOME/Projects/Proj1; export PATH=$GOPATH/bin:$GOROOT/bin:$PATH; go get github.com/go-sql-driver/mysql; go get github.com/mattn/go-shellwords
