@ECHO OFF
setlocal

set MAVEN_SKIP_RC=%MAVEN_SKIP_RC%

if not "%MAVEN_SKIP_RC%"=="" goto skipRc

if exist "%USERPROFILE%\mavenrc_pre.bat" call "%USERPROFILE%\mavenrc_pre.bat"
if exist "%USERPROFILE%\mavenrc_post.bat" call "%USERPROFILE%\mavenrc_post.bat"

:skipRc

set SCRIPT_DIR=%~dp0
set MVNW_DIR=%SCRIPT_DIR%.mvn
set WRAPPER_JAR=%MVNW_DIR%\wrapper\maven-wrapper.jar
set WRAPPER_PROPERTIES=%MVNW_DIR%\wrapper\maven-wrapper.properties

if not exist "%WRAPPER_JAR%" (
  for /f "usebackq tokens=1,2 delims==" %%A in ("%WRAPPER_PROPERTIES%") do (
    if /I "%%A"=="wrapperUrl" set WRAPPER_URL=%%B
  )
  if "%WRAPPER_URL%"=="" set WRAPPER_URL=https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.2/maven-wrapper-3.3.2.jar
  if exist "%ProgramFiles%\Git\usr\bin\curl.exe" (
    set CURL="%ProgramFiles%\Git\usr\bin\curl.exe"
  ) else (
    set CURL=curl
  )
  if exist "%ProgramFiles%\Git\usr\bin\wget.exe" (
    set WGET="%ProgramFiles%\Git\usr\bin\wget.exe"
  ) else (
    set WGET=wget
  )
  if exist "%ProgramFiles%\Git\usr\bin\curl.exe" (
    if not exist "%MVNW_DIR%\wrapper" mkdir "%MVNW_DIR%\wrapper"
    %CURL% -fsSL %WRAPPER_URL% -o "%WRAPPER_JAR%"
  ) else (
    if not exist "%MVNW_DIR%\wrapper" mkdir "%MVNW_DIR%\wrapper"
    %WGET% -q %WRAPPER_URL% -O "%WRAPPER_JAR%"
  )
)

set JAVA_EXE=java
if defined JAVA_HOME set JAVA_EXE=%JAVA_HOME%\bin\java.exe

"%JAVA_EXE%" -version >NUL 2>&1 || (
  echo Error: Java not found. Please install Java 17+ and ensure it is on PATH.
  exit /b 1
)

set MAVEN_CMD_LINE_ARGS=%*
"%JAVA_EXE%" %MAVEN_OPTS% -classpath "%WRAPPER_JAR%" org.apache.maven.wrapper.MavenWrapperMain %MAVEN_CMD_LINE_ARGS%
endlocal