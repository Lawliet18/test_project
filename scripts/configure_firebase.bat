@echo off

echo Configuring "production" Firebase environment...
call :configure_firebase_environment "test-prod-1b4e5" "production" "com.example.verygoodcore.test-app" "com.example.verygoodcore.test_app"

echo Configuring "development" Firebase environment...
call :configure_firebase_environment "test-dev-88ca1" "development" "com.example.verygoodcore.test-app.dev" "com.example.verygoodcore.test_app.dev"

echo Configuring "staging" Firebase environment...
call :configure_firebase_environment "test-stg-87e23" "staging" "com.example.verygoodcore.test-app.stg" "com.example.verygoodcore.test_app.stg"

EXIT /B %ERRORLEVEL% 

:configure_firebase_environment
set project=%1
set environment=%2
set iosBundleId=%3
set androidPackageName=%4

for %%i in (Debug Release Profile) do (
    echo yes | flutterfire configure ^
        --project="%project%" ^
        --platforms="ios,android,web" ^
        --ios-bundle-id="%iosBundleId%" ^
        --android-package-name="%androidPackageName%" ^
        --out=lib/core/environments/"%environment%/firebase_options.dart" ^
        --android-out=/android/app/src/"%environment%/google-services.json" ^
        --ios-out=/ios/environments/"%environment%/GoogleService-Info.plist" ^
        --ios-build-config=%%~i"-%environment%" ^
        --overwrite-firebase-options ^
        --yes
)

exit /b 0