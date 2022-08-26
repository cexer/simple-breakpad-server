SET batdir=%~dp0
CD /d "%batdir%"
::dump_syms.exe "%batdir%..\lib\windows-x86\tkhack.pdb" > tkhack-dll.sym
curl -H "Test: test" -F symfile=@tkhack-dll.sym localhost:1127/symfiles