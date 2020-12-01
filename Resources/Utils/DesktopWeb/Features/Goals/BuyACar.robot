*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Buy A Car Questionnaire
    ${query1}  Get Json Values  $.Questionnaire..g2q1  Resources/TestData/Questionnaire.json 
    ${query2}  Get Json Values  $.Questionnaire..g2q2  Resources/TestData/Questionnaire.json 
    ${query3}  Get Json Values  $.Questionnaire..g2q3  Resources/TestData/Questionnaire.json 
    ${query4}  Get Json Values  $.Questionnaire..g2q4  Resources/TestData/Questionnaire.json 
    ${query5}  Get Json Values  $.Questionnaire..g2q5  Resources/TestData/Questionnaire.json 

    Wait For Element Visibility  ${KU_W_feature_sg_buyACar}
    Click Element  ${KU_W_feature_sg_buyACar}
    Wait For Element Visibility  ${KU_W_feature_sg_questionScreen}

    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg2_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_costTxt}  ${e_feature_sg2_cost}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_goalDurationTxt}  ${e_feature_sg2_goalDuration}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q5}  ${query5}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg2_investUpfront}
    Verify Recommendation And Navigation    