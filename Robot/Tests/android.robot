*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/PageObject/Note/NoteBase.robot
Resource        ../Resources/PageObject/Note/AdddNoteScreen.robot
Resource        ../Resources/PageObject/Note/DetailScreen.robot

Suite Setup     Note App Set Up


*** Test Cases ***
Verify Add Note
    AdddNoteScreen.Add Note    Title    Body

Verify Delete Note
    DetailScreen.Delete Note
    AdddNoteScreen.Verify Add Note displayed


*** Keywords ***
Note App Set Up
    NoteBase.Open Note Android
    NoteBase.Skip Tutorial
    AdddNoteScreen.Verify Add Note displayed
