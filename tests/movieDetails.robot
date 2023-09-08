*** Settings ***
Documentation  Search for a movie and go to its details
Resource  ../resources/resource.robot
Test Setup     Open Android TMDB Movie App
# Test Teardown  Close Application

*** Variables ***
${Search-Button}  com.kshitijchauhan.haroldadmin.moviedb:id/etSearchBox
${Movie-Name}  Interstellar
${Search-Result}  //android.widget.TextView[@text="${Movie-Name}"]

*** Test Cases ***
Search for ${Movie-Name} and view its details
  Wait Until Element Is Visible  ${Search-Button}
  Click Element  ${Search-Button}
  Input Text  ${Search-Button}  ${Movie-Name}
  Hide Keyboard
  Element Should Be Visible  ${Search-Result}
  Click Element  ${Search-Result}
