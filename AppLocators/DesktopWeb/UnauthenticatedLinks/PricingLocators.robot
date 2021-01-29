*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_pricing_URL} =  https://staging2.kuvera.in/#/pricing
${e_pricing_sectionDesc} =  The Best Things in Life are Free\nZero Commissions. Zero Subscription Fees.\nSee how we compare with others.\nMonthly investment\n30,000\nOver 20 years, you’ll pay\nOTHERS (COMMISSION)\n₹ 60,17,900\nKUVERA (DIRECT PLANS)\n₹ 0\nSign up
${e_pricing_minPurchaseOffer} =  Min. purchase of ₹1,000 on 13th November.\nT&C apply

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_pricing_sectionDesc} =  xpath=//section[@class='pricing-comparision']
${KU_W_pricing_slider} =  xpath=//div[@class='slider-track-high']
${KU_W_pricing_buyGoldWinBigBtn} =  xpath=//button[contains(text(),'Buy gold, win big!')]
${KU_W_pricing_minPurchaseOffer} =  xpath=//div[@class='k-flex b-dhanteras-offer__other']