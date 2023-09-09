*** Settings ***
Documentation  Login to TMDB Client
Resource  ../resources/resource.robot
Resource  ../resources/password.robot
Test Setup     Open Android TMDB Movie App
# Test Teardown  Close Application

*** Variables ***
#*** Credentials ***
&{LOGIN-DETAILS}    username=daniyalz   password=${PASSWORD}

${Account}  //android.widget.TextView[@text="Account"]
${Home}  //android.widget.TextView[@text="Home"]
${Login-Button}  com.kshitijchauhan.haroldadmin.moviedb:id/btLogin
${Close-Cookies}  //android.widget.Button[@text="Close"]
${Login-Field}  //android.view.View[@content-desc="Login"]/android.widget.TextView
${username-field}  //android.view.View[1]/android.widget.EditText
${password-field}  //android.view.View[2]/android.widget.EditText
${login}  //android.view.View[3]/android.widget.Button

*** Test Cases ***
Login to tmdb app
  Click Element  ${Account}
  Click Element  ${Login-Button}
  Wait Until Element Is Visible  ${Close-Cookies}
  Click Element  ${Close-Cookies}
  Click Element  ${Login-Field}
  Wait until element is visible   ${username-field}
  Input Text  ${username-field}   ${LOGIN-DETAILS}[username]
  Input Text  ${password-field}   ${LOGIN-DETAILS}[password]
  Hide Keyboard
  Click Element  ${login}
  Click Element  ${Home}

