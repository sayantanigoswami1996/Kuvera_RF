*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_dhanteras_URL} =  https://staging2.kuvera.in/#/dhanteras-gold-offer
${e_dhanteras_offerDate} =  on 13th November
${e_dhanteras_minPurchaseOffer} =  Min. purchase of ₹1,000 on 13th November.\nT&C apply

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_dhanteras_imgIcon} =  xpath=//img[@class='b-dhanteras-offer__img']
${KU_W_dhanteras_offerDate} =  xpath=//div[@class='b-dhanteras-offer__date b-dhanteras-offer__date--d']
${KU_W_dhanteras_buyGoldWinBigBtn} =  xpath=//button[contains(text(),'Buy gold, win big!')]
${KU_W_dhanteras_minPurchaseOffer} =  xpath=//div[@class='k-flex b-dhanteras-offer__other']