*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Educate My Child Questionnaire
    # Get all the expected questionnaires from json file
    ${query1}  Get Json Values  $.Questionnaire..g7q1  Resources/TestData/Questionnaire.json 
    ${query2}  Get Json Values  $.Questionnaire..g7q2  Resources/TestData/Questionnaire.json 
    ${query3}  Get Json Values  $.Questionnaire..g7q3  Resources/TestData/Questionnaire.json 
    ${query4}  Get Json Values  $.Questionnaire..g7q4  Resources/TestData/Questionnaire.json 
    ${query5}  Get Json Values  $.Questionnaire..g7q5  Resources/TestData/Questionnaire.json 

    Wait For Element Visibility  ${KU_W_feature_sg_educateMyChild}
    Click Element  ${KU_W_feature_sg_educateMyChild}
    Wait For Element Visibility  ${KU_W_feature_sg_questionScreen}

    # Verify the questionnaires title and enter the input values
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg7_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_costTxt}  ${e_feature_sg8_cost}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_goalDurationTxt}  ${e_feature_sg7_goalDuration}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q5}  ${query5}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg7_investUpfront}
    Verify Recommendation And Navigation  ${KU_W_feature_sg_dependents}  ${KU_W_feature_sg_haveALoan}  ${KU_W_feature_sg_ownAHome}   
