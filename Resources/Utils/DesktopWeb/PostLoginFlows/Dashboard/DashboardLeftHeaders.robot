*** Keywords ***

Verify PostLogin Left Bar Navigation
    Log To Console  Left Bar
    Verify Page Contains Element  ${KU_W_postlogin_dasboardTab}
    # PortFolio
    Verify Page Contains Element  ${KU_W_postlogin_portfolioTab}
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    # Reports
    Verify Page Contains Element  ${KU_W_postlogin_reportsTab}
    Wait And Click  ${KU_W_postlogin_reportsTab}
    Verify Element And Text  ${KU_W_reports_pageTitle}  ${e_report_pageTitle}
    # Import Portfolio
    Verify Page Contains Element  ${KU_W_postlogin_importPortfolioTab}
    Wait And Click  ${KU_W_postlogin_importPortfolioTab}
    Verify Track Investment Popup
    # Invite Friends
    Verify Page Contains Element  ${KU_W_postlogin_inviteFriendsTab}
    Wait And Click  ${KU_W_postlogin_inviteFriendsTab}
    Verify Element And Text  ${KU_W_IF_inviteFriendsTitle}  ${e_IF_inviteFriendsTitle}
    # Manage Folio
    Verify Page Contains Element  ${KU_W_postlogin_manageFolioTab} 
    Wait And Click  ${KU_W_postlogin_manageFolioTab}
    Verify Registration Page Postlogin  ${e_managefolio_completeKYCMsg}  ${KU_W_managefolio_registrationBtn}
    # SIP STP AND SWP
    Verify SIP Tab
    # Set A Goal
    Verify Page Contains Element  ${KU_W_postlogin_setAGoalTab}
    Wait And Click  ${KU_W_postlogin_setAGoalTab}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    # Dashboard
    Wait And Click  ${KU_W_postlogin_dasboardTab}
    Verify Page Contains Element  ${KU_W_dashboard_exploreTitle}

Verify SIP Tab
    Verify Page Contains Element  ${KU_W_postlogin_SIP_STP_SWPTab} 
    Wait And Click  ${KU_W_postlogin_SIP_STP_SWPTab} 
    Verify Element And Text  ${KU_W_postlogin_noActiveSIPTitle}  ${e_postlogin_noActiveSIPTitle}