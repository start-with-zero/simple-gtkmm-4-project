# A simple gtkmm-4 project configured to run using MSYS2 and Visual Studio Code tools
## Links ##
1. main.cpp taken from [link](https://gnome.pages.gitlab.gnome.org/gtkmm-documentation/chapter-basics.html#sec-basics-simple-example)
2. The base template of CMakeLists.txt taken from [link](https://stackoverflow.com/a/68784465/22786079)
3. Some things are taken from [link](https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer)
4. and [link](https://gist.github.com/RickBarretto/8c90ad46a88257b2062b17a8cbe65b86)
## MSYS2 ##
MSYS2 [link](https://www.msys2.org/) <br>
Update the packages: <br>
1. `pacman -Syu` (use it twice)

You need to install the following packages in MSYS2: <br>

2. `pacman -S mingw-w64-ucrt-x86_64-toolchain` (GCC, gdb, pkg-conf and etc.)
3. `pacman -S mingw-w64-ucrt-x86_64-cmake` (CMake, ninja)
4. `pacman -S mingw-w64-ucrt-x86_64-gtkmm-4.0` (gtkmm-4.0, GTK-4 and etc.)
5. `pacman -S mingw-w64-ucrt-x86_64-ntldd` (ntldd)
6. Add `C:\msys64\ucrt64\bin` to `%PATH%` 
## Visual Studio Code ##
Visual Studio Code [link](https://code.visualstudio.com/) <br>
Install the related plugins:
1. C/C++ [link](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
2. CMake Tools [link](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
3. CMake Language Support [link](https://marketplace.visualstudio.com/items?itemName=josetr.cmake-language-support-vscode)

Or just install:

1. C/C++ Extension Pack [link](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
## Project ##
1. Download this repository, open the directory in VSCode and try to build.
## Notes ##
The `copy_dependencies.bat` copies everything necessary for the offline working of the application without MSYS2 (it may need to be improved). To call the help, run `.bat` without parameters.
