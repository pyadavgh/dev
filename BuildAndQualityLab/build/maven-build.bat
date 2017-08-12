@echo maven build project start

call set-env.bat

set curr_dir=%cd%
cd..

mvn clean compile package
@echo maven build project end
@echo trying to deploy application

::cd C:\
::cd %curr_dir%
::call deploy-application.bat