*** Settings ***
Library     AppiumLibrary


*** Variables ***
${add_note_button}      //*[@text="Add note"]
${title_input}          //*[@resource-id="com.socialnmobile.dictapps.notepad.color.note:id/edit_title"]
${body_input}           //*[@resource-id="com.socialnmobile.dictapps.notepad.color.note:id/edit_note"]


*** Keywords ***
Verify Add Note displayed
    Wait Until Element Is Visible    ${add_note_button}

Add Note
    [Arguments]    ${title}    ${body}
    Click Element    ${add_note_button}
    Click Element    //*[@text="Text"]
    Input Text    ${title_input}    ${title}
    Input Text    ${body_input}    ${body}
    Go Back
    Go Back
