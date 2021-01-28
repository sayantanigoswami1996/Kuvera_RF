*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Own A Home Questionnaire
    # Get all the expected questionnaires from json file
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
    
    # Verify the questionnaires title and enter the input values
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg1_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_homeCostTxt}  ${e_feature_sg1_cost}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_goalDurationTxt}  ${e_feature_sg1_goalDuration}
    Verify Question Title  ${KU_W_feature_sg_Q5}  ${query5}
    Click Button  ${KU_W_feature_sg_yes}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q6}  ${query6}  ${KU_W_feature_sg_downPaymentTxt}  ${e_feature_sg1_downPayment}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q7}  ${query7}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg1_investUpfront}
    Verify Recommendation And Navigation  ${KU_W_feature_sg_married}
