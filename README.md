Alcohol Duty UI Tests
Link: https://github.com/hmrc/alcohol-duty-ui-tests

### 1. Services

Start the docker desktop application (and make sure the mongodb is running on the docker)

Start `Alcohol Duty` services as follows:
sm2 --start ALCOHOL_DUTY_CONTACT_PREFERENCES_ALL

To test specific microservices in your local, stop the microservice(s) you'd like to test using service-manager.
Example: sm2 --stop ALCOHOL_DUTY_RETURNS_FRONTEND

Run the microservice(s) you'd like to test using sbt:

- **If running ALCOHOL_DUTY_RETURNS_FRONTEND, ALCOHOL_DUTY_RETURNS, ALCOHOL_DUTY_ACCOUNT,
  ALCOHOL_DUTY_CONTACT_PREFERENCES_FRONTEND or ALCOHOL_DUTY_CONTACT_PREFERENCES:** start using test only routes:
  `sbt "run -Dapplication.router=testOnlyDoNotUseInAppConf.Routes"`
- **If running other microservices:** start normally: `sbt run`

### 2. To run all ADR tests from the UI journey, use below command from the terminal

`./run_tests.sh`

### 3. To run ECP tests, use below command from the terminal

`./run_ecp.sh`

Note that you will have to stop ALCOHOL_DUTY_CONTACT_PREFERENCES in sm2 and run it locally, with email-verification-stub
changed to true in application.conf

### 4. To run individual tests from the IDB

Right click the Play button for the Feature or Scenario and select 'Modify Run Configuration...'

Ensure that `-Dbrowser=chrome` is passed as a parameter to the VM options.

To disable headless mode (i.e. see the scenarios running in a browser window), also add
`-Dbrowser.option.headless=false`.

The tests will also run, more slowly, using the full set of parameters:
`-Denv=local -Dbrowser=chrome -Dbrowser.option.headless=false -Dwebdriver.chrome.driver=<pathOfTheDriver>`

### 5. Accessibility and ZAP tests
Since the introduction of the ui-test-runner, there is no need to run the Accessibility and ZAP tests separately. They are now part of the test runs. 
And, no need to tag any tests with @ZAP or @a11y to run ZAP tests or accessibility tests, respectively. 

### 6. Test inspection and debugging
Connect to `127.0.0.1:5900` via a VNC client to inspect and debug test execution.
If prompted for a password the default is `secret`.

### 7. Running tests using BrowserStack
Download the BrowserStack local executable from the following links and extract the file: Linux - https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip Mac - https://www.browserstack.com/browserstack-local/BrowserStackLocal-darwin-x64.zip
Run the executable with the automate key of your browserstack account - ./BrowserStackLocal accessKey. Access key can be found at https://www.browserstack.com/accounts/settings
Run the shell script - ./run_browserStack_tests.sh
Select the browser to run the test.
To view the running tests in browserstack, navigate to https://automate.browserstack.com/

## 8. Installing local driver binaries
Download the latest Chromedriver from (https://googlechromelabs.github.io/chrome-for-testing/).
Extract the zip file and save the driver in the following folder - /usr/local/bin/

## License
This code is open source software licensed under
the [Apache 2.0 License]("http://www.apache.org/licenses/LICENSE-2.0.html").
