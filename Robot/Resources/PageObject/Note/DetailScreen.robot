*** Settings ***
Library     AppiumLibrary


*** Variables ***
${three_dot_button}         accessibility_id=More
${delete_button}            //*[@text="Delete"]
${confirm_action_button}    //*[@text="OK"]


*** Keywords ***
Delete Note
    Click Element    ${three_dot_button}
    Click Element    ${delete_button}
    Click Element    ${confirm_action_button}
