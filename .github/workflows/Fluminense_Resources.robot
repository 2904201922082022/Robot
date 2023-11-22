Fluminense_Resources.robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_Voto_Fluminense}    https://vote.globesoccer.com/vote/best-men-club-2023/?embed=false
${Click_time_Fluminense}    //p[contains(.,'Fluminense')]
${Click_vote}    //button[contains(.,'Vote')]

*** Keywords ***
Abrir Navegador
    Open Browser    browser=edge
    Maximize Browser Window

Fechar Navegador
    Close Browser

#TC1 - Votar Fluminense
#step 1
Given usuario acessa o site
    Go To    url=${URL_Voto_Fluminense}
#step 2
and clica no Fluminense
    Click Element    locator=${Click_time_Fluminense}
    Sleep    5s
#step 3
Then confirma o voto
    Click Element    locator=${Click_vote}
    Sleep    5s