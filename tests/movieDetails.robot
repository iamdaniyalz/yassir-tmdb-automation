*** Settings ***
Documentation  Search for a movie, view details and add to favorites
Resource  ../resources/resource.robot
# Test Setup     Open Android TMDB Movie App
# Test Teardown  Close Application

*** Variables ***
${Search-Button}  com.kshitijchauhan.haroldadmin.moviedb:id/etSearchBox
${Movie-Name}  Interstellar
${Search-Result}  //android.widget.TextView[@text="${Movie-Name}"]
${Add-To-Favorites}   com.kshitijchauhan.haroldadmin.moviedb:id/btToggleFavourite

*** Test Cases ***
Search for ${Movie-Name} and view its details
  Wait Until Element Is Visible  ${Search-Button}
  Click Element  ${Search-Button}
  Input Text  ${Search-Button}  ${Movie-Name}
  Hide Keyboard
  Element Should Be Visible  ${Search-Result}
  Click Element  ${Search-Result}

Add movie to favorites
  Click Element  ${Add-To-Favorites}
  Wait Until Page Contains   Added to favorites
  # Element Should Not Contain Text 