*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Tax Calculator Page 
    Go To  ${e_tc_url}
    Wait For Element Visibility  ${KU_W_tc_taxCalcHeader}
    Verify Element And Text  ${KU_W_tc_taxCalcHeader}  ${e_tc_taxCalcHeader}
    Verify Element And Text  ${KU_W_tc_taxCalcSubHeader}  ${e_tc_taxCalcSubHeader}
    # Post Budget - New Regime
    Verify Element And Text  ${KU_W_tc_newRegimeHeader}  ${e_tc_newRegimeHeader}
    Verify Element And Text  ${KU_W_tc_newRegimeIncome}  ${e_tc_netIncomeHeader}
    Verify Element And Text  ${KU_W_tc_newRegimeTaxDue}  ${e_tc_taxDueHeader}
    Verify Page Contains Element  ${KU_W_tc_newRegimeTaxValue}
    # Post Budget - Old Regime
    Verify Element And Text  ${KU_W_tc_oldRegimeHeader}  ${e_tc_oldRegimeHeader}
    Verify Element And Text  ${KU_W_tc_oldRegimeIncome}  ${e_tc_netIncomeHeader}
    Verify Element And Text  ${KU_W_tc_oldRegimeTaxDue}  ${e_tc_taxDueHeader}
    Verify Page Contains Element  ${KU_W_tc_oldRegimeTaxValue}
    Verify Sharing Option
    # Annual Income
    Verify Element And Text  ${KU_W_tc_annualIncomeTitle}  ${e_tc_annualIncomeTitle}
    Click Element  ${KU_W_tc_amountField}
    Input Text  ${KU_W_tc_amountField}  ${e_tc_annualIncomeValue}
    Verify Element And Text  ${KU_W_tc_deductionTitle}  ${e_tc_deductionTitle}
    # HRA
    Wait For Element Visibility  ${KU_W_tc_HRALabel}
    Verify Element And Text  ${KU_W_tc_HRALabel}  ${e_tc_HRALabel}
    Click Element  ${KU_W_tc_HRAField}
    Input Text  ${KU_W_tc_HRAField}  ${e_tc_HRAValue}
    # 80C
    Verify Element And Text  ${KU_W_tc_80CLabel}  ${e_tc_80CLabel}
    Click Element  ${KU_W_tc_80CField}
    Input Text  ${KU_W_tc_80CField}  ${e_tc_80CValue}
    # Housing Loan
    Verify Element And Text  ${KU_W_tc_housingLoanLabel}  ${e_tc_housingLoanLabel} 
    Wait Scroll And Click Element  ${KU_W_tc_housingLoanField} 
    Input Text  ${KU_W_tc_housingLoanField}  ${e_tc_housingLoanValue}
    # Medical Insurance
    Verify Element And Text  ${KU_W_tc_medicalInsuranceLabel}  ${e_tc_medicalInsuranceLabel}
    Wait Scroll And Click Element  ${KU_W_tc_medicalInsuranceField}
    Input Text  ${KU_W_tc_medicalInsuranceField}  ${e_tc_medicalInsuranceValue}
    # Standard Deductions
    Verify Element And Text  ${KU_W_tc_standardDeductionsLabel}  ${e_tc_SDLabel}
    Wait Scroll And Click Element  ${KU_W_tc_standardDeductionsField}
    Input Text  ${KU_W_tc_standardDeductionsField}  ${e_tc_SDValue} 
    # Others
    Verify Element And Text  ${KU_W_tc_otherDeductionLabel}  ${e_tc_otherDeductionLabel}
    Wait Scroll And Click Element  ${KU_W_tc_otherDeductionField}
    Input Text  ${KU_W_tc_otherDeductionField}  ${e_tc_otherDeductionValue} 
    # Tax Value Validation
    Verify Element And Text  ${KU_W_tc_netIncomeOnNewRegime}  ${e_tc_netIncomeOnNewRegime} 
    Verify Element And Text  ${KU_W_tc_taxOnNewRegime}  ${e_tc_taxOnNewRegime}
    Verify Element And Text  ${KU_W_tc_netIncomeOnOldRegime}  ${e_tc_netIncomeOnOldRegime}    
    Verify Element And Text  ${KU_W_tc_taxOnOldRegime}  ${e_tc_taxOnOldRegime}  

Verify Sharing Option
    Wait Scroll And Click Element  ${KU_W_tc_facebookBtn}
    Switch To Window Verify Title And Close  ${e_tc_facebookTitle}
    Wait Scroll And Click Element  ${KU_W_tc_twitterBtn}
    Sleep  5s
    Switch To Window Verify Title And Close  ${e_tc_twitterTitle}
    Wait Scroll And Click Element  ${KU_W_tc_whatsappBtn}
    Switch To Window Verify Title And Close  ${e_tc_whatsappTitle}  
    Wait Scroll And Click Element  ${KU_W_tc_telegramBtn}
    Switch To Window Verify Title And Close  ${e_tc_telegramTitle}
    Wait Scroll And Click Element  ${KU_W_tc_mailBtn}
    Sleep  2s
    Wait Scroll And Click Element  ${KU_W_tc_mailBtn}
