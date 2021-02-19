*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Tax Harvesting Page
    Log To Console  Tax Harvesting
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_TH_link}
    Verify Text On Page  ${e_feature_TH_screenTitle}
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_feature_TH_screenSubTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_TH_imgIcon}
    Verify Text On Page  ${e_feature_TH_definitionTitle}
    Swipe By Percent  70  70  20  20  5000
    Verify Text On Page  ${e_feature_TH_definitionDesc} 
    Wait And Click Element On Android  ${KU_A_feature_TH_learnMorelink}
    Sleep  2s 
    Verify Text On Page  ${e_feature_TH_learnMoreLinkDesc}
    Go Back
    Sleep  2s
    Swipe By Percent  70  70  20  20  5000
    Verify Investment Table
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn} 
    Sleep  2s
    Verify Text On Page  ${e_feature_TH_step1}
    Verify Text On Page  ${e_feature_TH_howItWorksTitle}
    Verify Text On Page  ${e_feature_TH_howItWorksDesc}
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000
    
Verify Investment Table 
    Verify Text On Page  ${e_feature_TH_investmentTableTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_TH_crossIcon}
    Verify Page Contains Element On Android  ${KU_A_feature_TH_tickIcon}
    Verify Text On Page  ${e_feature_TH_withoutTaxHarvesting}
    Verify Text On Page  ${e_feature_TH_withTaxHarvesting}
    Verify Text On Page  ${e_feature_TH_preTaxGains}
    Verify Text On Page  ${e_feature_TH_withAndWithoutPreTaxVal}
    Verify Text On Page  ${e_feature_TH_withAndWithoutPreTaxVal}
    Verify Page Contains Element On Android  ${KU_A_feature_TH_taxableGainsTitle}
    Verify Text On Page  ${e_feature_TH_withoutTaxTaxableGains}
    Verify Text On Page  ${e_feature_TH_withTaxTaxableGainsAndLTCG}
    Verify Text On Page  ${e_feature_TH_LTCG} 
    Verify Text On Page  ${e_feature_TH_withoutTaxLTCG} 
    Verify Text On Page  ${e_feature_TH_withTaxTaxableGainsAndLTCG}
    Verify Text On Page  ${e_feature_TH_inHandGains}
    Verify Text On Page  ${e_feature_TH_withoutTaxInHandGains}
    Verify Text On Page  ${e_feature_TH_withTaxInHandGains}
    







