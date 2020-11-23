*** Settings ***

Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

*** Keywords ***

Verify Questionnaire
    Log To Console  QScreen 
    Wait For Element Visbility  ${KU_W_feature_sg_questionScreen}
   

Verify PreLogin Set A Goal Page
    
    Wait For Element Visbility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}
    Wait For Element Visbility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Verify Element And Text  ${KU_W_feature_sg_content}  ${e_feature_sg_content}

    Verify Element And Text  ${KU_W_feature_sg_ownAHome}  ${e_feature_sg_ownAHome}
    Verify Element And Text  ${KU_W_feature_sg_buyACar}  ${e_feature_sg_buyACar}
    Verify Element And Text  ${KU_W_feature_sg_saveTax}  ${e_feature_sg_saveTax}
    Verify Element And Text  ${KU_W_feature_sg_retireEasy}  ${e_feature_sg_retireEasy}
    Verify Element And Text  ${KU_W_feature_sg_25thAnniversary}  ${e_feature_sg_25thAnniversary}
    Verify Element And Text  ${KU_W_feature_sg_foreignVacation}  ${e_feature_sg_foreignVacation}
    Verify Element And Text  ${KU_W_feature_sg_educateMyChild}  ${e_feature_sg_educateMyChild}
    Verify Element And Text  ${KU_W_feature_sg_createMyOwn}  ${e_feature_sg_createMyOwn}
    Click Element  ${KU_W_feature_sg_closeBtn} 
   