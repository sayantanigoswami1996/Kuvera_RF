*** Variables *** 
# Application Expected Values 'e_<variableName>'

${e_blog_faqbotQA1} =  How do I get started on Kuvera?
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_blog_link} =  xpath=//a[normalize-space()='Blog']
${KU_W_blog_blogTitle} =  xpath=//h1[normalize-space()='Your Investment Magazine']
${KU_W_blog_allLink} =  xpath=//a[normalize-space()='All']
${KU_W_blog_popularLink} =  xpath=//a[normalize-space()='Popular']
${KU_W_blog_categoriesLink} =  xpath=//a[normalize-space()='Categories']
${KU_W_blog_newAdviceBlog1} =  xpath=//div[@class='b-news-and-advice b-dashboard__desktop--section-top-separator']//li[1]//div[1]//img[1]
${KU_W_blog_newAdviceBlog2} =  xpath=//div[contains(text(),'Fair and friendly health insurance is here!')]