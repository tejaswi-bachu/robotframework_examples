*** Settings ***
Library    MathLibrary

*** Variables ***
${a}=    10
${b}=    20

*** Test Cases ***
Check sum of two numbers
    #By default, variables are strings
    ${a}=    Convert To Integer    ${a}
    ${b}=    Convert To Integer    ${b}
    ${sum}=    add    ${a}    ${b}
    Should Be Equal As Integers    ${sum}    30
    Should Be Equal As Strings    ${sum}    30
	
Check difference of two numbers
    ${a}=    Convert To Integer    ${a}
    ${b}=    Convert To Integer    ${b}
    ${diff}=    sub    ${a}    ${b}
    Should Be Equal As Integers    ${diff}    -10
    Should Be Equal As Strings    ${diff}    -10


# Run the test case
# robot math.robot
