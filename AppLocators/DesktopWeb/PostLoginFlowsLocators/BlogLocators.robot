*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_blog_earnBannerTitle} =  Earn ₹201 in digital gold for each friend who invests ₹5,000 or more.
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_blog_blogLogo} =  xpath=//div[@class='b-blog-empty-item']//img
${KU_W_blog_blogMsg} =  xpath=//div[contains(text(),'No order(s) in your blog')]
${KU_W_blog_exploreFundsLink} =  xpath=//div[normalize-space()='Explore funds']
${KU_W_blog_recentMsg} =  xpath=//div[contains(text(),'You do not have any recent transaction.')]