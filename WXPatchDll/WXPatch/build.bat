@call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
ml64 /Fo ahead.obj /c version_jump.asm
cl version.cpp log.cpp ahead.obj vendor/libMinHook.x64.lib -LD -Feversion.dll -std:c++14 /EHsc
del *.obj
del *.exp