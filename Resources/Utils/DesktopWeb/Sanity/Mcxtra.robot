*** Keywords ***

Verify PostLogin Prod Mcxtra Menu Navigation
    Log To Console  Mcxtra-Prod
    Verify Group Health Banner
    Verify Why Us
    Verify Explore More
    Verify Import Policy Popup
    Verify Claim Assist Popup
    Verify Policy imported
    
Verify Group Health Banner
    Sleep  4s
    Wait And Click  ${KU_W_insureLink}
    Wait For Element Visibility  ${KU_W_insure_groupHealth}
    Verify Page Contains Element  ${KU_W_insure_groupHealth}
    Verify Page Contains Element  ${KU_W_mcxtra_bannerTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_knowMore}
    Verify Page Contains Image  ${KU_W_mcxtra_logo}

Verify Why Us
    Verify Page Contains Element  ${KU_W_mcxtra_whyUs}
    Verify Page Contains Element  ${KU_W_mcxtra_whyUsPoint1}
    Verify Element And Text  ${KU_W_mcxtra_whyUsPoint2}  ${e_mcxtra_whyUsPoint2}
    Verify Page Contains Element  ${KU_W_mcxtra_insuranceForEveryoneLogo} 
    Verify Page Contains Element  ${KU_W_mcxtra_yearRoundSupportLogo}

Verify Explore More
    Verify Page Contains Element  ${KU_W_mcxtra_exploreMore}  
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicy} 
    Verify Page Contains Element  ${KU_W_mcxtra_claimAssist}  
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyLogo} 
    Verify Page Contains Element  ${KU_W_mcxtra_claimAssistLogo}

Verify Claim Assist Popup
    Verify Page Contains Element  ${KU_W_mcxtra_CAlogo} 
    Verify Page Contains Element  ${KU_W_mcxtra_CATitle}
    Verify Page Contains Element  ${KU_W_mcxtra_poweredBy}
    Verify Page Contains Element  ${KU_W_mcxtra_priceTag}
    Verify Page Contains Element  ${KU_W_mcxtra_endToEndAssistance} 
    Verify Page Contains Element  ${KU_W_mcxtra_endToEndAssistanceDesc}
    Verify Page Contains Element  ${KU_W_mcxtra_regularUpdates} 
    Verify Page Contains Element  ${KU_W_mcxtra_regularUpdatesDesc}
    Verify Page Contains Element  ${KU_W_mcxtra_useForAllPolicies}
    Verify Page Contains Element  ${KU_W_mcxtra_useForAllPoliciesDesc}
    Verify Page Contains Element  ${KU_W_mcxtra_warningMsg}
    Wait And Click  ${KU_W_mcxtra_checkBoxT&C}
    Wait And Click  ${KU_W_mcxtra_payNow}
    Verify Page Contains Element  ${KU_W_mcxtra_confirmContactNum}
    Verify Page Contains Element  ${KU_W_mcxtra_weWillCallYou}
    Verify Page Contains Element  ${KU_W_mcxtra_contactNum}
    Wait And Click  ${KU_W_mcxtra_changeBtn} 
    Verify Page Contains Element  ${KU_W_mcxtra_updateContactNum}
    Verify Page Contains Element  ${KU_W_mcxtra_weWillCallYou}
    Wait And Click  ${KU_W_mcxtra_alternateNum}
    Input Text  ${KU_W_mcxtra_alternateNum}  ${e_mcxtra_updatedNum}
    Wait And Click  ${KU_W_postlogin_updateBtn}
    Verify Page Contains Element  ${KU_W_mcxtra_updatedNum}
    Wait And Click  ${KU_W_postlogin_confirmBtn}
    Verify Page Contains Element  ${KU_W_mcxtra_orderSum} 
    Verify Page Contains Element  ${KU_W_mcxtra_totalPayable} 
    Verify Page Contains Element  ${KU_W_mcxtra_selectPaymentMode}
    Verify Page Contains Element  ${KU_W_mcxtra_amount}
    Wait And Click  ${KU_W_mcxtra_viewBreakUp}
    Verify Page Contains Element  ${KU_W_mcxtra_payementBreakupTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_CA}
    Verify Page Contains Element  ${KU_W_mcxtra_CAVal}
    Verify Page Contains Element  ${KU_W_mcxtra_GST}
    Verify Page Contains Element  ${KU_W_mcxtra_GSTVal}
    Verify Page Contains Element  ${KU_W_mcxtra_payableBreakup}
    Verify Page Contains Element  ${KU_W_mcxtra_amountBreakup}
    Go Back
    Wait And Click  ${KU_W_mcxtra_close}
    Wait And Click  ${KU_W_postlogin_yesQuit1}

Verify Import Policy Popup
    Wait And Click  ${KU_W_mcxtra_importPolicy}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPointer1}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPoint1Desc}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPoint2}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPoint2Desc}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPoint3}
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyPoint3Desc}
    Verify Page Contains Element  ${KU_W_mcxtra_close}
    Wait And Click  ${KU_W_mcxtra_getStartedBtn}
    # Select Insurance
    Verify Page Contains Element  ${KU_W_mcxtra_selectInsuranceTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_healthInsurance}
    Verify Page Contains Element  ${KU_W_mcxtra_lifeInsurance}
    Verify Page Contains Element  ${KU_W_mcxtra_motorInsurance}
    Verify Page Contains Element  ${KU_W_mcxtra_healthTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_lifeTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_motorTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_close}
    Wait And Click  ${KU_W_mcxtra_motorInsurance}
    # Import Policy
    Verify Page Contains Element  ${KU_W_mcxtra_importPolicyTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_uploadPolicyDoc} 
    Verify Page Contains Element  ${KU_W_mcxtra_close}
    Verify Page Contains Element  ${KU_W_mcxtra_insuranceType}
    Verify Page Contains Element  ${KU_W_mcxtra_uploadPolicyDoc} 
    Verify Page Contains Element  ${KU_W_mcxtra_motorType}
    Wait And Click  ${KU_W_mcxtra_dropdown}
    Verify Page Contains Element  ${KU_W_mcxtra_selectInsuranceTitle}
    Wait And Click  ${KU_W_mcxtra_healthInsurance}
    Verify Page Contains Element  ${KU_W_mcxtra_healthType} 
    Verify Page Contains Element  ${KU_W_mcxtra_policyTitle}
    Wait And Click  ${KU_W_mcxtra_policyDropdown}
    Verify Page Contains Element  ${KU_W_mcxtra_searchPolicyTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_close} 
    Wait And Click  ${KU_W_mcxtra_searchPolicyField}
    Input Text  ${KU_W_mcxtra_searchPolicyField}  ${e_mcxtra_policyName}
    Wait And Click  ${KU_W_mcxtra_coronaPolicy}
    Verify Disabled Element  ${KU_W_mcxtra_disabledImport}
    Verify Page Contains Element  ${KU_W_mcxtra_uploadPolicyLabel}
    Choose File  ${KU_W_mcxtra_uploadPDFFile}  ${cas_filePath}
    Verify Page Contains Element  ${KU_W_mcxtra_uploadCardLabel}
    Choose File  ${KU_W_mcxtra_uploadCardFile}  ${policy_filePath}
    Verify Page Contains Element  ${KU_W_mcxtra_howToFindCardAndDocBanner}
    Wait And Click  ${KU_W_mcxtra_howToFindCardAndDocBanner}
    # How to find cashless card and doc
    Verify Page Contains Element  ${KU_W_mcxtra_findPolicyDocAndCardTitle}
    Verify Page Contains Element  ${KU_W_mcxtra_forPolicyTitle}
    Wait For Element Visibility   ${KU_W_mcxtra_forPolicyDesc1}
    Verify Element And Text  ${KU_W_mcxtra_forPolicyDesc1}  ${e_mcxtra_forPolicyDesc1}
    Verify Element And Text  ${KU_W_mcxtra_forPolicyDesc2}  ${e_mcxtra_forPolicyDesc2}
    Verify Element And Text  ${KU_W_mcxtra_forPolicyDesc3}  ${e_mcxtra_forPolicyDesc3}
    Verify Page Contains Element  ${KU_W_mcxtra_cashlessCardTitle} 
    Verify Element And Text  ${KU_W_mcxtra_cashlessPolicyDesc1}  ${e_mcxtra_cashlessPolicyDesc1}
    Verify Element And Text  ${KU_W_mcxtra_cashlessPolicyDesc2}  ${e_mcxtra_cashlessPolicyDesc2}
    Wait And Click  ${KU_W_postlogin_gotItPopupBtn}
    Wait And Click  ${KU_W_postlogin_importBtn}
    Verify Page Contains Element  ${KU_W_mcxtra_importSuccessful}
    Verify Page Contains Element  ${KU_W_mcxtra_importSuccessfulDesc}
    Wait And Click  ${KU_W_postlogin_continue} 

Verify Policy imported
    Wait And Click  ${KU_W_postlogin_homeTab}
    Verify Page Contains Element  ${KU_W_mcxtra_insureTab}
    Verify Page Contains Element  ${KU_W_mcxtra_onePolicyMsg}
    Verify Page Contains Element  ${KU_W_mcxtra_importedLabel}
    Verify Page Contains Element  ${KU_W_mcxtra_policyCount}
    Wait And Click  ${KU_W_mcxtra_onePolicyMsg}
    Verify Page Contains Element  ${KU_W_postlogin_policiesTab}
    Verify Page Contains Element  ${KU_W_mcxtra_healthPolicy}
    Verify Page Contains Element  ${KU_W_mcxtra_importedPolicyName} 
    Wait And Click  ${KU_W_mcxtra_pdfIcon}
    Switch To Window
    Wait And Click  ${KU_W_mcxtra_delIcon}
    Verify Page Contains Element  ${KU_W_mcxtra_delMsg}
    Wait And Click  ${KU_W_postlogin_yesDeleteBtn}
    Verify Element And Text  ${KU_W_toastMssg}  ${e_mcxtra_policyDeleteToastMsg}