*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_FD_title} =  Fixed Deposit
                                                                
${e_portfolio_FD_subTitle} =  Explore, compare and invest in best online FDs.
                                                                     
${e_portfolio_FD_doNotStorePwd} =  Do not store my password                   
${e_portfolio_FD_pwdContent} =  By not storing your password, you agree to update FD account manually every month.                  
${e_portfolio_FD_UANNum} =  100728131285
${e_portfolio_FD_UANPwd} =  Vamsi$ruti1317@
${e_portfolio_FD_tab} =  FD

# Application Locator 'KU_<locatorName>'
# Gold Portfolio Navigation Page
${KU_W_portfolio_FD_title} =  xpath=(//p[@class='tile-opt-label'])[2]
${KU_W_portfolio_FD_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[2]