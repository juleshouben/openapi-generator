set executable=.\modules\openapi-generator-cli\target\openapi-generator-cli.jar

If Not Exist %executable% (
  mvn clean package
)

REM set JAVA_OPTS=%JAVA_OPTS% -Xmx1024M
set ags=generate -i modules\openapi-generator\src\test\resources\2_0\petstore.yaml -l typescript-angular -o samples\client\petstore\typescript-angular-v7-not-provided-in-root\builds\default -D providedInRoot=false --additional-properties ngVersion=7.0.0

java %JAVA_OPTS% -jar %executable% %ags%
