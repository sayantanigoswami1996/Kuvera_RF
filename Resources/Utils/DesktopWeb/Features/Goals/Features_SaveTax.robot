*** Settings ***

Library     SeleniumLibrary


*** Keywords ***

Get All Questionnaire  
    ${query1}  Get Json Values  $.Questionnaire..g1q1  Resources/TestData/Questionnaire.json 
    ${query2}  Get Json Values  $.Questionnaire..g1q2  Resources/TestData/Questionnaire.json 
    ${query3}  Get Json Values  $.Questionnaire..g1q3  Resources/TestData/Questionnaire.json 
    ${query4}  Get Json Values  $.Questionnaire..g1q4  Resources/TestData/Questionnaire.json 
    ${query5}  Get Json Values  $.Questionnaire..g1q5  Resources/TestData/Questionnaire.json 
    ${query6}  Get Json Values  $.Questionnaire..g1q6  Resources/TestData/Questionnaire.json 
    ${query7}  Get Json Values  $.Questionnaire..g1q7  Resources/TestData/Questionnaire.json 
    
Verify Goals 
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

Verify Save Tax Questionnaire
    Sleep  1s
    Wait For Element Visibility  ${KU_W_feature_sg_saveTax}
    Click Element  ${KU_W_feature_sg_saveTax}
    Enter Name And Age  

    Verify Element And Text  ${KU_W_feature_sg_Q3}  ${e_feature_sg__saveTax_Q3}
    Clear Element Text   ${KU_W_feature_sg_Q3_monthlyInvestment} 
    Input Text  ${KU_W_feature_sg_Q3_monthlyInvestment}   ${e_feature_sg_A3_monthlyInvestment}  clear=True
    Press Enter Key  ${KU_W_feature_sg_Q3_monthlyInvestment}  
    
    Verify Element And Text  ${KU_W_feature_sg_Q4}  ${e_feature_sg_saveTax_Q4}
    Clear Element Text   ${KU_W_feature_sg_Q4_goalDuration} 
    Input Text  ${KU_W_feature_sg_Q4_goalDuration}  ${e_feature_sg_A4_goalDuration}  clear=True
    Press Enter Key  ${KU_W_feature_sg_Q4_goalDuration}

    Verify Element And Text  ${KU_W_feature_sg_Q5}  ${e_feature_sg_saveTax_Q5}
    Clear Element Text   ${KU_W_feature_sg_A7_upFront} 
    Input Text  ${KU_W_feature_sg_A7_upFront}  ${e_feature_sg_A7_upFront}  clear=True
    Press Enter Key  ${KU_W_feature_sg_A7_upFront}
    Verify Recommendation And Navigation