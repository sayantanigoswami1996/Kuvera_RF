*** Variables *** 
# Application Expected Values 'e_<variableName>'
${e_IF_inviteFriendsTitle} =  Each1Teach1 - help your friends plan for their future
${e_IF_friendInvitation} =  As your friends join, you will be able to see your investment tribe grow here.
${e_IF_T&CHeading} =  Terms and conditions
${e_IF_T&CPoint1} =  1. Any reward(s) will be credited after successful settlement of transactions in referred accounts and can take up to 10 business days.
${e_IF_T&CPoint2} =  2. For example, let's say you referred 7 friends. Of this, 5 signed up and successfully invested more than ₹ 5,000 each within the first 6 months of joining. You will then qualify for 5 awards of ₹ 201 Digital Gold each. We will credit the Digital Gold into your account.
${e_IF_T&CPoint3} =  3. The reward amount includes GST and applicable taxes.
${e_IF_T&CPoint4} =  4. Only unique referrals will qualify, if there are multiple referrals with different email IDs and the same PAN, only 1 qualifying referral will be counted.       
${e_IF_T&CPoint5} =  5. No claims shall be entertained and award shall be reversed if the referrer or referee has provided an invalid PAN.          
${e_IF_T&CPoint6} =  6. These Offer terms and conditions are in addition to the Kuvera Terms and Conditions and Privacy Policy to which you agree to by using the Kuvera application. To the extent that the Kuvera Terms and Conditions and the Privacy Policy are inconsistent with these Offer Terms; these Offer Terms shall prevail but only with respect to this Offer.
${e_IF_T&CPoint7} =  7. Offer Validity: The Offer is valid till Kuvera decides to discontinue the offer, at its sole discretion, without any prior notice and without any liability.
${e_IF_T&C8SubPoint1} =  Kuvera reserves the right to disqualify a referee and/or their referred accounts from any or all benefits or rewards of this Offer, if in Kuvera's sole discretion it is identified that any activity is carried out that is prejudicial to the interest of Kuvera or with an intent to abuse/game the system or with malafide or fraudulent intent or purely for the purpose of availing of this Offer or undertaking the transaction under this Offer. In such cases, Kuvera, in its sole discretion, reserves the right to reverse any rewards already granted under this offer
${e_IF_T&C8SubPoint2} =  Kuvera reserves the right, at any time, without prior notice, without liability and without assigning any reason, to add/alter/modify/change or vary all of these Offer Terms or to replace, wholly or in part, this Offer by another offer, whether similar to this Offer or not.      
${e_IF_T&C8SubPoint3} =  Kuvera will not be liable or responsible for any loss or damage whatsoever that a referrer or their referree may suffer, directly or indirectly, in connection with this Offer, including those relating to the qualifying investment transactions done for the purposes of this Offer.
${e_IF_T&C8SubPoint4} =  This Offer is being made available on a best effort basis. Nothing herein amounts to a commitment by Kuvera to conduct further, similar or other offers.
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_IF_inviteFriendsTitle} =  xpath=//div[@class='b-invitation-page__heading']
${KU_W_IF_inviteFriendsSubTitle1} =  xpath=//span[contains(text(),'Also, when they invest more than ₹ 5,000 we will g')]
${KU_W_IF_subTitle2} =  xpath=//div[contains(text(),'Share your code')]
${KU_W_IF_coinsLink} =  xpath=//a[contains(text(),'Coins')]
${KU_W_IF_coinsNavigatedScreen} =  xpath=//div[contains(text(),'Make investing rewarding')]
${KU_W_IF_digitalGoldLink} =  xpath=//a[@href='#/explore/gold']
${KU_W_IF_T&CLink} =  xpath=//a[contains(text(),'T&C apply')]
${KU_W_IF_friendInvitation} =  xpath=//div[@class='b-invitation-page__friends-text']
${KU_W_IF_T&CHeading} =  xpath=//div[@class='b-terms-and-cond__heading']
${KU_W_IF_T&CPoint1} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[1]
${KU_W_IF_T&CPoint2} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[2]
${KU_W_IF_T&CPoint3} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[3]
${KU_W_IF_T&CPoint4} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[4]
${KU_W_IF_T&CPoint5} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[5]
${KU_W_IF_T&CPoint6} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[6]
${KU_W_IF_T&CPoint7} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[7]
${KU_W_IF_T&CPoint8} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[8]
${KU_W_IF_T&CCloseIcon} =  xpath=//img[@class='b-terms-and-cond__close-icon']
${KU_W_IF_T&C8SubPoint1} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[8]//li[1]
${KU_W_IF_T&C8SubPoint2} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[8]//li[2]
${KU_W_IF_T&C8SubPoint3} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[8]//li[3]
${KU_W_IF_T&C8SubPoint4} =  xpath=//div[@class='b-terms-and-cond__text-container']//div[8]//li[4]
${KU_W_IF_referralCode} =  xpath=//code[@id='referral_code']