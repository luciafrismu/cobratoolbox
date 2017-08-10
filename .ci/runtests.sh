#!/bin/sh
echo "$ARCH"
if [ "$ARCH" == "Linux" ]; then
    /mnt/data/MATLAB/$MATLAB_VER/bin/./matlab -nodesktop -nosplash < test/testAll.m
elif [ "$ARCH" == "macOS" ]; then
    /Applications/MATLAB_$MATLAB_VER.app/bin/matlab -nodesktop -nosplash < test/testAll.m
elif [ "$ARCH" == "Windows" ]; then
    echo "Je suis ici"
    "C:\Program Files\Matlab\R2016b\bin\matlab.exe"  -nodesktop -nosplash -r "run('D:\jenkins\workspace\COBRAToolbox-windows\MATLAB_VER\R2016b\label\windows-biocore\test\testAll.m')"
fi
CODE=$?
exit $CODE
