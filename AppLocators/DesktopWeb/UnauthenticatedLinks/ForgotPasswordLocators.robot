*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_fp_url} =  https://staging2.kuvera.in/#/forgot-password
${e_fp_forgotPwdHeader} =  FORGOT PASSWORD
${e_fp_forgotPwdSubHeader} =  Enter the email address associated with your account.\nWe will email you a link to reset your password.
${e_fp_emailLabel} =  EMAIL ADDRESS
${e_fp_emailID} =  sayantani.goswami@moolya.com
${e_fp_alertMsg1} =  We have sent an email with the link to reset your password.
${e_fp_alertMsg2} =  Kindly change your password and login again.

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_fp_forgotPwdHeader} =  xpath=//div[@class='title upcase text-center']
${KU_W_fp_forgotPwdSubHeader} =  xpath=//div[@class='sub-title text-center']
${KU_W_fp_emailLabel} =  xpath=//label[@for='email']
${KU_W_fp_emailField} =  xpath=//input[@id='email']
${KU_W_fp_backToLoginBtn} =  xpath=//button[@class='btn btn-default cancel-btn']
${KU_W_fp_sendResetLinkBtn} =  xpath=//button[@class='btn in-btn']
${KU_W_fp_alertMsg1} =  xpath=//div[@class='alert alert-success']//h2
${KU_W_fp_alertMsg2} =  xpath=//div[@class='alert alert-success']//p

