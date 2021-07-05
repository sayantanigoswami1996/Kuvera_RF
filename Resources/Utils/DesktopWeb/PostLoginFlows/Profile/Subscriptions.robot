*** Keywords ***

Verify PostLogin Subscription Menu Navigation
    Log To Console  Subscription
    Wait And Click  ${KU_W_ca_caretDropdown}
    Wait And Click  ${KU_W_subscription_subscriptionLink}
    Verify Page Contains Element  ${KU_W_subscription_subscriptionTitle}
    Wait And Click  ${KU_W_riskprofile_tab}
    Navigate To Profile And Verify Title  ${KU_W_subscription_subscriptionTab}  ${KU_W_subscription_subscriptionTitle}  ${KU_W_subscription_taxHarvestingTitle}
    Verify Page Contains Element  ${KU_W_subscription_taxHarvestingSubTitle} 
    # Tax Harvesting 
    Verify Page Contains Element  ${KU_W_subscription_THYearlyVal}
    Verify Page Contains Element  ${KU_W_subscription_THFYLabel}
    Wait And Click  ${KU_W_subscription_THLearnMore}
    Wait For Element Visibility  ${KU_W_feature_th_screenTitle}   
    Verify Element And Text  ${KU_W_feature_th_screenTitle}  ${e_feature_th_TitleText}
    Go Back
    Wait And Click  ${KU_W_subscription_THActivateBtn}
    Verify Account Setup Popup
    # TradeSmart
    Verify Page Contains Element  ${KU_W_subscription_tradeSmartTitle}
    Wait And Click  ${KU_W_subscription_TSLearnMore}
    Wait For Element Visibility  ${KU_W_feature_ts_title} 
    Verify Element And Text  ${KU_W_feature_ts_title}  ${e_feature_ts_titleText}
    Go Back
    Verify Page Contains Element  ${KU_W_subscription_TSYearlyVal}
    Verify Page Contains Element  ${KU_W_subscription_lifelongTSLabel}
    Wait And Click  ${KU_W_subscription_TSActivateBtn}
    Verify Compelete Registration Screen For NONKYC Flow  ${KU_W_feature_ts_accSetUpTitle}  ${KU_W_feature_ts_accSetUpDesc}  ${e_feature_ts_accSetUpMSg}  ${KU_W_postlogin_continue}
    # Family Account
    Verify Page Contains Element  ${KU_W_subscription_familyAccountTitle} 
    Wait And Click  ${KU_W_subscription_FALearnMore}
    Wait For Element Visibility  ${KU_W_feature_fa_screenTitle}
    Verify Element And Text  ${KU_W_feature_fa_screenTitle}  ${e_feature_fa_screenTitle}
    Go Back
    Verify Page Contains Element  ${KU_W_subscription_FAYearlyVal}
    Verify Page Contains Element  ${KU_W_subscription_lifelongFALabel}
    Wait And Click  ${KU_W_subscription_FAActivateBtn}
    Verify Page Contains Element  ${KU_W_subscription_FACoinTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referFriendTitle}
    Verify Page Contains Element  ${KU_W_postlogin_feature_referCoins}
    Go Back