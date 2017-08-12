@echo Deploy web applicaion started

set curr_dir=%cd%

cd ../deploy/artifacts
set CATALINA_HOME="C:\Prakash\Software\apache-tomcat-8.0.28"

@echo coping the BuildAndQualityLab.war file to %CATALINA_HOME%\webapps
copy BuildAndQualityLab.war %CATALINA_HOME%\webapps
cd  %CATALINA_HOME%\bin


@echo trying to stop the tomcat 
call shutdown.bat

IF %ERRORLEVEL% EQU 0 (
	@echo Tomcat stopped
) ELSE (
	@echo Tomcat is not running	
)

@echo Staring the tomcat 
call startup.bat
@echo Tomcat stated successfully

@echo Deploy we applicaion end
cd %curr_dir%




