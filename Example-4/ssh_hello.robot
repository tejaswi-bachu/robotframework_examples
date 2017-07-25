*** Settings ***
Library            SSHLibrary
Suite Setup        Open Connection and Log In
Suite Teardown     Suite Teardown

*** Variables ***
# Replace the below values
${Host}             192.168.10.100
${Username}         root
${Password}         password

*** Test Cases ***
Run echo hello and verify output
    ${output}=    Execute Command    echo hello
    Should Be Equal    ${output}    hello

Run echo hello and verify output and return code
    ${output}    ${status}=    Execute Command    echo hello    return_rc=True   
    Should Be Equal    ${output}    hello
    Should Be Equal As Integers   ${status}    0	

*** Keywords ***
Open Connection And Log In
    Open Connection    ${Host}
    Login    ${Username}    ${Password}

Suite Teardown
    Close All Connections


# Run the test case
# robot ssh_hello.robot
