*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PostLogin Add Family Details
    Verify PostLogin Account Creation 
    Navigate To Insure Page And Click Premium Button
    Wait For Element Visibility  ${KU_W_famDetails_pageTitle}
    # Text Validation Of Title and Subtitle
    Verify Element and Text  ${KU_W_famDetails_pageTitle}  ${e_famDetails_addFamMemberTitle}
    Verify Element and Text  ${KU_W_famDetails_addFamMemberSubTitle1}  ${e_famDetails_addFamMemberSubTitle1}
    Verify Element and Text  ${KU_W_famDetails_addFamMemberSubTitle2}  ${e_famDetails_AddFamMemberSubTitle2}
    # Info Link Popup
    Wait And Click   ${KU_W_famDetails_infoLink}
    Verify Element And Text  ${KU_W_famDetails_infoPopupTitle1}  ${e_famDetails_infoPopupTitle1}
    Verify Element And Text  ${KU_W_famDetails_infoPopupTitle2}  ${e_famDetails_infoPopupTitle2}
    Wait And Click  ${KU_W_famDetails_popupOkayBtn}
    # Add Gender to Primary Applicant
    Verify Element And Text  ${KU_W_famDetails_insuranceHolderName}  ${e_famDetails_name}
    Wait And Click  ${KU_W_famDetails_primaryApplicant}
    Wait And Click  ${KU_W_famDetails_dropdown}
    Wait And Click  ${KU_W_famDetails_primaryApplicantGender}
    Wait Scroll And Click Element  ${KU_W_famDetails_doneBtn}
    # Add Member 
    Wait And Click  ${KU_W_famDetails_addMemberMenu}
    Wait And Click  ${KU_W_famDetails_memberName}
    Input Text  ${e_famDetails_memberName} 
    Wait And Click  ${KU_W_famDetails_dropdown}
    Click Element  ${KU_W_famDetails_daughter} 
    Wait And Click  ${KU_W_famDetails_DOB}
    FOR  ${i}  IN RANGE  1   15
        Wait And Click  ${KU_W_famDetails_monthOnCalendar}
    END
    Wait And Click  ${KU_W_famDetails_dateOnCalendar}
    Wait And Click  ${KU_W_famDetails_doneBtn}
    Wait Scroll And Click Element  ${KU_W_famDetails_proceedBtn}

    # Select City 
    Verify Element And Text  ${KU_W_famDetails_pageTitle}  ${e_selectCity_selectCityTitle}
    Verify Element And Text  ${KU_W_selectCity_selecyCitySubTitle}  ${e_selectCity_selectCitySubTitle}
    Verify Element And Text  ${KU_W_selectCity_cityHeader}  ${e_selectCity_cityHeader}
    Verify Element And Text  ${KU_W_selectCity_networkHospitalHeader}  ${e_selectCity_networkHospitalHeader}
    Wait And Click  ${KU_W_selectCity_hospitalInfoLink} 
    Verify Element And Text  ${KU_W_selectCity_infoLinkPopupTitle}  ${e_selectCity_infoLinkPopupTitle}
    Wait And Click  ${KU_W_selectCity_infoLinkOkayBtn}
    Verify City Name And Count Of Hospitals
    Verify Presence Of List Of Hospitals
    Click Element  ${KU_W_selectCity_searchBox}
    Input Text  ${KU_W_selectCity_searchBox}  ${e_selectCity_searchedCityName}
    Click Element  ${KU_W_selectCity_searchedCity}
    Click Element  ${KU_W_selectCity_viewPlanBtn} 

Verify City Name And Count Of Hospitals
    # City Name
    Verify Element And Text  ${KU_W_selectCity_cityName1}  ${e_selectCity_cityName1}
    Verify Element And Text  ${KU_W_selectCity_cityName2}  ${e_selectCity_cityName2}
    Verify Element And Text  ${KU_W_selectCity_cityName3}  ${e_selectCity_cityName3}
    Verify Element And Text  ${KU_W_selectCity_cityName4}  ${e_selectCity_cityName4}
    Verify Element And Text  ${KU_W_selectCity_cityName5}  ${e_selectCity_cityName5}
    # Count of Hospitals
    Verify Element And Text  ${KU_W_selectCity_hospitalInCity1}  ${e_selectCity_hospitalInCity1}
    Verify Element And Text  ${KU_W_selectCity_hospitalInCity2}  ${e_selectCity_hospitalInCity2}
    Verify Element And Text  ${KU_W_selectCity_hospitalInCity3}  ${e_selectCity_hospitalInCity3}
    Verify Element And Text  ${KU_W_selectCity_hospitalInCity4}  ${e_selectCity_hospitalInCity4}
    Verify Element And Text  ${KU_W_selectCity_hospitalInCity5}  ${e_selectCity_hospitalInCity5}

Verify Presence Of List Of Hospitals
    # Get list count
    ${hospitalListCount} =  Get Element Count  xpath=//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number']
    Log To Console  ${hospitalListCount}

    # Iterate and verify all fund house details 
    FOR  ${i}  IN RANGE  1  ${hospitalListCount}+1
        Wait Scroll And Click Element  xpath=(//div[@class='b-add-ciy__container__cities-row__text b-add-ciy__container__cashless-hsopital-number'])[${i}]
        Verify Page Contains Element  ${KU_W_selectCity_hospitalsList}
        Click Element  ${KU_W_selectCity_hospitalListCloseBtn}
    END




