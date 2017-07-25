*** Test Cases ***
Check difference of two numbers
    ${diff}=    Evaluate    10-20    
    Should Be Equal As Integers    ${diff}    -10