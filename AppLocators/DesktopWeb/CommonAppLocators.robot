*** Variables ***
#Desired Capabilities
${loginURL}    https://kuvera.in/
${BROWSER}     Chrome

#Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_title}               Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_W_logo} =              xpath=//*[@class='b-header__content__logo']
${KU_W_close} =             xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
${KU_exploreELSS} =         Explore ELSS funds
${KU_W_login} =             xpath=//*[@class='b-header__content__right__signin']
${KU_W_signup} =            xpath=//*[@class='b-header__content__right__singup']
${KU_W_langSwitch} =        xpath=//div[@class='b-header__content__right--language-switcher']
${KU_W_mf_category} =       xpath=//div[@class='b-mf-wiget__mf-category--input']
${KU_W_mf_subcategory} =    xpath=//div[@class='b-mf-wiget__mf-subcategory--input']
${KU_W_fund_list} =         xpath=//div[@class='b-fund-list__row']                