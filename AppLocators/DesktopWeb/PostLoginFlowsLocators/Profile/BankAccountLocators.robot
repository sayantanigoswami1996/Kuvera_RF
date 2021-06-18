*** Variables *** 
# Application Expected Values 'e_<variableName
${e_bankAcc_IFSC} =  HDFC0003825
${e_bankAcc_accNum} =  78901234567890
${e_bankAcc_accNum1} =  SAVINGS A/C 12345678901234
${e_bankAcc_accNum2} =  SAVINGS A/C 78901234567890
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_bankAcc_bankAccTitle} =  xpath=//div[@class='title'][normalize-space()='Bank Accounts']
${KU_W_bankAcc_bankAccTab} =  xpath=//div[normalize-space()='Bank Accounts']
${KU_W_bankAcc_subTitle1} =  xpath=//div[normalize-space()='Bank account(s), from which investments are made']
${KU_W_bankAcc_subTitle2} =  xpath=//div[normalize-space()='Any investments you redeem, will be directly credited to your linked bank account(s)']
${KU_W_bankAcc_bankName} =  xpath=//span[contains(.,'INDIAN BANK, KOLKATA')]
${KU_W_bankAcc_accNum} =  xpath=(//p[@class='user-details-content text-uppercase']//strong)[1]
${KU_W_bankAcc_accountProofLabel} =  xpath=//div[normalize-space()='BANK ACCOUNT PROOF']
${KU_W_bankAcc_other} =  xpath=//span[normalize-space()='Other']
${KU_W_bankAcc_primaryBankLabel} =  xpath=//span[contains(text(),'PRIMARY BANK')]
${KU_W_bankAcc_IFSCLabel} =  xpath=//div[normalize-space()='IFSC CODE']
${KU_W_bankAcc_IFSC} =  xpath=//div[normalize-space()='IDIB000C001']
${KU_W_bankAcc_mandateLabel} =  xpath=//div[normalize-space()='MANDATE']
${KU_W_bankAcc_mandateBtn} =  xpath=//div[@class='col-md-5']//span[1]
${KU_W_bankAcc_mandateScreenTitle} =  xpath=//h1[normalize-space()='Setup OneClick Mandate']
${KU_W_bankAcc_secondaryBank} =  xpath=//span[normalize-space()='HDFC BANK, BANGALORE']
${KU_W_bankAcc_secondaryBankAccount} =  xpath=(//p[@class='user-details-content text-uppercase']//strong)[2]
