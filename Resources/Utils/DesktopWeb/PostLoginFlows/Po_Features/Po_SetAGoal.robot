*** Keywords ***

Verify PostLogin Set A Goal Menu Navigation
    Navigation To Set A Goal Under Features
    Verify Set A Goal Landing Page 
    Navigation To Goals

Navigation To Set A Goal Under Features
    Wait And Click  ${KU_W_feature_setAGoalLink}

Verify Set A Goal Landing Page 
    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Verify Element And Text  ${KU_W_feature_sg_content}  ${e_feature_sg_content}

Navigation To Goals
    # Own A Home
    Log To Console  Own A Home
    Verify Own A Home Questionnaire
    # Buy A Car 
    Log To Console  Buy A Car
    Verify Buy A Car Questionnaire
    # Save Tax
    Log To Console  Save Tax
    Verify Save Tax Questionnaire
    # Retire Easy
    Log To Console  Retire Easy
    Verify Retire Easy Questionnaire
    # Anniversary
    Log To Console  25th Anniversary
    Verify 25 Anniversary Questionnaire
    # Foreign Vacation
    Log To Console  Foreign Vacation
    Verify Foreign Vacation Questionnaire
    # Educate My Child
    Log To Console  Educate My Child
    Verify Educate My Child Questionnaire
    # Create My Goal
    Log To Console  Create Own Goal
    Verify Create My Goal Questionnaire
    # Dashboard
    Wait And Click  ${KU_W_postlogin_homeTab}
    Wait And Click  ${KU_W_dashboard_goalsListTitle}
    Verify Page Contains Element  ${KU_W_dashboard_ownAHome}
    Verify Page Contains Element  ${KU_W_dashboard_rainyDayGoal}
    Verify Page Contains Element  ${KU_W_dashboard_buyCar}
    Verify Page Contains Element  ${KU_W_dashboard_foreignVacation}
    Verify Page Contains Element  ${KU_W_dashboard_educateChild}
    Scroll Untill View  ${KU_W_dashboard_anniversary}
    Verify Page Contains Element  ${KU_W_dashboard_anniversary}
    Verify Page Contains Element  ${KU_W_dashboard_retireEasy} 
    Verify Page Contains Element  ${KU_W_dashboard_saveTax}
    Wait And Click  ${KU_W_dashboard_closeGoalsPopup}