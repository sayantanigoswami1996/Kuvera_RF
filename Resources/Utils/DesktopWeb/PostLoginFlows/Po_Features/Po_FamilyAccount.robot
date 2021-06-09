*** Keywords ***

Verify PostLogin Family Account Menu Navigation
    Verify PreLogin Family Account Page 
    Wait And Click  ${KU_W_button}
    Verify Refer Coin Page From Features  ${KU_W_feature_fa_coinsTitle}