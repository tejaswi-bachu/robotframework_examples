*** Settings ***
Library    MathLibrary

*** Variables ***
${a}=    10
${b}=    20

*** Test Cases ***
Check sum of two numbers
    [Tags]    sum
    #By default, variables are strings
    ${a}=    Convert To Integer    ${a}
    ${b}=    Convert To Integer    ${b}
    ${sum}=    add    ${a}    ${b}
    Should Be Equal As Integers    ${sum}    30

Check difference of two numbers
    [Tags]    diff
    ${a}=    Convert To Integer    ${a}
    ${b}=    Convert To Integer    ${b}
    ${diff}=    sub    ${a}    ${b}
    Should Be Equal As Integers    ${diff}    -10


# Run the test case
# robot --argumentfile math_args.txt math.robot
