# robot-appium

## Setup

- Clone the repo
- Create a virtual environment
  ```
  python3 -m venv env
  source env/bin/activate
  ```
- Install dependencies

  - `pip install --upgrade -r requirements.txt`

- Upload your Android or iOS App
  <br/>Upload your Android app (.apk or .aab file) or iOS app (.ipa file) to BrowserStack servers using our REST API. Here is an example cURL request :
  `  curl -u "BROWSERSTACK_USERNAME:BROWSERSTACK_ACCESS_KEY" \
-X POST "https://api-cloud.browserstack.com/app-automate/upload" \
-F "file=@/path/to/apk/file"`
  The generated app_url is a unique ID used to identify the uploaded app build. You can add that to the config .yml file or directly set the path to the application in the config file under the app key.

## Set BrowserStack Credentials

- You can export the environment variables for the Username and Access Key of your BrowserStack account or you can set it in the config file.

  ```
  export USERNAME=<browserstack-username> &&
  export ACCESSKEY=<browserstack-access-key>
  ```

  ## Running tests

  - To run local test with browserStack, run

  ```
  source secret.sh && export BROWSERSTACK_CONFIG_FILE="Robot/Resources/config/android/browserstack-local.yml" && browserstack-sdk robot Robot/Tests/android.robot
  ```
