*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Set A Goal Page
    Log To Console  Set A Goal
    Navigate To Menus Under Features
    Wait And Click Element On Android  ${KU_A_feature_setAGoalLink}
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_screenTitle}  ${e_feature_SG_screenTitle}
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_screenSubTitle}  ${e_feature_SG_screenSubTitle}
    Verify Android Own A Home Questionnaire


    