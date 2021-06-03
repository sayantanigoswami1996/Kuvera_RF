*** Keywords ***

Verify PostLogin Family Account Menu Navigation
    Verify PreLogin Family Account Page 
    Wait And Click  ${KU_W_button}
    Verify Page Contains Element  ${KU_W_feature_fa_coinsTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referFriendTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referCoins}
    Wait And Click  ${KU_W_postlogin_feature_referFriendTitle}
    Verify Element And Text  ${KU_W_IF_inviteFriendsTitle}  ${e_IF_inviteFriendsTitle}
    Go Back
    Go Back