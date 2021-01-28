# Source Code Otserv

## This tutorial is for compiling and running on linux

### Version 8.60 (trunk r3884)

#### It needs to be on ubuntu 14.04 (Do not update)

1. clone the repository
```bash
sudo apt-get install git &&
git clone https://github.com/thefalked/source_code_otserv.git &&
cd source_code_otserv/Source/ &&
sudo chmod 777 autogen.sh &&
sudo chmod 777 build.sh &&
sudo apt-get install libreadline-dev lib32ncurses5-dev dh-autoreconf libxml2-dev libboost-all-dev libcrypto++-dev libssl-dev libmysqlclient-dev &&
cd lua-5.1.4/ && sudo make linux && sudo make install && cd ..
sudo ./autogen.sh && sudo ./configure --enable-mysql --enable-server-diag
```

#### After runing without errors

2. Go to the file `Makefile` as root/sudo and search for the word `LDFLAGS =` and chage to `LDFLAGS = -pthread`

3. Above that in the line that has `LIBS =` in the end of the line add `-ldl` becoming `LIBS = -lmysqlclient -llua -lcrypto -lcryptopp -lboost_filesystem -lboost_date_time -lboost_system -lboost_regex -lboost_thread -lz  -lxml2 -ldl`

4. Save the file with the changes an run `sudo ./build.sh`

The file server will be named has `theforgottenserver`.

You can move him to your otserv paste and then give `sudo chmod 777 theforgottenserver`.

To open the server just use `./theforgottenserver` without sudo.
