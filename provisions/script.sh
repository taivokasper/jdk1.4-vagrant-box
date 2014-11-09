#!/bin/bash

cd /shared
mkdir /tmp/jdk4
cp -a jdk4.bin /tmp/jdk4/
cd /tmp/jdk4/
chmod +x jdk4.bin
echo yes | ./jdk4.bin
rm -f jdk4.bin
cd *
mkdir /usr/local/share/jdk4/
mv * /usr/local/share/jdk4/

echo "export JAVA_HOME=/usr/local/share/jdk4/" >> /home/vagrant/.bash_profile
echo "export PATH=$PATH:/usr/local/share/jdk4/bin" >> /home/vagrant/.bash_profile