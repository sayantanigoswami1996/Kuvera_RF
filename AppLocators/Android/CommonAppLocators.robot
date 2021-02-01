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
${browserstack_userName}       prathijaetagi1
${browserstack_accessKey}      DGf3ooYqqLBLwyPYgAo1
${remote_URL}       http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub


#Application Locator 'KU_<locatorName>'
${KU_A_slider5} =  xpath=//*[@text="Go to slide 5"]
${KU_A_slider1} =  xpath=//*[@text="Go to slide 1"]
${KU_A_skip} =  xpath=//*[@text="Skip"]
${KU_A_logo} =  xpath://*[@text='kuvera-logo-dark']
${KU_A_close} =  xpath://*[@text='Close']
${KU_A_hamburgerMenu} =  xpath=//*[@text='hamburger-menu']
