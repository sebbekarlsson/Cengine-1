@echo off

echo Building Calmar...

pushd ..\engine
call build.bat
popd

@echo off
IF %ERRORLEVEL% NEQ 0 (
  echo Failed to build Cengine - Error Code: %ERRORLEVEL% && cd ..\scripts  && pause
)

pushd ..\testbed
call build.bat
popd


@echo off
IF %ERRORLEVEL% NEQ 0 (
  echo Failed to build Cengine Testbed - Error Code: %ERRORLEVEL% && cd ..\scripts && pause
)

echo Built Calmar Engine and Editor sucessfully.
cd ..\scripts