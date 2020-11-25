*** Settings ***

Library     SeleniumLibrary
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../Resources/Utils/DesktopWeb/Common.robot

   
*** Keywords ***
Press Enter Key
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Navigate To Feature Goals
    Wait For Element Visbility  ${KU_W_logo_signup}
    Click Element  ${KU_W_logo_signup}
    Click Element  ${KU_W_featureLink}
    Wait For Element Visbility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}

Get All Goals And Verify
    ${goal1}  Get Json Values  $.Goals.g1  Resources/TestData/Goals.json
    ${goal2}  Get Json Values  $.Goals.g2  Resources/TestData/Goals.json
    ${goal3}  Get Json Values  $.Goals.g3  Resources/TestData/Goals.json
    ${goal4}  Get Json Values  $.Goals.g4  Resources/TestData/Goals.json
    ${goal5}  Get Json Values  $.Goals.g5  Resources/TestData/Goals.json
    ${goal6}  Get Json Values  $.Goals.g6  Resources/TestData/Goals.json
    ${goal7}  Get Json Values  $.Goals.g7  Resources/TestData/Goals.json
    ${goal8}  Get Json Values  $.Goals.g8  Resources/TestData/Goals.json

    ${listCount} =  Get Element Count  ${KU_W_feature_goalsList}
    Log To Console    ${listCount}
    FOR  ${j}  IN RANGE  1   ${listCount}+1
        Sleep  2s
        ${goalName} =  Get Text  xpath=//div[@class='cards']/a[${j}]/p
        Log To console  ${goalName}
        Run keyword If  ['${goalName}'] == ${goal1}   Verify Own A Home Questionnaire 
        ...    ELSE IF  ['${goalName}'] == ${goal2}  Verify Buy A Car Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal3}  Verify Save Tax Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal4}  Log To Console  PENDING4
        ...    ELSE IF  ['${goalName}'] == ${goal5}  Log To Console  PENDING5
        ...    ELSE IF  ['${goalName}'] == ${goal6}  Log To Console  PENDING6
        ...    ELSE IF  ['${goalName}'] == ${goal7}  Log To Console  PENDING7
        ...    ELSE   Log To Console  Completed
    END

Enter Name And Age
    Wait For Element Visbility  ${KU_W_feature_sg_questionScreen}
    Verify Element And Text  ${KU_W_feature_sg_Q1}  ${e_feature_sg_Q1}
    Press Keys  ${KU_W_feature_sg_Q1_userName}   CTRL+A+BACKSPACE
    sleep  2s  
    Input Text  ${KU_W_feature_sg_Q1_userName}  ${e_feature_sg_A1_userName}
    Press Enter Key  ${KU_W_feature_sg_Q1_userName}  

    Verify Element And Text  ${KU_W_feature_sg_Q2}  ${e_feature_sg_Q2}
    Sleep  1s
    Press Keys  ${KU_W_feature_sg_Q2_userAge}   CTRL+A+BACKSPACE
    Input Text  ${KU_W_feature_sg_Q2_userAge}  ${e_feature_sg_A2_userAge}
    Press Enter Key  ${KU_W_feature_sg_Q2_userAge}  


Verify Own A Home Questionnaire

    Log To Console  QScreen 
    Wait For Element Visbility  ${KU_W_feature_sg_ownAHome}
    Click Element  ${KU_W_feature_sg_ownAHome}
    Enter Name And Age  

    Verify Element And Text  ${KU_W_feature_sg_Q3}  ${e_feature_sg_Q3}
    Input Text  ${KU_W_feature_sg_Q3_homeCost}  ${e_feature_sg_A3_homeCost}
    Press Enter Key  ${KU_W_feature_sg_Q3_homeCost}

    Verify Element And Text  ${KU_W_feature_sg_Q4}  ${e_feature_sg_Q4}
    Input Text  ${KU_W_feature_sg_Q4_goalDuration}  ${e_feature_sg_A4_goalDuration}
    Press Enter Key  ${KU_W_feature_sg_Q4_goalDuration}

    Verify Element And Text  ${KU_W_feature_sg_Q5}  ${e_feature_sg_Q5}
    Click Button  ${KU_W_feature_sg_Q5_yes}

    Verify Element And Text  ${KU_W_feature_sg_Q6}  ${e_feature_sg_Q6}
    Input Text  ${KU_W_feature_sg_Q6_downPayment}  ${e_feature_sg_A6_downPayment}
    Press Enter Key  ${KU_W_feature_sg_Q6_downPayment}

    Verify Element And Text  ${KU_W_feature_sg_Q7}  ${e_feature_sg_Q7}
    Input Text  ${KU_W_feature_sg_A7_upFront}  ${e_feature_sg_A7_upFront}
    Press Enter Key  ${KU_W_feature_sg_A7_upFront}

    Verify Element And Text  ${KU_W_feature_sg_almostDone}  ${e_feature_sg_almostDone}
    Click Button  ${KU_W_feature_sg_continue}
    Wait For Element Visbility  ${KU_W_feature_sg_investmentSummary}
    Verify Page Contains Element  ${KU_W_feature_sg_investmentSummary}

    Wait For Element Visbility  ${KU_W_feature_sg_seeYourPlan}
    Verify Element And Text  ${KU_W_feature_sg_seeYourPlan}  ${e_feature_sg_seeYourPlan}
    Click Button  ${KU_W_feature_sg_seeYourPlan}

    Wait For Element Visbility  ${KU_W_feature_sg_getThisPlan}
    Scroll Untill View  ${KU_W_feature_sg_getThisPlan}
    Verify Element And Text  ${KU_W_feature_sg_getThisPlan}  ${e_feature_sg_getThisPlan}
    Click Button  ${KU_W_feature_sg_getThisPlan}

    Verify Signup Page
    Navigate To Feature Goals

Verify Buy A Car Questionnaire

    Log To Console  QScreen 
    Wait For Element Visbility  ${KU_W_feature_sg_buyACar}
    Click Element  ${KU_W_feature_sg_buyACar}
    Enter Name And Age  

    Verify Element And Text  ${KU_W_feature_sg_Q3}   ${e_feature_sg_buyaCar_Q3}
    Clear Element Text   ${KU_W_feature_sg_Q3_carCost}
    Input Text  ${KU_W_feature_sg_Q3_carCost}  ${e_feature_sg_A3_carCost}
    Press Enter Key  ${KU_W_feature_sg_Q3_carCost}

    Verify Element And Text  ${KU_W_feature_sg_Q4}  ${e_feature_sg_buyAcar_Q4}
    Clear Element Text  ${KU_W_feature_sg_Q4_goalDuration}
    Input Text  ${KU_W_feature_sg_Q4_goalDuration}  ${e_feature_sg_A4_goalDuration}
    Press Enter Key  ${KU_W_feature_sg_Q4_goalDuration}

    Verify Element And Text  ${KU_W_feature_sg_Q5}   ${e_feature_sg_Q7}
    Clear Element Text  ${KU_W_feature_sg_A7_upFront}
    Input Text  ${KU_W_feature_sg_A7_upFront}  ${e_feature_sg_A7_upFront}
    Press Enter Key  ${KU_W_feature_sg_A7_upFront}

    Verify Element And Text  ${KU_W_feature_sg_almostDone}  ${e_feature_sg_almostDone}
    Click Button  ${KU_W_feature_sg_continue}
    Wait For Element Visbility  ${KU_W_feature_sg_investmentSummary}
    Verify Page Contains Element  ${KU_W_feature_sg_investmentSummary}
    
    Wait For Element Visbility  ${KU_W_feature_sg_seeYourPlan}
    Verify Element And Text  ${KU_W_feature_sg_seeYourPlan}  ${e_feature_sg_seeYourPlan}
    Click Button  ${KU_W_feature_sg_seeYourPlan}

    Wait For Element Visbility  ${KU_W_feature_sg_getThisPlan}
    Scroll Untill View  ${KU_W_feature_sg_getThisPlan}
    Verify Element And Text  ${KU_W_feature_sg_getThisPlan}  ${e_feature_sg_getThisPlan}
    Click Button  ${KU_W_feature_sg_getThisPlan}
    Verify Signup Page
    Navigate To Feature Goals    

Verify Save Tax Questionnaire
   
    Log To Console  QScreen 
    Wait For Element Visbility  ${KU_W_feature_sg_saveTax}
    Click Element  ${KU_W_feature_sg_saveTax}
    Enter Name And Age  

    Verify Element And Text  ${KU_W_feature_sg_Q3}  ${e_feature_sg__saveTax_Q3}
    Clear Element Text   ${KU_W_feature_sg_Q3_monthlyInvestment} 
    Input Text  ${KU_W_feature_sg_Q3_monthlyInvestment}   ${e_feature_sg_A3_monthlyInvestment}
    Press Enter Key  ${KU_W_feature_sg_Q3_monthlyInvestment}  
    
    Verify Element And Text  ${KU_W_feature_sg_Q4}  ${e_feature_sg_saveTax_Q4}
    Clear Element Text   ${KU_W_feature_sg_Q4_goalDuration} 
    Input Text  ${KU_W_feature_sg_Q4_goalDuration}  ${e_feature_sg_A4_goalDuration}
    Press Enter Key  ${KU_W_feature_sg_Q4_goalDuration}

    Verify Element And Text  ${KU_W_feature_sg_Q5}  ${e_feature_sg_saveTax_Q5}
    Clear Element Text   ${KU_W_feature_sg_A7_upFront} 
    Input Text  ${KU_W_feature_sg_A7_upFront}  ${e_feature_sg_A7_upFront}
    Press Enter Key  ${KU_W_feature_sg_A7_upFront}

    Verify Element And Text  ${KU_W_feature_sg_almostDone}  ${e_feature_sg_almostDone}
    Click Button  ${KU_W_feature_sg_continue}
    Wait For Element Visbility  ${KU_W_feature_sg_investmentSummary}
    Verify Page Contains Element  ${KU_W_feature_sg_investmentSummary}

    Wait For Element Visbility  ${KU_W_feature_sg_seeYourPlan}
    Verify Element And Text  ${KU_W_feature_sg_seeYourPlan}  ${e_feature_sg_seeYourPlan}
    Click Button  ${KU_W_feature_sg_seeYourPlan}

    Wait For Element Visbility  ${KU_W_feature_sg_getThisPlan}
    Scroll Untill View  ${KU_W_feature_sg_getThisPlan}
    Verify Element And Text  ${KU_W_feature_sg_getThisPlan}  ${e_feature_sg_getThisPlan}
    Click Button  ${KU_W_feature_sg_getThisPlan}
    Verify Signup Page
    Navigate To Feature Goals

Verify PreLogin Set A Goal Page
    # Log To Console   ${GOAL}
    # Click Element  ${KU_W_featureLink} 
    Wait For Element Visbility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}
    Wait For Element Visbility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Verify Element And Text  ${KU_W_feature_sg_content}  ${e_feature_sg_content}
    Sleep  2s
    Get All Goals And Verify
    Click Element  ${KU_W_feature_sg_homePageCancelBtn} 