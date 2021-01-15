*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin Account Creation 
    Wait For Element Visibility  ${KU_W_signup}
    Click Element  ${KU_W_signup}
    Click Element  ${KU_W_ca_emailInputField} 
    ${randomEmail} =  Generate Random Number  100   99999
    ${completeEmailID} =  Catenate  ${e_ca_email}${randomEmail}${e_ca_domainName}
    Input Text  ${KU_W_ca_emailInputField}  ${completeEmailID}
    Wait For Element Visibility  ${KU_W_ca_mobileNumInputField} 
    Click Element  ${KU_W_ca_mobileNumInputField}
    ${mobileNum} =  Generate Unique Mobile Number
    Input Text  ${KU_W_ca_mobileNumInputField}  ${mobileNum}
    Wait Scroll And Click Element  ${KU_W_ca_pwdInputField}
    Input Text  ${KU_W_ca_pwdInputField}  ${e_ca_pwd}
    Wait Scroll And Click Element  ${KU_W_ca_inviteCodeField}
    Input Text  ${KU_W_ca_inviteCodeField}  ${e_ca_inviteCode}
    Click Element  ${KU_W_ca_signupBtn} 
    Wait For Element Visibility  ${KU_W_ca_OTPField}
    Click Element  ${KU_W_ca_OTPField}
    Input Text  ${KU_W_ca_OTPField}  ${e_ca_OTP}
    Click Element  ${KU_W_ca_submitOTPBtn}
    Verify Page Contains Element  ${KU_W_ca_dashboardHeader}

Generate Unique Mobile Number
    ${randomMobileNum} =  Generate Random Number  0  99999
    ${result1} =  Convert To Integer  ${randomMobileNum}
    ${result2} =  Convert To Integer  ${e_ca_mobileNum}
    ${actualMobileNumber} =  Evaluate  ${result1}+${result2}
    ${actualMobileNumber1} =  Convert To String  ${actualMobileNumber}
    ${expectedMobileNum} =  Replace Characters  ${actualMobileNumber1}  1  9
    [Return]  ${expectedMobileNum}