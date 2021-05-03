*** Keywords ***

Verify PostLogin Set A Goal Under Left Bar
    Log To Console  Set A Goal - Left Bar
    Verify Page Contains Element  ${KU_W_postlogin_setAGoalTab}
    Wait And Click  ${KU_W_postlogin_setAGoalTab}
    Verify Set A Goal Landing Page 
    Navigation To Goals