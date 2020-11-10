# Kuvera_RF
### Kuvera Automation Project - RobotFramework

#### Table of Contents

* [About the Project](https://github.com/MoolyaSoftwareTesting/Kuvera_RF/blob/KU_RF_PE_PHASE1/README.md#about-the-project)
     * [BuiltWith](https://github.com/MoolyaSoftwareTesting/Kuvera_RF/blob/KU_RF_PE_PHASE1/README.md#built-with)
* [Getting Started](https://github.com/MoolyaSoftwareTesting/Kuvera_RF/blob/KU_RF_PE_PHASE1/README.md#getting-started) 

    * [Pre-requisites](https://github.com/MoolyaSoftwareTesting/Kuvera_RF/blob/KU_RF_PE_PHASE1/README.md#pre-requisites)
    * [Installation](https://github.com/MoolyaSoftwareTesting/Kuvera_RF/blob/KU_RF_PE_PHASE1/README.md#installation)
    
    
    
 #### About the Project
 
 The scope of this project is to Automate the AUT web application Regression testing through Robot framework.
   
 #### Built With
 
 * [Python](https://www.python.org/)
 * [Selenium](https://www.selenium.dev/)
 
 #### Getting Started
 To start with this tool, some prerequisites has to be made, which are described below 👇.
 
 #### Pre-requisites
 The major softwares or tools which has to be setup in the machine to run the test script using the tool are listed down below. Please click on the each links to get the    installation guide.
 
 *  Python- v3 and above 
 *  Visual Studio Code or any other preferred IDE 
 *  Pip
 *  Robot Framework
 *  Selenium
 *  robotframework-seleniumlibrary
 *  robotframework-jsonlibrary
 *  robotframework-jsonvalidator
 *  Chromedriver/Geckodriver
 
 #### Installation
 
 * To install python3 (mac)
   cmd : **$ brew install python** 
   
     * To check the version of python installed
       cmd : **$ python --version**
       
 * If not python 3.x.x, Where to find my python location
   **$ which python**
   (Copy location)
   export PATH= /your/python-location.
*  To install Pip for Python
   cmd : **$ python3 get-pip.py**
     * To check the version of pip installed 
       cmd : **$ pip3 --version**
       
*  To install Robot Framework
   cmd : **$ pip install robotframework**  
* [Visual Studio Code](https://code.visualstudio.com/download)
   
* Seleium Library
  cmd: **$ pip install robotframework-seleniumlibrary**
  
* To install latest Chromedriver/Geckodriver
  cmd : **$ pip install webdrivermanager**
        **webdrivermanager firefox chrome --linkpath /usr/local/bin**
        
* To install Json Library
  cmd : **$ pip install robotframework-jsonlibrary**
  
* To install Json Validator
  cmd : **$ pip install robotframework-jsonvalidator**
  
#### Run Command Details

  Upon installing the above-required software. Follow the below steps to trigger the execution.
  VScode Extentions: Robot Framework Intellisense FORK
  * Clone this project (git clone <projecturl.git>)
  * Open VSCode
  * Open Project in vscode -> vscode Terminal 
   use **$robot -d Results  Tests/DesktopWeb/PreLoginTests.robot** to trigger the execution.
    
 #### Execution Results 
 Find the Execution result under ../results/report.html
  
        
        
        
        


   

   
   
                           
   
    
 
 
 
