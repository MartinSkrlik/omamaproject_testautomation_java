@Martin
@DeleteUserTest
Feature: CestaVon - Delete User


  Scenario Outline: CestaVon - 09 - create find and delete specific user

    Given   Open browser "<BROWSER>"
    When    Maximalize window
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>"
    And     Click on button "Zaregistrovať zariadenie"
    And     Select from menu tab "Používatelia"
    And     Verify "Používatelia" tab is active
    Then    Click on button "Pridať"
    And     Registry new "<USER>" and save details
    And     Click on button "Registrovať"
    And     Verify "Používatelia" tab is active
    And     Click on button "Obnoviť"
    And     Find user with changed details
    And     Select user with changed details
    And     Click on button "Odstrániť používateľa"
    And     Click on button "Odstrániť"
    And     Verify "Používatelia" tab is active
    And     Click on button "Obnoviť"
    And     Find user with changed details
    And     Verify user was deleted
    And     Select from menu tab "Odhlásiť"
    Then    Verify Login page is present

    Examples:

      | BROWSER | PAGE     | USERNAME | PASSWORD      | PINCODE | USER  |
      | Chrome  | Cestavon | admin    | Testcestavon1 | 1111    | Admin |



