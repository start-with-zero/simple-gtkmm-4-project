@ECHO OFF
SET CONFIG=%1
SET PROJECT_NAME=%2
SET MSYS2_ENV_FOLDER=%3
IF NOT [%MSYS2_ENV_FOLDER%]==[] (
	
	ECHO Copying dependencies: DLL's...
	
	FOR /f "tokens=1" %%A in ('ntldd -R "%~dp0%CONFIG%\bin\%PROJECT_NAME%.exe" ^| FIND "msys64"') DO (
		COPY /Y "%MSYS2_ENV_FOLDER%\bin\%%A" "%~dp0%CONFIG%\bin")
	
	ECHO Copying dependencies: EXE's...

	COPY /Y "%MSYS2_ENV_FOLDER%\bin\gdbus.exe" "%~dp0%CONFIG%\bin"
	REM Other .exe's which are required by the project?
	
	ECHO Copying gdk-pixbuf loaders...

	XCOPY /E /D /Y /I /Q "%MSYS2_ENV_FOLDER%\lib\gdk-pixbuf-2.0" "%~dp0%CONFIG%\lib\gdk-pixbuf-2.0" 
	
	ECHO Copying icons...

	XCOPY /E /D /Y /I /Q "%MSYS2_ENV_FOLDER%\share\icons" "%~dp0%CONFIG%\share\icons"
	
    ECHO Copying and compiling schemas... 

	XCOPY /E /D /Y /I /Q "%MSYS2_ENV_FOLDER%\share\glib-2.0\schemas" "%~dp0%CONFIG%\share\glib-2.0\schemas"
	START /WAIT glib-compile-schemas.exe "%~dp0%CONFIG%\share\glib-2.0\schemas"

) ELSE (
	ECHO copy_dependencies.bat config project_name msys2_env_folder
	ECHO ============================================================
	ECHO config           Project configuration: Debug, Release and etc.
	ECHO project_name     Name of the executable file.
	ECHO msys2_env_folder Path to the MSYS2 directory containing the bin, lib, share folders and etc.
	PAUSE
)
