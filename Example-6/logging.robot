*** Test Cases ***
Check logging
    #Default log level is INFO
    #Log levels - TRACE, DEBUG, INFO, WARN, ERROR

    Log    hello
    Log    world    INFO
    Log    hello    DEBUG    
    Log    world    TRACE
    Log    hello    level=DEBUG    console=True
    Log    warning    level=WARN
    Log    Error    ERROR
    Log To Console    Hello World


# Run the test case
# robot logging.robot
