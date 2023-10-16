*** Settings ***
Resource    ${CURDIR}${/}..${/}Common.robot
Library     AppiumLibrary


*** Variables ***
${create_button}                        //*[@name="Create list"]
${listName_input}                       //*[@value="List Name"]
${confirm_create_todo_list_button}      name=Create


*** Keywords ***
Create Todo list
    [Arguments]    ${title_name}
    Click Element    ${create_button}
    Input Text    ${listName_input}    ${title_name}
    Click Element    ${confirm_create_todo_list_button}
    Wait Until Element Is Visible    value=List Name
