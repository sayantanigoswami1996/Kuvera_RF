*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Question Title
    [Arguments]  ${element}  ${text}
    ${actualTitle} =  Get Text  ${element}
    ${expectedTitle} =  Convert To String    ${text}
    Should be equal  ['${actualTitle}']  ${expectedTitle}

Verify Feature Goals
    ${goal1}  Get Json Values  $.Goals.g1  Resources/TestData/Goals.json
    ${goal2}  Get Json Values  $.Goals.g2  Resources/TestData/Goals.json
    ${goal3}  Get Json Values  $.Goals.g3  Resources/TestData/Goals.json
    ${goal4}  Get Json Values  $.Goals.g4  Resources/TestData/Goals.json
    ${goal5}  Get Json Values  $.Goals.g5  Resources/TestData/Goals.json
    ${goal6}  Get Json Values  $.Goals.g6  Resources/TestData/Goals.json
    ${goal7}  Get Json Values  $.Goals.g7  Resources/TestData/Goals.json
    ${goal8}  Get Json Values  $.Goals.g8  Resources/TestData/Goals.json

    ${listCount} =  Get Element Count  ${KU_W_feature_goalsList}
    FOR  ${j}  IN RANGE  1   ${listCount}+1
        Sleep  1s
        ${goalName} =  Get Text  xpath=//div[@class='cards']/a[${j}]/p
        Log To console  ${goalName}
        Run keyword If  ['${goalName}'] == ${goal1}  Verify Own A Home Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal2}  Verify Buy A Car Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal3}  Verify Save Tax Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal4}  Log To Console  PENDING4
        ...    ELSE IF  ['${goalName}'] == ${goal5}  Log To Console  PENDING5
        ...    ELSE IF  ['${goalName}'] == ${goal6}  Log To Console  PENDING6
        ...    ELSE IF  ['${goalName}'] == ${goal7}  Log To Console  PENDING7
        ...    ELSE   Go Back
    END

Verify Question And Enter Input
    [Arguments]  ${actualQTitle}  ${exptcedQTitle}  ${inputTxtField}  ${inputValue}
    Verify Question Title  ${actualQTitle}  ${exptcedQTitle}
    Clear Text Field  ${inputTxtField}
    Input Text  ${inputTxtField}  ${inputValue}
    Press Enter Key  ${inputTxtField}

Navigate To Features Goals
    Wait For Element Visibility  ${KU_W_logo_signup}
    Click Element  ${KU_W_logo_signup}
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}

Verify Recommendation And Navigation
    Verify Element And Text  ${KU_W_feature_sg_almostDone}  ${e_feature_sg_almostDone}
    Click Button  ${KU_W_feature_sg_continue}
    Wait For Element Visibility  ${KU_W_feature_sg_investmentSummary}
    Verify Page Contains Element  ${KU_W_feature_sg_investmentSummary}

    Wait For Element Visibility  ${KU_W_feature_sg_seeYourPlan}
    Verify Element And Text  ${KU_W_feature_sg_seeYourPlan}  ${e_feature_sg_seeYourPlan}
    Click Button  ${KU_W_feature_sg_seeYourPlan}

    Wait For Element Visibility  ${KU_W_feature_sg_getThisPlan}
    Scroll Untill View  ${KU_W_feature_sg_getThisPlan}
    Verify Element And Text  ${KU_W_feature_sg_getThisPlan}  ${e_feature_sg_getThisPlan}
    Click Button  ${KU_W_feature_sg_getThisPlan}
    Verify Signup Page
    Navigate To Features Goals

Verify Own A Home Questionnaire
    ${query1}  Get Json Values  $.Questionnaire..g1q1  Resources/TestData/Questionnaire.json
    ${query2}  Get Json Values  $.Questionnaire..g1q2  Resources/TestData/Questionnaire.json
    ${query3}  Get Json Values  $.Questionnaire..g1q3  Resources/TestData/Questionnaire.json
    ${query4}  Get Json Values  $.Questionnaire..g1q4  Resources/TestData/Questionnaire.json
    ${query5}  Get Json Values  $.Questionnaire..g1q5  Resources/TestData/Questionnaire.json
    ${query6}  Get Json Values  $.Questionnaire..g1q6  Resources/TestData/Questionnaire.json
    ${query7}  Get Json Values  $.Questionnaire..g1q7  Resources/TestData/Questionnaire.json

    Wait For Element Visibility  ${KU_W_feature_sg_ownAHome}
    Click Element  ${KU_W_feature_sg_ownAHome}
    Wait For Element Visibility  ${KU_W_feature_sg_questionScreen}

    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg1_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_homeCostTxt}  ${e_feature_sg1_cost}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_goalDurationTxt}  ${e_feature_sg1_goalDuration}
    Verify Question Title  ${KU_W_feature_sg_Q5}  ${query5}
    Click Button  ${KU_W_feature_sg_yes}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q6}  ${query6}  ${KU_W_feature_sg_downPaymentTxt}  ${e_feature_sg1_downPayment}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q7}  ${query7}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg1_investUpfront}
    Verify Recommendation And Navigation

Verify PreLogin Set A Goal Page
    # Log To Console   ${GOAL}
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Verify Element And Text  ${KU_W_feature_sg_content}  ${e_feature_sg_content}
    Verify Feature Goals