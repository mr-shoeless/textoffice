#!/bin/bash
#export MWLIBDIR=~/Documents/LibreOffice/core/instdir/program/classes/

# LibreOffice 6.0 
#export OFFICE_HOME=/usr/lib/libreoffice
#export LO_BASE_DIR=/usr/lib/libreoffice


# LibreOffice 6.3 (mw built)
export OFFICE_HOME=/opt/libreoffice6.3
export LO_BASE_DIR=/opt/libreoffice6.3

# Can't remember what I was doing with this
export MWLIBDIR=$LO_BASE_DIR/program/classes


# Common
export OO_SDK_NAME=mw
export OO_SDK_HOME=
export OO_SDK_JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export OO_SDK_CPP_HOME=/usr/bin/gcc
export OO_SDK_URE_BIN_DIR=$LO_BASE_DIR/program
export OO_SDK_URE_LIB_DIR=$LO_BASE_DIR/lib
export OO_SDK_URE_JAVA_DIR=$LO_BASE_DIR/program/classes
export CLASSPATH=$OO_SDK_URE_JAVA_DIR/juh.jar:$OO_SDK_URE_JAVA_DIR/jurt.jar:$OO_SDK_URE_JAVA_DIR/ridl.jar:$OO_SDK_URE_JAVA_DIR/unoloader.jar:$OO_SDK_URE_JAVA_DIR/unoil.jar
export OFFICE_PROGRAM_PATH=$OFFICE_HOME/program
export UNO_PATH=$OFFICE_PROGRAM_PATH
export LD_LIBRARY_PATH=$OO_SDK_URE_LIB_DIR:$SDK_HOME/linux/lib:$LD_LIBRARY_PATH
export PATH=$OO_SDK_HOME/linux/bin:$OO_SDK_MAKE_HOME:$OO_SDK_ZIP_HOME:$OO_SDK_CPP_HOME:$OO_SDK_JAVA_HOME/bin:$OO_SDK_URE_BIN_DIR:$PATH
#{unoloader,juh,jurt,ridl,unoil}.jar

javac -cp "$CLASSPATH" -d bin source/java/FirstUnoContact.java
javac -cp "$CLASSPATH" -d bin source/java/FirstLoadComponent.java
javac -cp "$CLASSPATH" -d bin source/java/TextDocuments.java

#gcc office_connect.cxx
