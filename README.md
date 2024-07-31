Alcohol Duty UI Tests
Link: https://github.com/hmrc/alcohol-duty-ui-tests

### 1. Services
Start the docker desktop application (and make sure the mongodb is running on the docker)
Start `Alhocol Duty` services as follows:
sm2 --start ALCOHOL_DUTY_ALL
To enable test only endpoint for local testing, stop ALCOHOL_DUTY_FRONTEND & ALCOHOL_DUTY_RETURNS from SM2 services and run these services locally with an argument as below:
sbt "run -Dapplication.router=testOnlyDoNotUseInAppConf.Routes"

### 2. To run all the tests from the UI journey, use below command from the terminal
./run_tests.sh

### 3. To run individual tests from the IDB
Pass below parameters to the VM options under the configuration (Edit Configuration -> VM Options)
-Denv=local -Dbrowser=chrome -Dbrowser.option.headless=false -Dwebdriver.chrome.driver=<pathOfTheDriver>
To enable headless mode replace <-Dbrowser.option.headless=false> with <-Dbrowser.option.headless=true> in the VM option

### 4. To run the tests on docker
Start Mongo Docker container as follows:
docker run --rm -d -p 27017:27017 --name mongo percona/percona-server-mongodb:<version>
Then, run the below command to execute tests 
./run_browser_with_docker.sh <browser>
(* Argument `<browser>` must be `remote-chrome`, `remote-edge` or `remote-firefox`)

### 5. Accessibility and ZAP tests
Since the introduction of the ui-test-runner, there is no need to run the Accessibility and ZAP tests separately. They are now part of the test runs. 
However, make sure to tag the relevant tests accordingly.
In this repo, we have tagged all ZAP tests with @ZAP and accessibility tests with @a11y. 

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
