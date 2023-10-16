*** Settings ***
Library         AppiumLibrary
Variables       ${CURDIR}${/}..${/}Variables/platformConfig.py


*** Keywords ***
Open Android
    [Arguments]    ${ANDROID_APP}
    Open Application    ${APPIUM_URL}    platformName=${ANDROID_PLATFORM}
    ...    platformVersion=${ANDROID_VERSION}
    ...    deviceName=${ANDROID_DEVICE_NAME}    app=${ANDROID_APP}
    ...    automationName=${ANDROID_DRIVER}    autoGrantPermissions=true

Open IOS
    [Arguments]    ${IOS_APP}
    Open Application    ${APPIUM_URL}    platformName=${IOS_PLATFORM}
    ...    platformVersion=${IOS_VERSION}
    ...    deviceName=${IOS_DEVICE_NAME}    app=${IOS_APP}
    ...    automationName=${IOS_DRIVER}    autoGrantPermissions=true
