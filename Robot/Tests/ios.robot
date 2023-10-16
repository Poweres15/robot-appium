*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/PageObject/ToDo/TodoBase.robot
Resource    ../Resources/PageObject/ToDo/Todo-list.robot


*** Variables ***
${ToDo_list_title}      Todo list title


*** Test Cases ***
Verify Create Todo List
    TodoBase.Open ToDo IOS
    Todo-list.Create Todo list    ${ToDo_list_title}
