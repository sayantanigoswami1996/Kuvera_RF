*** Keywords ***

Verify PostLogin Invite Friends Menu Navigation
    Log To Console  Invite Friends
    Wait And Click  ${KU_W_postlogin_inviteFriendsTab}
    Verify Page Contains Element  ${KU_W_IF_inviteFriendsSubTitle1} 
    Verify Page Contains Element  ${KU_W_IF_subTitle2}
    Verify Page Contains Element  ${KU_W_IF_coinsLink}
    Wait And Click  ${KU_W_IF_coinsLink}
    Verify Page Contains Element  ${KU_W_IF_coinsNavigatedScreen} 
    Go Back
    Verify Page Contains Element  ${KU_W_IF_digitalGoldLink} 
    Wait And Click  ${KU_W_IF_digitalGoldLink} 
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText} 
    Go Back
    Verify Terms And Conditions
    Verify Element And Text  ${KU_W_IF_friendInvitation}  ${e_IF_friendInvitation}
    Verify Social Sharing Option  ${KU_W_tc_facebookBtn}  ${KU_W_tc_twitterBtn}  ${KU_W_tc_whatsappBtn}  ${KU_W_tc_telegramBtn}  ${KU_W_tc_mailBtn}
    
Verify Terms And Conditions
    Wait And Click  ${KU_W_IF_T&CLink}
    Verify Element And Text  ${KU_W_IF_T&CHeading}  ${e_IF_T&CHeading}
    Verify Element And Text  ${KU_W_IF_T&CPoint1}  ${e_IF_T&CPoint1} 
    Verify Element And Text  ${KU_W_IF_T&CPoint2}  ${e_IF_T&CPoint2}
    Verify Element And Text  ${KU_W_IF_T&CPoint3}  ${e_IF_T&CPoint3}
    Verify Element And Text  ${KU_W_IF_T&CPoint4}  ${e_IF_T&CPoint4}
    Verify Element And Text  ${KU_W_IF_T&CPoint5}  ${e_IF_T&CPoint5}
    Scroll Untill View  ${KU_W_IF_T&CPoint6}
    Verify Element And Text  ${KU_W_IF_T&CPoint6}  ${e_IF_T&CPoint6}
    Verify Element And Text  ${KU_W_IF_T&CPoint7}  ${e_IF_T&CPoint7}
    Scroll Untill View  ${KU_W_IF_T&C8SubPoint1}
    Verify Element And Text  ${KU_W_IF_T&C8SubPoint1}  ${e_IF_T&C8SubPoint1}
    Scroll Untill View  ${KU_W_IF_T&C8SubPoint2}
    Verify Element And Text  ${KU_W_IF_T&C8SubPoint2}  ${e_IF_T&C8SubPoint2}
    Verify Element And Text  ${KU_W_IF_T&C8SubPoint3}  ${e_IF_T&C8SubPoint3}
    Scroll Untill View  ${KU_W_IF_T&C8SubPoint4}
    Verify Element And Text  ${KU_W_IF_T&C8SubPoint4}  ${e_IF_T&C8SubPoint4}
    Wait And Click  ${KU_W_IF_T&CCloseIcon}