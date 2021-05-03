*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_sipstpswp_SIPQuestion} =  How do I get started on Kuvera?
${e_sipstpswp_STPTab} =  You have no Active STP. It’s easy to start an STP
${e_sipstpswp_STPQuestion} =  What is an STP?
${e_sipstpswp_addSTPDesc} =  Register STP\n(Systematic Transfer Plan)\nA Systematic Transfer Plan or STP helps you to regularly move your holdings from one scheme to another within the same fund house and folio.
${e_sipstpswp_addSTP_SWPDesc1} =  You do not have any funds. Please invest and add funds.
${e_sipstpswp_SWPTab} =  You have no Active SWP. It’s easy to start an SWP
${e_sipstpswp_addSWPDesc} =  Register SWP\n(Systematic Withdrawal Plan)\nWithdraw amount from mutual fund scheme on a preset date every month, quarter, or week as per needed.
                
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_sipstpswp_addSIPBtn} =  xpath=//button[normalize-space()='ADD SIP']
${KU_W_sipstpswp_learnMore} =  xpath=//div[@class='b-systematic-stps__learn-more']
${KU_W_sipstpswp_STPTab} =  xpath=//div[contains(text(),'STP')]
${KU_W_sipstpswp_addSTP} =  xpath=//button[normalize-space()='ADD STP']
${KU_W_sipstpswp_addSTP_SWPDesc} =  xpath=//div[@class='b-gold-sip__d-heading-container m-hide-content']
${KU_W_sipstpswp_addSTP_SWPDesc1} =  xpath=//div[@class='sip-name']
${KU_W_sipstpswp_SWPTab} =  xpath=//div[contains(text(),'SWP')]
${KU_W_sipstpswp_addSWP} =  xpath=//button[normalize-space()='ADD SWP']
${KU_W_sipstpswp_SWPLearnMore} =  xpath=//div[@class='b-systematic-swp__learn-more']