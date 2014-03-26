@echo off

IF NOT EXIST build2012 mkdir build2012
cd build2012
cmake -G "Visual Studio 11" ..

cd ..
pause
