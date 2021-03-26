*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_goldRush_URL} =  https://staging2.kuvera.in/#/explore/gold-rush
${e_goldRush_pageTitle} =  Win up to ₹1,500 extra gold when you buy digital gold more than ₹5,000.  
${e_goldRush_winnersList} =  Vikas Bansa / Pune\n₹1,491\nSubir Chandra / Pune\n₹1,487\nFebitha K R / Palakkad\n₹1,478\nDeepak Kumar / Saharanpur\n₹1,500
${e_goldRush_T&C} =  *T&C apply

# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_goldRush_imgIcon} =  xpath=//img[@class='b-gold-rush__img']
${KU_W_goldRush_pageTitle} =  xpath=//div[@class='b-gold-rush__text']
${KU_W_goldRush_buyGoldBtn} =  xpath=//button[contains(text(),'Buy gold')]
${KU_W_goldRush_recentWinnersTag} =  xpath=//div[@class='b-top-winners b-top-winners--landing']//img
${KU_W_goldRush_winnersList} =  xpath=//div[@class='b-top-winners__list b-top-winners__list--landing']
${KU_W_goldRush_T&C} =  xpath=//div[@class='b-gold-rush__tnc']