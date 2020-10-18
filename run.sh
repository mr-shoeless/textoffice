#!/bin/bash
#export MWLIBDIR=~/Documents/LibreOffice/core/instdir/program/classes/

# LibreOffice 6.3 (mw built)
export OFFICE_HOME=/opt/libreoffice6.3
export LO_BASE_DIR=/opt/libreoffice6.3

export MWLIBDIR=$LO_BASE_DIR/program/classes
export UNO_PATH=$LO_BASE_DIR/program
export CLASSPATH=$MWLIBDIR/juh.jar:$MWLIBDIR/jurt.jar:$MWLIBDIR/ridl.jar:$MWLIBDIR/unoil.jar:$UNO_PATH:.:bin
#export CLASSPATH first to override those supplied
#java -cp $CLASSPATH FirstUnoContact
#java -cp $CLASSPATH FirstLoadComponent
java -cp $CLASSPATH TextDocuments .
