*** Settings ***

Library     SeleniumLibrary


*** Keywords ***

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