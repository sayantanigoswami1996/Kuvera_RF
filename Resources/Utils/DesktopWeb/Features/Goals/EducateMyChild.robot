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

    Wait Scroll And Click Element  ${KU_W_feature_sg_educateMyChild}
    Wait For Element Visibility  ${KU_W_feature_sg_questionScreen}

    # Verify the questionnaires title and enter the input values
    Verify Name And Age Questionnaire On PreLogin  ${query1}  ${query2}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_costTxt}  ${e_feature_sg8_cost}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_goalDurationTxt}  ${e_feature_sg7_goalDuration}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q5}  ${query5}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg7_investUpfront}
    Verify Profile Page Or Add Goal Action On Pre And PostLogin  ${KU_W_feature_sg_p_ownAHome}   
