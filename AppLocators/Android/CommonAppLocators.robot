*** Variables ***

#Desired Capabilities
${server}              http://localhost:4723/wd/hub
${platform}            Android
${platform_version}    9
${device}              vivo1916
${app_package} =       com.gooogle.android.kuvera.app
${app_activity} =      com.gooogle.android.kuvera.app.MainActivity
${appium}              appium
${apkPath}             Resources/APK/Kuvera-prod-1.169.1.apk

#Application Locator 'KU_<locatorName>'
${KU_slider5} =       xpath=//*[@text="Go to slide 5"]
${KU_slider1} =       xpath=//*[@text="Go to slide 1"]
${KU_skip} =          xpath=//*[@text="Skip"]
${KU_logo} =          xpath=//*[@text='kuvera-logo-dark']
${KU_close} =         xpath=//*[@text='Close']
${KU_signupText} =    xpath=(//*[@text='Sign up'])[1]
${KU_signupButton} =  xpath=(//*[@text='Sign up'])[2]
${KU_login} =         xpath=(//*[@text='Log in'])

