*** Variables ***
# Application Expected Values 'e_<VariableName>'

${e_tc_url} =  https://staging2.kuvera.in/#/explore/tax-slab-2020
${e_tc_taxCalcHeader} =  Tax Calculator
${e_tc_taxCalcSubHeader} =  Calculate taxes for financial year 2020 - 2021 and see which tax regime suits you best
${e_tc_newRegimeHeader} =  Post-Budget (New Regime)       
${e_tc_oldRegimeHeader} =  Post-Budget (Old Regime)   
${e_tc_netIncomeHeader} =  Net Annual Income  
${e_tc_taxDueHeader} =  Total Tax Due             
${e_tc_annualIncomeTitle} =  What is your annual income
${e_tc_annualIncomeValue} =  150000
${e_tc_deductionTitle} =  Annual Deductions & Exemptions
${e_tc_facebookTitle} =  Facebook
${e_tc_twitterTitle} =  Twitter
${e_tc_whatsappTitle} =  Share on WhatsApp
${e_tc_telegramTitle} =  Telegram: Share Web Page
${e_tc_HRALabel} =  HRA   
${e_tc_HRAValue} =  20000 
${e_tc_80CLabel} =  80C
${e_tc_80CValue} =  100000
${e_tc_housingLoanLabel} =  Interest on Housing Loan
${e_tc_housingLoanValue} =  7000
${e_tc_medicalInsuranceLabel} =  Medical Insurance 
${e_tc_medicalInsuranceValue} =  5000 
${e_tc_SDLabel} =  Standard Deductions 
${e_tc_SDValue} =  2000
${e_tc_otherDeductionLabel} =  Others 
${e_tc_otherDeductionValue} =  200   
${e_tc_netIncomeOnNewRegime} =  ₹ 1,50,000
${e_tc_taxOnNewRegime} =  ₹ 0                      
${e_tc_netIncomeOnOldRegime} =  ₹ 15,800    
${e_tc_taxOnOldRegime} =  ₹ 0

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_tc_taxCalcHeader} =  xpath=//div[@class='b-income-tax__calculator__title']
${KU_W_tc_taxCalcSubHeader} =  xpath=//div[@class='b-income-tax__calculator__sub-title']
${KU_W_tc_newRegimeHeader} =  xpath=(//div[@class='b-calculator__return-non-highlited__title'])[1]
${KU_W_tc_newRegimeIncome} =  xpath=(//div[@class='b-calculator__return-non-highlited__years']/div)[1]
${KU_W_tc_newRegimeTaxDue} =  xpath=(//div[@class='b-calculator__return-non-highlited__years']/div)[2]
${KU_W_tc_newRegimeTaxValue} =  xpath=(//div[@class='b-calculator__return-non-highlited__value'])[1]
${KU_W_tc_oldRegimeHeader} =  xpath=(//div[@class='b-calculator__return-non-highlited__title'])[2]
${KU_W_tc_oldRegimeIncome} =  xpath=(//div[@class='b-calculator__return-non-highlited__years']/div)[3]
${KU_W_tc_oldRegimeTaxDue} =  xpath=(//div[@class='b-calculator__return-non-highlited__years']/div)[4]
${KU_W_tc_oldRegimeTaxValue} =  xpath=(//div[@class='b-calculator__return-non-highlited__value'])[2]
${KU_W_tc_annualIncomeTitle} =  xpath=//div[@class='b-income-tax__amount__title']
${KU_W_tc_amountField} =  xpath=//input[@name='amount']
${KU_W_tc_deductionTitle} =  xpath=//div[@class='b-income-tax__deduction-title']
${KU_W_tc_facebookBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[1]
${KU_W_tc_twitterBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[2]
${KU_W_tc_whatsappBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[3]
${KU_W_tc_telegramBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[4]
${KU_W_tc_mailBtn} =  xpath=//div[@class='b-app-standard-social-options-container']//a[5]
${KU_W_tc_HRALabel} =  xpath=//div[contains(text(),'HRA')]
${KU_W_tc_HRAField} =  xpath=//input[@name='deductionAmountHRA']
${KU_W_tc_80CLabel} =  xpath=(//div[@class='b-deduction-amount__input__sub-heading']//div)[2]
${KU_W_tc_80CField} =  xpath=//input[@name='deductionAmount80C']
${KU_W_tc_housingLoanLabel} =  xpath=(//div[@class='b-deduction-amount__input__sub-heading']//div)[3]
${KU_W_tc_housingLoanField} =  xpath=//input[@name='deductionAmountHousingInterest']
${KU_W_tc_medicalInsuranceLabel} =  xpath=(//div[@class='b-deduction-amount__input__sub-heading']//div)[4]
${KU_W_tc_medicalInsuranceField} =  xpath=//input[@name='deductionAmountMedical']
${KU_W_tc_standardDeductionsLabel} =  xpath=(//div[@class='b-deduction-amount__input__sub-heading']//div)[5]
${KU_W_tc_standardDeductionsField} =  xpath=//input[@name='deductionAmountSD']
${KU_W_tc_otherDeductionLabel} =  xpath=(//div[@class='b-deduction-amount__input__sub-heading']//div)[6]
${KU_W_tc_otherDeductionField} =  xpath=//input[@name='deductionAmountOthers']
${KU_W_tc_netIncomeOnNewRegime} =  xpath=(//div[@class='b-calculator__return-non-highlited__value']//div)[1]
${KU_W_tc_taxOnNewRegime} =  xpath=(//div[@class='b-calculator__return-non-highlited__value']//div)[2]
${KU_W_tc_netIncomeOnOldRegime} =  xpath=(//div[@class='b-calculator__return-non-highlited__value']//div)[3]
${KU_W_tc_taxOnOldRegime} =  xpath=(//div[@class='b-calculator__return-non-highlited__value']//div)[4]