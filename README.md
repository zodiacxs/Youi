# Youi Test
## Potential risks of Demo Web Shop
|Risks|Reason|
|-|-|
|No requirement for password when user register an account|This means user can register account with simple password like '123456', which imposes great risk of account being stolen or hacked|
|User not aware of out of stock items|Out of stock items are not removed/hidden or have an 'out of stock' sign, user might be spending time on view the item but not reazling it cannot be purchased (even though the add to cart button is hidden, it is not user friendly enough)|
|WebSite is not secured|Not using https protocol means the website is more likely to be attacked|
|Currency is not displayed|User will not know the actual price of the items, currency should be displayed|
|Cookies is enabled by default|Personal sensitive information is stored by default, this gives identity thieves a chance to be evil|
|Hidden items|Found a hidden item http://demowebshop.tricentis.com/major-league-baseball-2k9, which is not listed under any category, this makes website maintenance difficult|
|No consideration for accessibility|Disabled people will have hard time exploring the website because it is not accessibility friendly|

#### I have choosen the first two risks to automate for demonstration so that I can write positive and negative tests.

<br/>

| |Scenario|Tag|
|-|-|-|
|1|User register account with password that only contains numbers|@NumericPassword|
|2|User register account with a strong password|@StrongPassword|
|3|Add to cart button is hidden/displayed based on stock availability|@StockAvailability|

Only Scenario1 is expected to fail (because it doesn't meet the requirement)

Scenario3 has 3 mock inputs(will be executed 3 times)

<br/>

## Environment Setup
| |Step|
|-|-|
|1|Download Ruby+devkit https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.5-1/rubyinstaller-devkit-2.7.5-1-x64.exe|
|2|Install Ruby+devkit, everything that can be installed should be installed
|3|Clone the project from github https://github.com/zodiacxs/Youi.git
|4|Open command line window and set the path to the project /Youi
|5|Execute command 'bundle install', this should install all the libraries required
|6|Downlaod chromedriver from Google https://chromedriver.chromium.org/downloads and save it under C:\chromedriver.exe, make sure to download the version that matches your brower
|7|Now you should be able to run the test by simple execute the command 'cucumber'
|8|(Optional) You may execute single testcase with the @tag I have assigned, example:<br/> cucumber -t "@NumericPassword"

Please contact zodiacxs@gmail.com if any issue setting up the environment or running the testcase.