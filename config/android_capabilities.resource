*** Settings ***
Documentation  teste de app
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/../app/telesena-6.2.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=14}

*** Keywords ***
Abrir aplicativo
    Open Application  http://127.0.0.1:4723  
    ...  automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  
    ...  platformVersion=${ANDROID_PLATFORM_VERSION}
    ...  app=${ANDROID_APP}  
    ...  appPackage=br.com.telesena.app  
    ...  autoGrantPermissions=true