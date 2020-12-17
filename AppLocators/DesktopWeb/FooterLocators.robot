*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_footer_aboutUs} =  ABOUT US
${e_footer_theTeam} =  The Team
${e_footer_theTeamTitle} =  We’re on a mission to make investing simple.
${e_footer_whyKuvera} =  Why Kuvera
${e_footer_press} =  Press 
${e_footer_inPressTitle} =  In Press 
${e_footer_} =  

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_footer_aboutUs} =  xpath=//li[@class='title']
${KU_W_footer_theTeam} =  xpath=//ul[@class='list-unstyled']/li[2]/a
${KU_W_footer_theTeamTitle} =  xpath=//h1[contains(text(),'We’re on a mission to make investing simple.')]
${KU_W_footer_whyKuvera} =  xpath=//ul[@class='list-unstyled']/li[3]/a
${KU_W_footer_press} =  xpath=//ul[@class='list-unstyled']/li[4]/a
${KU_W_footer_inPressTitle} =  xpath=//div[@class='b-press__recent-coverage']/h1
${KU_W_footer_} =  xpath=
${KU_W_footer_} =  xpath=