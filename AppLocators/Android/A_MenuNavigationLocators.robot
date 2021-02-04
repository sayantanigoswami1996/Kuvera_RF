*** Variables ***
# Application Expected Values 'e_<VariableName>'
# Insure
${e_insureLink} =  Insure
${e_insurePageTitle} =  Fair and friendly health insurance is here
${e_insurePageSubTitle} =  ₹50L cover starting at ₹900 p.m. Secure your loved ones today. T&C apply
${e_insure_grpHealthInsureTitle} =  Group health insurance is for Kuvera users only
${e_insure_grpHealthInsurePoint1} =  Sign up to India’s first completely free wealth management platform.
${e_insure_grpHealthInsurePoint2} =  Explore Mutual fund, Gold, SaveSmart, Indian & US stocks, Insurance, Loan and more.
${e_insure_grpHealthInsurePoint3} =  No fees. No commission. No conflict of interest.
${e_insure_accountTitle} =  Already have an account? 
${e_insure_understandCost} =  We understand cost
${e_insure_treatmentTitle} =  Treatment
${e_insure_estCostTitle} =  Est.Cost
${e_insure_covid19} =  COVID-19
${e_insure_cancer} =  Cancer care
${e_insure_heartSurgery} =  Open heart surgery
${e_insure_kneeReplacement} =  Knee replacement
${e_insure_cancerCost} =  ₹25L
${e_insure_heartSurgeryCost} =  ₹20L
${e_insure_kneeReplacementCost} =  ₹4.5L
${e_insure_covidCost} =  ₹8L
${e_insure_bhartiAxaTitle} =  Thus we built a Group health insurance with Bharti AXA GIC
${e_insure_bhartiAxaSubTitle} =  that works for you and your loved ones by keeping:
${e_insure_everythingUNeed} =  Everything you’d need
${e_insure_gotYouCovered} =  We’ve got you covered
${e_insure_MFSubTitle} =  Sub Category
${e_insure_MFSubTitle} =  Equity
${e_insure_MFSubTitle} =  All
# Loans
${e_goldLabel} =  Gold
${e_goldTitle} =  Buying gold has never been this simple!

# Application Locator 'KU_<locatorName>'
# Insure 
${KU_A_insureLink} =  xpath=//*[@text='Insure']
${KU_A_insurePageTitle} =  xpath=//*[@text='Fair and friendly health insurance is here']
${KU_A_insurePageSubTitle} =  xpath=//*[@text='₹50L cover starting at ₹900 p.m. Secure your loved ones today. T&C apply']
${KU_A_insure_imgIcon} =  xpath=//*[@text='insurance-landing-page-img']
${KU_A_insure_premiumBtn} =  xpath=//*[@class='android.widget.Button']
${KU_A_insure_grpHealthInusreImg} =  xpath=(//*[@class='android.widget.Image'])[3]
${KU_A_insure_grpHealthInsureTitle} =  xpath=//*[@text='Group health insurance is for Kuvera users only']
${KU_A_insure_grpHealthInsurePoint1} =  xpath=//*[@text='Sign up to India’s first completely free wealth management platform.']
${KU_A_insure_grpHealthInsurePoint2} =  xpath=//*[@text='Explore Mutual fund, Gold, SaveSmart, Indian & US stocks, Insurance, Loan and more.']
${KU_A_insure_grpHealthInsurePoint3} =  xpath=//*[@text='No fees. No commission. No conflict of interest.']
${KU_A_insure_accountTitle} =  xpath=//*[@text='Already have an account? ']
${KU_A_insure_loginLink} =  xpath=//*[@text='Login']
${KU_A_insure_understandCost} =  xpath=//*[@text='We understand cost']
${KU_A_insure_treatmentTitle} =  xpath=//*[@text='Treatment']
${KU_A_insure_estCostTitle} =  xpath=//*[@text='Est.Cost']
${KU_A_insure_covidImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[1]
${KU_A_insure_cancerImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[2]
${KU_A_insure_heartSurgeryImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[3]
${KU_A_insure_kneeReplacementImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[4]
${KU_A_insure_covid19} =  xpath=//*[@text=' COVID-19']
${KU_A_insure_cancer} =  xpath=//*[@text=' Cancer care']
${KU_A_insure_heartSurgery} =  xpath=//*[@text=' Open heart surgery']
${KU_A_insure_kneeReplacement} =  xpath=//*[@text=' Knee replacement']
${KU_A_insure_covidCost} =  xpath=//*[@text='₹8L']
${KU_A_insure_cancerCost} =  xpath=//*[@text='₹25L']
${KU_A_insure_heartSurgeryCost} =  xpath=//*[@text='₹20L']
${KU_A_insure_kneeReplacementCost} =  xpath=//*[@text='₹4.5L']
${KU_A_insure_bhartiAxaTitle} =  xpath=//*[@text='Thus we built a Group health insurance with Bharti AXA GIC']
${KU_A_insure_bhartiAxaSubTitle} =  xpath=//*[@text='that works for you and your loved ones by keeping:']
${KU_A_insure_bhartiAxaList} =  xpath=//*[@class='android.widget.ListView']
${KU_A_insure_everythingUNeed} =  xpath=//android.view.View[@text='Everything you’d need']
${KU_A_insure_gotYouCovered} =  xpath=//*[@text='We’ve got you covered']

# Loans
${KU_A_loanLink} =  xpath=//*[@text='Insure']
${KU_A_insure_heartSurgeryImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[3]
${KU_A_insure_kneeReplacementImg} =  xpath=(//*[@text='insurance-landing-page-img__cost-details'])[4]
${KU_A_insure_covid19} =  xpath=//*[@text=' COVID-19']
${KU_A_insure_cancer} =  xpath=//*[@text=' Cancer care']
${KU_A_insure_heartSurgery} =  xpath=//*[@text=' Open heart surgery']
${KU_A_insure_kneeReplacement} =  xpath=//*[@text=' Knee replacement']
${KU_A_insure_covidCost} =  xpath=//*[@text='₹8L']
${KU_A_insure_cancerCost} =  xpath=//*[@text='₹25L']
${KU_A_insure_heartSurgeryCost} =  xpath=//*[@text='₹20L']
${KU_A_insure_kneeReplacementCost} =  xpath=//*[@text='₹4.5L']
${KU_A_insure_bhartiAxaTitle} =  xpath=//*[@text='Thus we built a Group health insurance with Bharti AXA GIC']
${KU_A_insure_bhartiAxaSubTitle} =  xpath=//*[@text='that works for you and your loved ones by keeping:']
${KU_A_insure_bhartiAxaList} =  xpath=//*[@class='android.widget.ListView']
${KU_A_insure_everythingUNeed} =  xpath=//*[@text='Everything you’d need']
${KU_A_insure_gotYouCovered} =  xpath=//*[@text='We’ve got you covered']
