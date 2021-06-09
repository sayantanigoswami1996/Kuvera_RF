*** Keywords ***

Verify PostLogin Tax Harvesting Menu Navigation
    Verify PreLogin Tax Harvesting Page
    Go Back
    Sleep  6s
    Click on Activate Button
    Verify Refer Coin Page From Features  ${KU_W_feature_th_coinTitle}
    Scroll Untill View  ${KU_W_feature_th_subscribe2Btn}
    Wait And Click  ${KU_W_feature_th_subscribe2Btn}
    Verify Refer Coin Page From Features  ${KU_W_feature_th_coinTitle}
    Scroll Untill View  ${KU_W_feature_th_subscribe3Btn}
    Wait And Click  ${KU_W_feature_th_subscribe3Btn}
    Verify Refer Coin Page From Features  ${KU_W_feature_th_coinTitle}


Verify PostLogin Tax Harvesting Menu Navigation Without KYC
    Log To Console  Tax Harvesting Non KYC Flow
    Click on Activate Button
    Verify And Handle Complete Your Set Up Popup
    Scroll Untill View  ${KU_W_feature_th_subscribe2Btn}
    Wait And Click  ${KU_W_feature_th_subscribe2Btn}
    Verify And Handle Complete Your Set Up Popup
    Scroll Untill View  ${KU_W_feature_th_subscribe3Btn}
    Wait And Click  ${KU_W_feature_th_subscribe3Btn}
    Verify And Handle Complete Your Set Up Popup
   

Verify And Handle Complete Your Set Up Popup
    Verify Page Contains Element  ${KU_W_feature_th_completeYourSetup}
    Verify Page Contains Element  ${KU_W_feature_th_completeYourSetupDesc}
    Wait And Click  ${KU_W_postlogin_OkBtn} 

Click on Activate Button
    Wait And Click  ${KU_W_featureLink}
    Wait And Click  ${KU_W_feature_taxHarvestingLink}
    Wait And Click  ${KU_W_button}