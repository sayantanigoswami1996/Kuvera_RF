*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_ca_domainName} =  @kuvera.in
${e_ca_email} =  moolya+auto_
${e_ca_mobileNum} =  1234567890
${e_ca_pwd} =  kuveramoolya123456
${e_ca_inviteCode} =  20BM4
${e_ca_OTP} =  111111
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_ca_signupBtn} =  xpath=//input[@value='Sign up']
${KU_W_ca_OTPField} =  xpath=//input[@class='otp-field pristine untouched']
${KU_W_ca_submitOTPBtn} =  xpath=//button[normalize-space()='Submit OTP']
${KU_W_ca_dashboardHeader} =  xpath=//h2[contains(text(),'Welcome to Kuvera')]
${KU_W_ca_loginBtn} =  xpath=//button[normalize-space()='LOGIN']
${KU_W_ca_caretDropdown} =  xpath=(//span[@class='caret-alignment']//img)[1]
${KU_W_ca_logoutBtn} =  xpath=(//span[@class='b-nav-dropdown__user__links__subtext close-nav-drop-down'])[3]