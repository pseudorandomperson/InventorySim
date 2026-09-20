@echo off
setlocal EnableDelayedExpansion

set SRC_DIR=src
set BUILD_DIR=build
set CLASSES=%BUILD_DIR%\classes
set JAR=%BUILD_DIR%\InventorySim.jar
set MAIN=com.InventorySim.Main

if "%1"=="compile" goto compile
if "%1"=="jar" goto jar
if "%1"=="run" goto run
if "%1"=="clean" goto clean
if "%1"=="all" goto jar

echo Usage: build.bat [compile^|jar^|run^|clean^|all]
exit /b 1


:compile
echo Compiling...

if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"
if not exist "%CLASSES%" mkdir "%CLASSES%"

set SOURCES=

for /r "%SRC_DIR%" %%f in (*.java) do (
    set "SOURCES=!SOURCES! "%%f""
)

javac -d "%CLASSES%" !SOURCES!

if errorlevel 1 (
    echo Compilation failed.
    exit /b 1
)

echo Compilation successful.
exit /b 0


:jar
call "%~f0" compile

if errorlevel 1 exit /b 1

echo Creating JAR...

jar cfe "%JAR%" %MAIN% -C "%CLASSES%" .

if errorlevel 1 (
    echo JAR creation failed.
    exit /b 1
)

echo Created: %JAR%
exit /b 0


:run
call "%~f0" jar

if errorlevel 1 exit /b 1

java -jar "%JAR%"
exit /b %errorlevel%


:clean
if exist "%BUILD_DIR%" (
    rmdir /s /q "%BUILD_DIR%"
)

echo Clean complete.
exit /b 0
