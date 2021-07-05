*** Keywords ***

Verify PostLogin Blog Menu Navigation
    Log To Console  Blog
    Wait And Click  ${KU_W_blog_link}
    Verify Prod Blog Link
    Wait And Click  ${KU_W_postlogin_homeTab} 
    Sleep  3s
    Wait And Click  ${KU_W_postlogin_viewAllLink}
    Verify Prod Blog Link
    Wait And Click  ${KU_W_blog_newAdviceBlog1}
    Switch To Window
    Wait And Click  ${KU_W_blog_newAdviceBlog2}
    Switch To Window
    Verify Question On FAQBOT Icon  ${KU_W_postlogin_botButton}  ${e_blog_faqbotQA1}

Verify Prod Blog Link
    Switch Window  locator=NEW
    Wait For Element Visibility  ${KU_W_blog_blogTitle}
    Verify Page Contains Element  ${KU_W_blog_blogTitle}
    Verify Page Contains Element  ${KU_W_blog_allLink}
    Verify Page Contains Element  ${KU_W_blog_popularLink}
    Verify Page Contains Element  ${KU_W_blog_categoriesLink}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera
    