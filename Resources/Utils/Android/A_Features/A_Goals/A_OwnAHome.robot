*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android Own A Home Questionnaire
    Log To Console  Own A Home
    Wait And Click Element On Android  ${KU_A_feature_ownAHome}
    Wait For Element Visibility On Android  ${KU_A_feature_SG_questionScreen}
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_Q_username}  ${e_feature_SG_Q_username}  
    Input Text  ${KU_A_inputField}  ${e_feature_SG_username}
    Wait And Click Element On Android  ${KU_A_feature_SG_continueBtn}
    Log Source  loglevel=INFO
    Hide Keyboard 
    Wait And Verify Element And Text On Android  ${KU_A_feature_SG_Q_age}  ${e_feature_SG_Q_age}  
    Wait And Click Element On Android  ${KU_A_inputField}
    Sleep  2s
    Input Text  ${KU_A_inputField}  ${e_feature_SG_age}
    Wait And Click Element On Android  ${KU_A_feature_SG_continueBtn}
    