*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_mandate_digioTitle} =  Digio | Secure, Legal, Digital signing      
${e_mandate_oneClickMandateSubtitle} =  A OneClick mandate allows automatic debit for SIP and lump sum investments.\nPlease set a mandate of at least ₹ 1,00,000 to pay for lump sum orders.          
${e_mandate_setUpMandateSubtitle} =  We have emailed you the mandate registration form. Please follow the instructions in the email to complete the next steps. Once your mandate form is ready you can upload it
${e_mandate_uploadMandateDesc} =  You have placed 0 SIP transactions with us. To ensure that your next SIP gets auto-deducted please upload your signed mandate document as soon as possible. You can download mandate form here.
${e_mandate_confirmForm} =  I confirm that the Mandate Reference No  is clearly visible on the above image and I have 
${e_mandate_digio_termsOfService_privacyPolicy_LinkTitle} =  Aadhaar eSign eKYC NACH | Digio

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_mandate_closeButton} =  xpath=//img[@class='b-mandate-amount-confirmation__close']
${KU_W_mandate_logo} =  xpath=//div[@class='b-mandate-amount-confirmation__logo']//img
${KU_W_mandate_title} =  xpath=//div[contains(text(),'Please choose mandate amount')]
${KU_W_mandate_1Lakh} =  xpath=//div[normalize-space()='₹ 1 Lakh']
${KU_W_mandate_greaterThan1Lakh} =  xpath=//div[contains(text(),'> ₹ 1 Lakh')]
${KU_W_mandate_setUpNow} =  xpath=//button[normalize-space()='Setup Now']
${KU_W_mandate_waitingLogo} =  xpath=//div[@class='b-verify-bank-mandate__polling__loading-logo']//img
${KU_W_mandate_waitingSubTitle} =  xpath=//div[normalize-space()='Please do not refresh the page. Mandate setup in progress.']
${KU_W_mandate_waitingTitle} =  xpath=//div[contains(text(),'Waiting..')]
${KU_W_mandate_authorize} =  xpath=//a[contains(.,'Authorize')]
${KU_W_mandate_userDets} =  xpath=//div[@class='user-details-content']
${KU_W_mandate_tooltip} =  xpath=//a[@class='tooltip-overlay has-tooltip']
${KU_W_mandate_mandateCreatedMsg} =  xpath=//div[contains(text(),'Mandate created. waiting for bank approval.')]
${KU_W_mandate_oneClickMandateTitle} =  xpath=//h1[normalize-space()='Setup OneClick Mandate']
${KU_W_mandate_oneClickMandateSubTitle} =  xpath=//div[@class='mandate-justify-text']//div//p
${KU_W_mandate_closeOneClick} =  xpath=//div[@class='close-stop-sip']
${KU_W_mandate_note1} =  xpath=//li[text()='Can be used to automate SIP payments and pay for lumpsum orders.']
${KU_W_mandate_pleaseNote} =  xpath=//p[normalize-space()='Please Note']
${KU_W_mandate_note2} =  xpath=//li[normalize-space()='Mandate setup time 3 - 4 weeks.']
${KU_W_mandate_setMandateBtn} =  xpath=//button[normalize-space()='SET MANDATE']
${KU_W_mandate_setUpMandateSubtitle} =  xpath=//div[@class='mandate-justify-text']//span
${KU_W_mandate_closeSetUpMandate} =  xpath=//div[@class='close-stop-sip']//img
${KU_W_mandate_uploadMandateLink} =  xpath=//a[normalize-space()='here']
${KU_W_mandate_uploadMandateTitle} =  xpath=//h1[normalize-space()='Upload Mandate']
${KU_W_mandate_uploadMandateFromBankAcc} =  xpath=//a[normalize-space()='Upload Mandate']
${KU_W_mandate_uploadMandateLogo} =  xpath=//img[@class='b-mandate-file-upload__notification-icon']
${KU_W_mandate_uploadMandateDesc} =  xpath=//p[@class='b-mandate-file-upload__para b-mandate-file-upload__para_big']
${KU_W_mandate_downloadMandateLink} =  xpath=//strong[normalize-space()='here']
${KU_W_mandate_uploadMandate} =  xpath=//button[normalize-space()='Upload Mandate']
${KU_W_mandate_uploadMandateTitle} =  xpath=//div[@class='b-mandate-file-upload__nach-heading-container']//h1[@class='b-mandate-file-upload__heading'][normalize-space()='Upload Mandate']
${KU_W_mandate_mandateImg} =  xpath=//img[@class='image']
${KU_W_mandate_confirmForm} =  xpath=//label[@for='confirm_proper_form']
${KU_W_mandate_uploadMandateWarningMsg} =  xpath=//p[.='If the Mandate Form image above appears distorted or is blurred, then scan again and use the Upload Again to re-upload.']
${KU_W_mandate_disabledConfirmBtn} =  xpath=//button[@class='button-primary button-primary-disabled']
${KU_W_mandate_uploadMandateSuccessMsg} =  xpath=//span[.='We have received your OneClick mandate registration form. We will notify you once your mandate is approved. Ideally it will take 10-15 working days.']
${KU_W_mandate_registerMandateTitle} =  xpath=//div[contains(text(),'REGISTER YOUR MANDATE')]
${KU_W_mandate_registerMandateSubTitle} =  xpath=//p[contains(.,"We will now take you to your bank's netbanking page to register your mandate.")]
${KU_W_mandate_mandateRegistration} =  xpath=//a[normalize-space()='MANDATE REGISTRATION']
${KU_W_mandate_digio_kuveraLogo} =  xpath=//img[@ng-src='https://assets.kuvera.in/production/atlantis/web/assets/img/kuvera_logo.png']
${KU_W_mandate_digio_T&C} =  xpath=//p[contains(.,'By continuing, I confirm to the Terms of Service and Privacy Policy of digio.in')]
${KU_W_mandate_digio_googleOptionMsg} =  xpath=//p[contains(.,'Gmail account? Proceed with')]
${KU_W_mandate_digio_googleOption} =  xpath=//a[normalize-space()='Google']
${KU_W_mandate_digio_notRecommendedMsg} =  xpath=//p[contains(normalize-space(),'( not recommended on public computers )')]
${KU_W_mandate_digio_proceedWithEmailMsg} =  xpath=//p[contains(.,'Proceed with Email Verification Code')]
${KU_W_mandate_digio_continueBtn} =  xpath=//button[normalize-space()='Continue']
${KU_W_mandate_digio_digioLogo} =  xpath=//a[@class='footer-inline-centered']//div//img
${KU_W_mandate_digio_poweredBy} =  xpath=//a[@class='footer-inline-centered']//div[contains(text(),'Powered by')]
${KU_W_mandate_digio_authenticatedEmail} =  xpath=//p[contains(.,'Authenticate moolya@kuvera.in')]
${KU_W_mandate_digio_termsOfServiceLink} =  xpath=//a[normalize-space()='Terms of Service']
${KU_W_mandate_digio_privacyPolicyLink} =  xpath=//a[normalize-space()='Privacy Policy']
${KU_W_mandate_digio_link} =  xpath=//a[normalize-space()='digio.in']