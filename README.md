# QA-Web-Challenge

# Overview

This project is part of a QA-Web-Challenge focused on testing the Ryanair website: https://www.ryanair.com/ie/en. It utilizes Robot Framework, an open-source automation framework for acceptance testing, acceptance test-driven development (ATDD), and robotic process automation (RPA). The Browser Library is used for web testing, leveraging modern web automation technologies.


## Prerequisites
* Python: Robot Framework is implemented with Python. Ensure Python 3.6 or newer is installed.
* Pip: Python's package installer. Comes pre-installed with Python 3.4 and newer.
* Node.js: Required for the Browser Library. Install the latest version from Node.js official website.

## Installation
1. Install Python:

* Download and install [Python from its official website](https://www.python.org/downloads/).
* During installation, ensure the option to add Python to PATH is selected.
* Verify the installation by running the following command in the command prompt or terminal:
```
python --version
```
2. Install Robot Framework:

* Use pip, which comes pre-installed with Python 3.4 and newer, to install Robot Framework:

```
pip install robotframework
```
3. Install Browser Library:

* The Browser Library is installed via pip:
```
pip install robotframework-browser
```
4. Install Node.js:

* Download and install [Node.js from its official website](https://nodejs.org/en/).
* Ensure Node.js is successfully installed by checking the version:
```
node --version
```
5. Initialize Browser Library:

* After installing Node.js and the Browser Library, initialize it with:
```
rfbrowser init
```
6. Install the extension Robot Framework Language Server in Visual Studio Code

* The extension will improve the code navigation and syntax checking.

## Running Tests and Generating Reports
* To execute tests, use the Robot Framework command-line syntax. For example:
```
robot -d results logs
```
    * -d results specifies the directory where results are saved.
    * tests is the directory containing your test files.

* Robot Framework automatically generates reports and logs after the execution of test cases. These reports provide detailed information about the test execution and are essential for analyzing test results.

* For running a specific test file:
```
robot -d results tests/test.robot
```