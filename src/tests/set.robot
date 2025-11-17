*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter value is set, it shows the set value
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  name:value  5
    Click Button  Aseta
    Page Should Contain  nappia painettu 5 kertaa