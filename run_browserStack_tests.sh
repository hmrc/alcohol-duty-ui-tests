#!/bin/bash

browserStackUsername="TEST_PW" #Once the user credentials obtained, then these values will be updated
browserStackAutomateKey="TEST_PW"

#WindowsOS
sbt -Dbrowser=browserstack  -Denvironment=local -Dbrowserstack.username=${browserStackUsername} -Dbrowserstack.key=${browserStackAutomateKey} -Dbrowserstack.browser_version="118" -Dbrowserstack.browser="Chrome" -Dbrowserstack.os="Windows" -Dbrowserstack.os_version="10" 'testOnly specs.* -- -n BrowserStack'
sbt -Dbrowser=browserstack  -Denvironment=local -Dbrowserstack.username=${browserStackUsername} -Dbrowserstack.key=${browserStackAutomateKey} -Dbrowserstack.browser_version="118" -Dbrowserstack.browser="Firefox" -Dbrowserstack.os="Windows" -Dbrowserstack.os_version="10" 'testOnly specs.* -- -n BrowserStack'
sbt -Dbrowser=browserstack  -Denvironment=local -Dbrowserstack.username=${browserStackUsername} -Dbrowserstack.key=${browserStackAutomateKey} -Dbrowserstack.browser_version="118" -Dbrowserstack.browser="EDGE" -Dbrowserstack.os="Windows" -Dbrowserstack.os_version="10" 'testOnly specs.* -- -n BrowserStack'
#macOS
sbt -Dbrowser=browserstack  -Denvironment=local -Dbrowserstack.username=${browserStackUsername} -Dbrowserstack.key=${browserStackAutomateKey} -Dbrowserstack.browser_version="118" -Dbrowserstack.browser="Firefox" -Dbrowserstack.os="OS X" -Dbrowserstack.os_version="Sonoma" 'testOnly specs.* -- -n BrowserStack'
sbt -Dbrowser=browserstack  -Denvironment=local -Dbrowserstack.username=${browserStackUsername} -Dbrowserstack.key=${browserStackAutomateKey} -Dbrowserstack.browser_version="118" -Dbrowserstack.browser="Chrome" -Dbrowserstack.os="OS X" -Dbrowserstack.os_version="Sonoma" 'testOnly specs.* -- -n BrowserStack'


