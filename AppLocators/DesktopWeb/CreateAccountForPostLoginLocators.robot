*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_ca_staticdomainName} =  @kuvera.in
${e_ca_staticEmail} =  moolya
${e_ca_staticMobileNum} =  1234567890
${e_ca_staticPWd} =  moolya123456
${e_ca_staticOTP} =  
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_ca_emailInputField} =  xpath=//input[@id='email']
${KU_W_ca_mobileNumInputField} =  xpath=//input[@id='mobile_number']
${KU_W_ca_pwdInputField} =  xpath=//input[@id='password']
${KU_W_ca_signupBtn} =  xpath=//input[@value='Sign up']
${KU_W_ca_OTPField} =  xpath=//input[@placeholder='Enter OTP here']
${KU_W_ca_submitOTPBtn} =  xpath=//button[normalize-space()='Submit OTP']
${KU_W_ca_dashboardHeader} =  xpath=//h2[contains(text(),'Welcome to Kuvera')]