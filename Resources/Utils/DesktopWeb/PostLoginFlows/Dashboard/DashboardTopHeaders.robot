*** Keywords ***

Verify PostLogin Top Headers Verification
    Log To Console  Top Headers
    Verify Page Contains Element  ${KU_W_postlogin_homeTab}
    Verify Page Contains Element  ${KU_W_investLink}
    Verify Page Contains Element  ${KU_W_insureLink}
    Verify Page Contains Element  ${KU_W_remit_Link}
    Verify Page Contains Element  ${KU_W_loanLink}
    Verify Page Contains Element  ${KU_W_featureLink}
    Wait And Click  ${KU_W_featureLink}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_postlogin_setAGoalTopTab} 
    Verify Page Contains Element  ${KU_W_feature_familyAccountLink}
    Verify Page Contains Element  ${KU_W_feature_manageAccountLink}
    Verify Page Contains Element  ${KU_W_feature_saveTaxesLink}
    Verify Page Contains Element  ${KU_W_feature_taxHarvestingLink}
    Verify Page Contains Element  ${KU_W_postlogin_rewardsTab}
    Verify Page Contains Element  ${KU_W_postlogin_blogTab}
    Verify Page Contains Element  ${KU_W_postlogin_primaryPortfolioTab}