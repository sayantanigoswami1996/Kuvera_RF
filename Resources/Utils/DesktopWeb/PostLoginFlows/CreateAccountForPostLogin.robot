*** Keywords ***

Verify PostLogin Account Creation 
    Log To Console  Create Account
    New User Signup  ${KU_W_signup}  ${e_ca_inviteCode}


New User Signup
    [Arguments]  ${signupBtn}  ${inviteCode}
    Wait For Element Visibility  ${signupBtn}
    Click Element  ${signupBtn}
    Click Element  ${KU_W_emailTxt}
    ${randomNumber} =  Generate Random Number  1   9999999
    ${completeEmailID} =  Catenate  ${e_ca_email}${randomNumber}${e_ca_domainName}
    Log To Console  ${completeEmailID}
    Set Global Variable  ${emailID}  ${completeEmailID}
    Input Text  ${KU_W_emailTxt}  ${completeEmailID}
    Wait For Element Visibility  ${KU_W_signup_mobileTxt} 
    Click Element  ${KU_W_signup_mobileTxt}
    ${mobileNum} =  Generate Unique Mobile Number
    Input Text  ${KU_W_signup_mobileTxt}  ${mobileNum}
    Wait Scroll And Click Element  ${KU_W_passwordTxt}
    Input Text  ${KU_W_passwordTxt}  ${e_ca_pwd}
    Wait Scroll And Click Element  ${KU_W_signup_inviteCodeTxt}
    Input Text  ${KU_W_signup_inviteCodeTxt}  ${inviteCode}
    Click Element  ${KU_W_ca_signupBtn}
    Sleep  3s
    Enter OTP Postlogin
    Wait For Element Visibility  ${KU_W_ca_dashboardHeader}
    Verify Page Contains Element  ${KU_W_ca_dashboardHeader}