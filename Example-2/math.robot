*** Variables ***
${a}=    1
${b}=    2

*** Test Cases ***
Check sum of two numbers
    #Evaluate uses Python's eval() function 
    ${sum}=    Evaluate    ${a}+${b}
    #Default datatype of variables is string
    Should Be Equal As Integers    ${sum}    3


# Run the test case
# robot math.robot
