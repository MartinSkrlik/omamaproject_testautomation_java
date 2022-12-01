@CreateAdminUser
Feature: CestaVon - Create New Admin User


  Scenario Outline: CestaVon - Login with valid credentials and create new admin user

    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>"
    And     Click on button "Zaregistrovať zariadenie"
    And     Select from menu tab "Používatelia"
    And     Click on button "Pridať"
    And     Registry new "Admin" user and save details
    Then    Confirm Registration
    And     Verify "Používatelia" tab is active
    And     Click on button "Obnoviť"
    And     Input new created username into meno search bar and select
    Then    Verify details new created user
    And     Click on button "Odstrániť používateľa"
    Then    Click on button "Odstrániť"

    Examples:

      | BROWSER | PAGE     | USERNAME | PASSWORD      | PINCODE |
      | Chrome  | Cestavon | admin    | Testcestavon1 | 1111    |


