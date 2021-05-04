*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_settings_deactivateAcc} =  Deactivate Your Account
${e_settings_deactivateAccDesc} =  This will remove your account from Kuvera and you will not be able to access any of your data, including your transaction data.
${e_settings_warningMsg} =  Warning: Please stop your active SIP/STP/SWP and download your transaction history before deactivating your account.
${e_settings_termsDesc1} =  I understand Kuvera will retain audit information in compliance with applicable regulations to protect itself from future liability.
${e_settings_termsDesc2} =  I indemnify Kuvera against any liability pertaining to transactions done through Kuvera and confirm that all transactions were initiated and processed at my sole discretion. 
${e_settings_confirmOTPMsg} =  You will receive an OTP on your email to prevent unauthorized deletion of your account. On confirming the OTP this account will be deactivated.
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
# Settings
${KU_W_settings_settingsBtn} =  xpath=//span[normalize-space()='Settings']
${KU_W_settings_deactivateTitle} =  xpath=//div[@class='title text-danger']
${KU_W_settings_deactivateDesc} =  xpath=//p[@class='text-danger']
${KU_W_settings_warningMsg} =  xpath=(//p[@class='text-warning']//em[1])[2]
${KU_W_settings_deactivateAccBtn} =  xpath=//button[normalize-space()='Deactivate Account']
${KU_W_settings_WeAreSadTitle} =  xpath=//div[normalize-space()="We're sad to see you go"]
${KU_W_settings_terms} =  xpath=//strong[normalize-space()='Click PROCEED to confirm the below:']
${KU_W_settings_termsDesc1} =  xpath=//div[@class='message']//ol//li[1]
${KU_W_settings_termsDesc2} =  xpath=//div[@class='message']//ol//li[2]
${KU_W_settings_deactivateAccTitle} =  xpath=//div[normalize-space()='Deactivate Account']
${KU_W_settings_confirmOTPMsg} =  xpath=(//div[@class='message'][1])[1]
${KU_W_settings_deactivateBtn} =  xpath=//button[normalize-space()='DEACTIVATE']
${KU_W_settings_2FABtn} =  xpath=//span[@class='slider round']