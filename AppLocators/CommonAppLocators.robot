*** Variables ***

#Desired Capabilities
${server}              http://localhost:4723/wd/hub
${platform}            Android
${platform_version}    8.1.0
${device}              ZY322BW52K
${app_package} =       com.gooogle.android.kuvera.app
${app_activity} =      com.gooogle.android.kuvera.app.MainActivity
${appium}              appium
${apkPath}             Resources/APK/Kuvera-prod-1.169.1.apk

#Application Locator 'KU_<locatorName>'
${KU_slider1} =    xpath=//*[@text="Go to slide 1"]
${KU_skip} =       xpath=//*[@text="Skip"]
${KU_logo} =       xpath=//*[@text='kuvera-logo-dark']
${KU_close} =      xpath=//*[@text='Close']