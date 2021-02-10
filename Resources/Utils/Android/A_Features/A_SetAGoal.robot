*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Set A Goal Page
    Log To Console  Set A Goal
    Navigate To Various Links Under Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_featureDropdown}
    Sleep  3s
    Wait And Click Element On Android  ${KU_A_featureDropdown}
    Wait And Click Element On Android  ${KU_A_feature_setAGoalLink}
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_screenTitle}  ${e_feature_SG_screenTitle}
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_screenSubTitle}  ${e_feature_SG_screenSubTitle}
    Verify Android Own A Home Questionnaire


