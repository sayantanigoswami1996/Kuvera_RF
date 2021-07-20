*** Keywords ***

Verify PostLogin Rewards Earned Through Signup
    Log To Console  Rewards - Signup
    Wait And Click  ${KU_W_postlogin_inviteFriendsTab}
    Verify Page Contains Element  ${KU_W_IF_inviteFriendsSubTitle1}
    ${referralCode} =  Get Text  ${KU_W_IF_referralCode}
    Logout
    New User Signup  ${KU_W_postlogin_signUpLink}  ${referralCode}
    Verify PAN Verifed KYC Details
    Wait And Click  ${KU_W_ca_caretDropdown}
    Verify Page Contains Element  ${KU_W_coins_coinsMenu}
    Verify Page Contains Element  ${KU_W_coins_coinsVal} 
    Reload Page