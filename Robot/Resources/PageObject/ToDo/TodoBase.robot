*** Settings ***
Resource    ${CURDIR}${/}..${/}Common.robot
Library     AppiumLibrary


*** Variables ***
${APP_PATH}     ${CURDIR}${/}..${/}..${/}app/ios/MVCTodo.app


*** Keywords ***
Open ToDo IOS
    Open IOS    ${APP_PATH}
