*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot

*** Keywords ***

Wait For Element Visbility
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    timeout=30

Launch URL
    Open Browser       ${loginURL}    ${BROWSER}
    # Wait Until Element Is Enabled         ${KU_Title}     timeout=2
    Get Title    
    

Welcome Page Should Be Open
    Title Should Be                ${KU_W_Title} 

Get Json Values
    [Arguments]     ${jsonPath}            ${jsonFilePath}
    ${jsonFile}     Load JSON From File    ${jsonFilePath}
    ${jsonValue}    Get Value From Json    ${jsonFile}        ${jsonPath}
    [Return]        ${jsonValue}

Kuvera Logo Click
  
    Click Element                         ${KU_W_close} 
    
 
Validate Login Button Click

      Wait Until Element Is Enabled        ${KU_W_logInButton}     timeout=50
      Click Element                        ${KU_W_logInButton}
      Wait Until Element Is Enabled        ${KU_W_loginMssg}       timeout=30
      Element Text Should Be               ${KU_W_loginMssg}      ${KU_W_loginMssgTitle}   ignore_case=False    
 
Validate SignUp Button Click

     Wait Until Element Is Enabled          ${KU_W_signupButton}     timeout=50
     Click Element                          ${KU_W_signupButton}
     Wait Until Element Is Enabled          ${KU_W_signupMssg}       timeout=30
     Element Text Should Be                 ${KU_W_signupMssg}     ${KU_W_signupMssgTitle}   ignore_case=False

  
Validate Login Link Click

    Wait Until Element Is Enabled          ${KU_W_loginLink}       timeout=50
    Click Element                          ${KU_W_loginLink} 
    Wait Until Element Is Enabled          ${KU_W_loginMssg}       timeout=30
      Element Text Should Be               ${KU_W_loginMssg}      ${KU_W_loginMssgTitle}   ignore_case=False 

Validate SignUp Link Click 

    Wait Until Element Is Enabled          ${KU_W_signupLink}       timeout=50
    Click Element                          ${KU_W_signupLink}
    Wait Until Element Is Enabled          ${KU_W_signupMssg}       timeout=30
    Element Text Should Be                 ${KU_W_signupMssg}     ${KU_W_signupMssgTitle}   ignore_case=False

Quit Kuvera Application

    Close Browser
