*** Settings ***
Resource    ${CURDIR}${/}..${/}Common.robot
Library     AppiumLibrary


*** Variables ***
${NOTE_APP_PATH}    ${CURDIR}${/}..${/}..${/}app/android/ColorNote.apk
${SKIP_BUTTON}      //*[@resource-id="com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip"]


*** Keywords ***
Open Note Android
    Open Android    ${NOTE_APP_PATH}

Open Note BrowserStack
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    automationName=UIAutomator2
    ...    platformName=Android
    ...    platformVersion=12.0
    ...    app=${NOTE_APP_PATH}

Skip Tutorial
    Click Element    ${SKIP_BUTTON}
