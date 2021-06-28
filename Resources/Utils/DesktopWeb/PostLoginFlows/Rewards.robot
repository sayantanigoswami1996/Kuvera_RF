*** Keywords ***

Verify PostLogin Rewards Menu Navigation
    Log To Console  Rewards
    Wait And Click  ${KU_W_rewards_link}
    Wait For Element Visibility  ${KU_W_rewards_karmaRewardsTitle}
    Verify Page Contains Element  ${KU_W_rewards_karmaRewardsTitle}
    Verify Page Contains Element  ${KU_W_rewards_digiGoldTitle}
    Verify Page Contains Image  ${KU_W_rewards_dgImg}
    Verify Page Contains Image  ${KU_W_rewards_karmaRewardsImg}
    Verify Page Contains Element  ${KU_W_rewards_getCoins}
    Verify Page Contains Element  ${KU_W_rewards_coinsTitle}
    Wait And Click  ${KU_W_rewards_spendCoinsLink}
    Verify Scratch And Win Page
    Go Back
    Verify Page Contains Element  ${KU_W_rewards_code}
    Verify Joined Friends Popup
    Verify Banner
    Verify Get Coins


Verify Joined Friends Popup
    Wait And Click  ${KU_W_rewards_joinedFriendsLink}
    Verify Page Contains Element  ${KU_W_rewards_joinedFriendsTitle}
    Verify Page Contains Element  ${KU_W_rewards_noOneHasJoinedYet}
    Verify Page Contains Element  ${KU_W_rewards_noOneHasJoinedSubtitle}
    Verify Sharing Menus  ${KU_W_rewards_inviteFriendsBtn}
    Wait And Click  ${KU_W_postlogin_feature_copyLink}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_postlogin_copyLink} 
    Wait And Click  ${KU_W_rewards_joinedFriendsPopupClose}

Verify Banner
    Wait For Element Visibility  ${KU_W_rewards_earnBannerTitle}
    Verify Element And Text  ${KU_W_rewards_earnBannerTitle}  ${e_rewards_earnBannerTitle}
    Verify Page Contains Image  ${KU_W_rewards_earnBannerImg}
    Verify Sharing Menus  ${KU_W_rewards_inviteAndEarnLink}
    Wait And Click  ${KU_W_postlogin_feature_copyLink}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_postlogin_copyLink}
    Verify Page Contains Element  ${KU_W_rewards_scratchBannerTitle}
    Verify Page Contains Image  ${KU_W_rewards_scratchBannerImg}
    Wait And Click  ${KU_W_rewards_scratchAndWinLink}
    Verify Scratch And Win Page
    Go Back

Verify Get Coins
    Verify Page Contains Element  ${KU_W_rewards_refer100Coins}
    Verify Page Contains Element  ${KU_W_rewards_goals50Coins} 
    Verify Page Contains Element  ${KU_W_rewards_sip25Coins}
    Verify Page Contains Element  ${KU_W_rewards_mfCoins}
    Verify Page Contains Element  ${KU_W_rewards_stockCoins}
    Verify Page Contains Element  ${KU_W_rewards_goldCoins}
    Verify Page Contains Element  ${KU_W_rewards_epfCoins}
    Wait And Click  ${KU_W_rewards_referIcon}
    Verify Page Contains Element  ${KU_W_IF_inviteFriendsSubTitle1} 
    Go Back
    Wait And Click  ${KU_W_rewards_goalsIcon}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Go Back
    Wait And Click  ${KU_W_rewards_sipIcon} 
    Verify Page Contains Element  ${KU_W_invest_mf_searchFundsLabel}
    Go Back
    Wait And Click  ${KU_W_rewards_mfIcon} 
    Verify Page Contains Element  ${KU_W_rewards_MFPanBox}
    Go Back
    Wait And Click  ${KU_W_rewards_stockIcon}
    Verify Page Contains Element  ${KU_W_rewards_importStocks}
    Go Back
    Wait And Click  ${KU_W_rewards_goldIcon}
    Wait For Element Visibility  ${KU_W_dg_screenTitle}
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText}
    Go Back
    Wait And Click  ${KU_W_rewards_epfIcon}
    Verify Page Contains Element  ${KU_W_portfolio_EPF_importAndTrackTitle}
    Go Back

Verify Sharing Menus
    [Arguments]  ${inviteBtn}
    Wait And Click  ${inviteBtn}
    Wait Scroll And Click Element  ${KU_W_tc_facebookBtn}
    Switch To Window Verify Title And Close  ${e_HI_facebookTitle}
    Wait And Click  ${inviteBtn}
    Wait Scroll And Click Element  ${KU_W_tc_twitterBtn}
    Sleep  5s
    Switch To Window Verify Title And Close  ${e_HI_twitterTitle}
    Wait And Click  ${inviteBtn}
    Wait Scroll And Click Element  ${KU_W_tc_whatsappBtn}  
    Switch To Window
    Wait And Click  ${inviteBtn}
    Wait Scroll And Click Element  ${KU_W_tc_telegramBtn}
    Switch To Window Verify Title And Close  ${e_HI_telegramTitle}
    Wait And Click  ${inviteBtn}
    Wait Scroll And Click Element  ${KU_W_tc_mailBtn}
    Wait And Click  ${inviteBtn}

Verify Scratch And Win Page
    Verify Page Contains Element  ${KU_W_rewards_scratchAndWinTitle}
    Verify Page Contains Image  ${KU_W_rewards_scratchCardImg}
    Verify Page Contains Element  ${KU_W_rewards_unlockFeaturesTitle}
    Verify Page Contains Element  ${KU_W_rewards_THTitle}
    Verify Page Contains Element  ${KU_W_rewards_THSubtitle}
    Verify Page Contains Image  ${KU_W_rewards_THImg} 
    Verify Page Contains Element  ${KU_W_rewards_THCoins}
    Verify Page Contains Element  ${KU_W_rewards_TSTitle}
    Verify Page Contains Image  ${KU_W_rewards_TSImg} 
    Verify Page Contains Element  ${KU_W_rewards_TSSubtitle}
    Verify Page Contains Element  ${KU_W_rewards_TSCoins}
    Verify Page Contains Element  ${KU_W_rewards_FATitle}
    Verify Page Contains Element  ${KU_W_rewards_FACoins} 
    Verify Page Contains Element  ${KU_W_rewards_FASubTitle}
    Verify Page Contains Image  ${KU_W_rewards_FAImg}