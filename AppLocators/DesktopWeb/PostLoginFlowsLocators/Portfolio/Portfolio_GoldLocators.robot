*** Variables *** 
# Application Expected Values 'e_<variableName>' 
${e_portfolio_dg_title} =  Gold                               
${e_portfolio_dg_subTitle} =  Now invest in Gold SIP, buy and sell, or add gold you own.                                
${e_portfolio_dg_investGoldDesc} =  Accumulate gold by choosing a fixed instalment amount every month.                    
${e_portfolio_dg_buyGoldDesc} =  Purchase & manage gold directly on Kuvera, powered by Augmont.              
${e_portfolio_dg_addOwnGoldDesc} =  Manually enter gold bought external to Kuvera, and track it as part of your overall portfolio.                  
${e_portfolio_dg_allBoughtGold} =  All gold bought on kuvera are
${e_portfolio_dg_allBoughtGoldList1} =  24K 99.9% pure.
${e_portfolio_dg_allBoughtGoldList2} =  Secured in bank grade lockers.  
${e_portfolio_dg_allBoughtGoldList3} =  You can sell it anytime.             
${e_portfolio_dg_goldSIP} =  Gold SIP
${e_portfolio_dg_buyGold} =  Buy Gold

# Application Locator 'KU_<locatorName>'
# Gold Portfolio Navigation Page
${KU_W_portfolio_dg_title} =  xpath=(//p[@class='tile-opt-label'])[6]
${KU_W_portfolio_dg_subtitle} =  xpath=(//div[@class='tile-opt-sub-label-container'])[6]
${KU_W_portfolio_dg_investGoldTitle} =  xpath=//p[normalize-space()='Invest in Gold SIP']
${KU_W_portfolio_dg_investGoldDesc} =  xpath=(//div[@class='tile-opt-sub-label-container'])[1]
${KU_W_portfolio_dg_buyGoldDesc} =  xpath=(//div[@class='tile-opt-sub-label-container'])[2]
${KU_W_portfolio_dg_addOwnGoldDesc} =  xpath=(//div[@class='tile-opt-sub-label-container'])[3]
${KU_W_portfolio_dg_buyGoldTitle} =  xpath=//p[normalize-space()='Buy Gold']
${KU_W_portfolio_dg_addOwnGoldTitle} =  xpath=//p[normalize-space()='Add gold you already own']
${KU_W_portfolio_dg_allBoughtGold} =  xpath=//div[@class='kuvera-gold-options__heading']
${KU_W_portfolio_dg_allBoughtGoldList1} =  xpath=(//div[@class='kuvera-gold-options__list-item'])[1]
${KU_W_portfolio_dg_allBoughtGoldList2} =  xpath=(//div[@class='kuvera-gold-options__list-item'])[2]
${KU_W_portfolio_dg_allBoughtGoldList3} =  xpath=(//div[@class='kuvera-gold-options__list-item'])[3]
${KU_W_portfolio_dg_buy_goldSIPTitle} =  xpath=//span[@class='b-gold-by-augmount__d-heading']
${KU_W_portfolio_dg_buy_goldSIPList} =  xpath=//div[@class='b-gold-by-augmount__lists']
${KU_W_portfolio_dg_buy_SIPLearnMore} =  xpath=//div[@class='b-gold-by-augmount__learn-more']
${KU_W_portfolio_dg_SIPDate} =  xpath=//div[@class='b-gold-sip-date-text']
${KU_W_portfolio_dg_SIPNextDate} =  xpath=//div[@class='b-gold-sip--next-date']
${KU_W_portfolio_dg_SIPDateBox} =  xpath=//div[@class='b-gold-sip-date-container']
${KU_W_portfolio_dg_SIPAmt} =  xpath=//div[@class='b-gold-sip__auto-filled-options-container']//div[1]
${KU_W_portfolio_dg_PANBox} =  xpath=//div[@class='b-text-field PAN b-tax-invoice-desktop__form__pan']
${KU_W_portfolio_dg_buyAmt} =  xpath=//div[@class='b-buy-gold__auto-filled-options-container']//div[1]
${KU_W_portfolio_dg_externalGoldTitle} =  xpath=//div[contains(text(),'Gold (Bought Externally)')]
${KU_W_portfolio_dg_addGoldBtn} =  xpath=(//button[@class='k-base-button--primary'])[1]
${KU_W_portfolio_dg_taxInvoiceClose} =  xpath=//img[@class='b-tax-invoice-desktop__header__close-logo']
${KU_W_portfolio_dg_buyGoldClose} =  xpath=//img[@class='b-buy-gold__close']