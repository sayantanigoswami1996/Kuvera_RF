*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_ss_title} =  SaveSmart                   
${e_portfolio_ss_subTitle} =  Higher returns, instant withdrawal, better than any savings account.
                    
# Application Locator 'KU_<locatorName>'
# Savesmart Portfolio Navigation Page
${KU_W_portfolio_ss_title} =  xpath=(//p[@class='tile-opt-label'])[4]
${KU_W_portfolio_ss_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[4]