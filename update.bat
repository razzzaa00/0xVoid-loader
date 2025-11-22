cd C:\.coding\Lua Project\0xVoid Loader\Scripts

rem --- Copy all files using quotes + wildcard fix ---
xcopy "C:\.coding\Lua Project\0xVoid Loader\Scripts\loader\*.*" . /y
xcopy "C:\.coding\Lua Project\0xVoid Loader\Scripts\esp\*.*" . /y
xcopy "C:\.coding\Lua Project\0xVoid Loader\Scripts\aim\*.*" . /y
xcopy "C:\.coding\Lua Project\0xVoid Loader\Scripts\char\*.*" . /y
xcopy "C:\.coding\Lua Project\0xVoid Loader\Scripts\misc\*.*" . /y

rem --- Git push ---
git add .
git commit -m "full faded delta drop - boss build"
git branch -M main
git push -u origin main