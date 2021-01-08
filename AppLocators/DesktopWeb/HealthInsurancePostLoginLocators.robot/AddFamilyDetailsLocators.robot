*** Variables *** 
# Application Expected Values 'e_<variableName
# Application Locator 'KU_<locatorName>'
${e_famDetails_addFamMemberTitle} =  Add family member
${e_famDetails_addFamMemberSubTitle1} =  You can cover spouse and 2 children aged 23Y or less.
${e_famDetails_addFamMemberSubTitle2} =  To cover others, add them with Family account
${e_famDetails_infoPopupTitle1} =  Family account feature helps you to add and manage wealth for your family members.
${e_famDetails_infoPopupTitle2} =  For clarification, contact support@kuvera.in 
${e_famDetails_name} =  Bhavani Sruti Somaraju Venkata Naga
${e_famDetails_memberName} =  Moolya 

${e_selectCity_selectCityTitle} =  Select your city
${e_selectCity_selectCitySubTitle} =  Health Protect is valid across India. Check cashless hospital network for your city.
${e_selectCity_cityHeader} =  City
${e_selectCity_networkHospitalHeader} =  Network hospitals     
${e_selectCity_infoLinkPopupTitle} =  Insurance companies have tie-ups with hospitals, called "Network hospitals". You don’t have to pay cash if you get hospitalised to one such network hospital. The insurer will directly settle the bill with the hospital.\n For non-network hospitals, you will have to settle bill first and then get reimbursed from the insurer.
${e_selectCity_cityName1} =  Bengaluru
${e_selectCity_cityName2} =  Delhi
${e_selectCity_cityName3} =  Hyderabad
${e_selectCity_cityName4} =  Kolkata
${e_selectCity_cityName5} =  Mumbai
${e_selectCity_hospitalInCity1} =  315
${e_selectCity_hospitalInCity2} =  245
${e_selectCity_hospitalInCity3} =  253
${e_selectCity_hospitalInCity4} =  144
${e_selectCity_hospitalInCity5} =  564
${e_selectCity_searchedCityName} =  Trichy

${e_selectCity_selectCityTitle} =  Select your city
# Application Locator 'KU_<locatorName>'   
# Kuvera :: Wealth Management Simplified
${KU_W_famDetails_pageTitle} =  xpath=//div[@class='b-insurance__title']
${KU_W_famDetails_addFamMemberSubTitle1} =  xpath=(//div[@class='b-insurance__description b-add-members-details__subheading'])[1]
${KU_W_famDetails_addFamMemberSubTitle2} =  xpath=(//div[@class='b-insurance__description b-add-members-details__subheading'])[2]
${KU_W_famDetails_infoLink} =  xpath=//img[@alt='information icon']
${KU_W_famDetails_infoPopupTitle1} =  xpath=//div[@class='b-insurance-description b-insurance-add-member__description']/div[1]
${KU_W_famDetails_infoPopupTitle2} =  xpath=//div[@class='b-insurance-description b-insurance-add-member__description']/div[2]
${KU_W_famDetails_popupOkayBtn} =  xpath=//button[@class='button-primary']
${KU_W_famDetails_insuranceHolderName} =  xpath=(//div[@class='b-item__row__content'])[1]
${KU_W_famDetails_addMemberMenu} =  xpath=//div[@class='b-item__row']/div[1]
${KU_W_famDetails_memberName} =  xpath=//input[@id='name']
${KU_W_famDetails_dropdown} =  xpath=//div[@class='default-message']
${KU_W_famDetails_daughter} =  xpath=//div[contains(text(),'Daughter')]
${KU_W_famDetails_DOB} =  xpath=//input[@placeholder='Select DOB']
${KU_W_famDetails_monthOnCalendar} =  xpath=//div[@class='vdp-datepicker']//div[2]//header[1]//span[1]
${KU_W_famDetails_dateOnCalendar} =  xpath=//span[text()='7']
${KU_W_famDetails_doneBtn} =  xpath=//button[contains(text(),'Done')]
${KU_W_famDetails_primaryApplicant} =  xpath=(//div[@class='b-item__row b-item__row__hasDetails'])[1]
${KU_W_famDetails_primaryApplicantGender} =  xpath=//div[contains(text(),'Female')]
${KU_W_famDetails_proceedBtn} =  xpath=//button[contains(text(),'Proceed')]

${KU_W_selectCity_selecyCitySubTitle} =  xpath=//div[@class='b-insurance__description b-add-ciy__subheading']
${KU_W_selectCity_cityHeader} =  xpath=//div[@class='b-add-ciy__container__title-row']/div[1]
${KU_W_selectCity_networkHospitalHeader} =  xpath=//div[@class='b-add-ciy__container__title-row']/div[2]
${KU_W_selectCity_hospitalInfoLink} =  xpath=//div[@class='b-add-ciy__container__title--hospital']//img
${KU_W_selectCity_infoLinkPopupTitle} =  xpath=//div[@class='b-hospital-info-details__title']
${KU_W_selectCity_infoLinkOkayBtn} =  xpath=(//button[@class='button-primary'])[2]
${KU_W_selectCity_cityName1} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[1]
${KU_W_selectCity_cityName2} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[2]
${KU_W_selectCity_cityName3} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[3]
${KU_W_selectCity_cityName4} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[4]
${KU_W_selectCity_cityName5} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text'])[5]
${KU_W_selectCity_hospitalInCity1} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[1]
${KU_W_selectCity_hospitalInCity2} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[2]
${KU_W_selectCity_hospitalInCity3} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[3]
${KU_W_selectCity_hospitalInCity4} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[4]
${KU_W_selectCity_hospitalInCity5} =  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[5]
${KU_W_selectCity_hospitalsList} =  xpath=//div[@class='b-add-ciy__modal__wrapper']/div[1]
${KU_W_selectCity_hospitalListCloseBtn} =  xpath=(//img[@alt='close-btn-img'])[2]
${KU_W_selectCity_searchBox} =  xpath=//input[@placeholder='Type city name']
${KU_W_selectCity_searchedCity} =  xpath=//div[@class='b-city-list__row']
${KU_W_selectCity_viewPlanBtn} =  xpath=//button[contains(text(),'View Plan')]