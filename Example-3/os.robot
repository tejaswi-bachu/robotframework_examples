*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Create directory and a file
    # Replace the below paths
    Directory Should Exist    /root/test
    Create Directory    /root/test/hello
    Create File    /root/test/hello/hello.txt    hello world


# Run the test case
# robot os.robot
