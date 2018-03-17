#!/bin/bash

# Determine path to this installation script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#--- GEANT4
#mkdir geant
#cd geant
#wget http://geant4.cern.ch/support/source/geant4.10.02.p01.tar.gz
#mkdir geantsource
#tar -zxf geant4.10.02.p01.tar.gz -C geantsource
#rm -rf geant4.10.02.p01.tar.gz
#mkdir build
#mkdir build/4.10.02.p01
#cd build/4.10.02.p01/
cmake -DCMAKE_INSTALL_PREFIX=~../../install/4.10.02.p01 ../../geantsource/geant4.10.02.p01/
# make sure that system clhep is used
make -j 4
make install
#add source configs to ~/.bashrc
echo source ${DIR}/geant/install/4.10.02.p01/bin/geant4.sh >> ~/.bashrc
cd ..
cd ../..

# To Install Delphes 
# https://twiki.cern.ch/twiki/bin/view/CMSPublic/MadgraphTutorial
# do 
# ./<PATH-to-MADGRAPH>/bin/mg5_aMC
# install Delphes

# or 
# do in main MG Directory
#wget http://cp3.irmp.ucl.ac.be/downloads/Delphes-3.4.1.tar.gz
#tar -zxf Delphes-3.4.1.tar.gz
#cd Delphes-3.4.1
#mkdir build
#cd build
#cmake -DCMAKE_INSTALL_PREFIX=../install ..
#make -j 4 install
#rm -rf Delphes-3.4.1.tar.gz


