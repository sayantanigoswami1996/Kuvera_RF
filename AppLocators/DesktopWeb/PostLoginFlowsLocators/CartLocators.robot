*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_cart_earnBannerTitle} =  Earn ₹201 in digital gold for each friend who invests ₹5,000 or more.
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_cart_cartLogo} =  xpath=//div[@class='b-cart-empty-item']//img
${KU_W_cart_cartMsg} =  xpath=//div[contains(text(),'No order(s) in your cart')]
${KU_W_cart_exploreFundsLink} =  xpath=//div[normalize-space()='Explore funds']
${KU_W_cart_recentMsg} =  xpath=//div[contains(text(),'You do not have any recent transaction.')]
${KU_W_cart_inProcessMsg} =  xpath=//div[contains(text(),'You do not have any outstanding orders to track.')]