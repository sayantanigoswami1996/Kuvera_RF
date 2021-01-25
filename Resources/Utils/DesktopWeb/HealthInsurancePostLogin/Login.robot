*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Login And Verify Policy Details
    Go To  ${URL}
    Logout
    Login 
    Verify Policy Details

Login 
    Wait And Click  ${KU_W_ca_emailInputField}  
    Input Text      ${KU_W_ca_emailInputField}  ${emailID}
    Wait And Click  ${KU_W_ca_pwdInputField}
    Input Text      ${KU_W_ca_pwdInputField}  ${e_ca_pwd}
    Wait And Click  ${KU_W_ca_loginBtn}

Logout
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_ca_logoutBtn}
    Sleep  4s
    Go Back

Verify Policy Details
    Wait And Click  ${KU_W_insureLink}
    Sleep  320s
    Reload Page
    Wait For Element Visibility  ${KU_W_HI_coverTitle}
    Verify Element And Text  ${KU_W_HI_coverTitle}  ${e_HI_coverTitle}
    Verify Element And Text  ${KU_W_HI_totalCoverDesc}  ${e_HI_totalCoverDesc}
    Verify Element And Text  ${KU_W_HI_totalPremiumDesc}  ${e_HI_totalPremiumDesc}
    Verify Element And Text  ${KU_W_HI_coverageRowTitle}  ${e_HI_coverageRowTitle}
    Scroll Untill View  ${KU_W_HI_policyDetails1}
    Verify Element And Text  ${KU_W_HI_policyDetails1}  ${e_HI_policyDetails1}
    Verify Element And Text  ${KU_W_HI_expiryDateForPolicy1}  ${e_HI_expiryDateForPolicy}
    Click Image  ${KU_W_HI_policyDocLink1}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyDetails2}
    Verify Element And Text  ${KU_W_HI_policyDetails2}  ${e_HI_policyDetails2}
    Verify Element And Text  ${KU_W_HI_expiryDateForPolicy2}  ${e_HI_expiryDateForPolicy}
    Click Image  ${KU_W_HI_policyDocLink2}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyDetails3}
    Verify Element And Text  ${KU_W_HI_policyDetails3}  ${e_HI_policyDetails3}
    Verify Element And Text  ${KU_W_HI_expiryDateForPolicy3}  ${e_HI_expiryDateForPolicy}
    Click Image  ${KU_W_HI_policyDocLink3}
    Policy Document List Validation  ${e_HI_dailyAllowanceList}
    Verify Banner Details

Policy Document List Validation
    [Arguments]  ${expectedPolicyList}
    Scroll Element Into View  ${KU_W_HI_policyList} 
    @{healthAssure_list} =  Get WebElements  ${KU_W_HI_policyList}
    Compare Lists  ${healthAssure_list}  ${expectedPolicyList}
    Click Image  ${KU_W_HI_documentLinkCloseBtn}

Verify Banner Details
    Wait For Element Visibility  ${KU_W_HI_bannerImg}
    Scroll Untill View  ${KU_W_HI_bannerImg}
    Sleep  2s
    Verify Page Contains Image  ${KU_W_HI_bannerImg}
    Verify Element And Text  ${KU_W_HI_bannerDesc}  ${e_HI_bannerDesc}
    Verify Element And Text  ${KU_W_HI_spreadTheWord}  ${e_HI_spreadTheWord}
    Wait Scroll And Click Element  ${KU_W_HI_FBLink}
    Switch To Window Verify Title And Close  ${e_HI_facebookTitle}
    Wait Scroll And Click Element  ${KU_W_HI_twitterLink}
    Sleep  5s
    Switch To Window Verify Title And Close  ${e_HI_twitterTitle}
    Wait Scroll And Click Element  ${KU_W_HI_whatsappLink}
    Switch To Window Verify Title And Close  ${e_HI_whatsappTitle} 
    Wait Scroll And Click Element  ${KU_W_HI_telegramLink}
    Switch To Window Verify Title And Close  ${e_HI_telegramTitle}
    Scroll Page To Location  0   1000
    Wait Scroll And Click Element  ${KU_W_HI_mailLink}
    Sleep  2s
    Wait Scroll And Click Element  ${KU_W_HI_mailLink}