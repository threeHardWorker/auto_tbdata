cd c:\tmp
del /q *.zip
for /d %%D in (*) do rmdir /s/q %%~fD

mkdir csv

cd c:\workspace\py

python tbdown-1440-900.py %1 %2
python export-1440-900.py %1 %2

ping 127.0.0.1 -n 60 > nul

python rename_1d.py %1 %2

cd c:\tmp
rename csv 10s_%1_%2

winrar a -afzip 10s_%1_%2.zip 10s_%1_%2