*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Pricing Page
    Go To  ${e_pricing_URL}
    Verify Element And Text  ${KU_W_pricing_sectionDesc}  ${e_pricing_sectionDesc}
    Sleep  2s
    Mouse Over  ${KU_W_pricing_slider}
    Wait For Element Visibility  ${KU_W_pricing_slider}
    Drag And Drop By Offset  ${KU_W_pricing_slider}  -123  1
    Sleep  10s