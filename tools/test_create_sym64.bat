SET batdir=%~dp0
CD /d "%batdir%"
dump_syms.exe "%batdir%..\lib\windows-x86_64\tkhack-dx.pdb" > tkhack-dx-dll.sym
curl -F symfile=@tkhack-dx-dll.sym localhost:1127/symfiles