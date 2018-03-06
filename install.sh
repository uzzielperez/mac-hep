#!/bin/bash
tar -zxf Delphes-3.4.1.tar.gz
cd Delphes-3.4.1
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=../install ..
make -j 4 install


