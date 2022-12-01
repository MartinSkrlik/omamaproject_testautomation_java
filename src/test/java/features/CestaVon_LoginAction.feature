@LoginTest
Feature: CestaVon - Login Action

  @Positive
  Scenario Outline: CestaVon - Login with valid credentials - admin - positive

    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>" and click zaregistrovat zariadenie
    Then    Verify odhlasit button is visible and click odhlasit

    Examples:

      | BROWSER | PAGE     | USERNAME | PASSWORD      | PINCODE |
      | Chrome  | Cestavon | admin    | Testcestavon1 | 1111    |

  @Positive
  Scenario Outline: CestaVon - Login with valid credentials - supervisor - positive

    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>" and click zaregistrovat zariadenie
    Then    Verify odhlasit button is visible and click odhlasit

    Examples:

      | BROWSER | PAGE     | USERNAME        | PASSWORD       | PINCODE |
      | Chrome  | Cestavon | supervizor_test | Supervizor1234 | 1111    |

  @Positive
  Scenario Outline: CestaVon - Login with valid credentials - mentor - positive

    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>" and click zaregistrovat zariadenie
    Then    Verify odhlasit button is visible and click odhlasit

    Examples:

      | BROWSER | PAGE     | USERNAME    | PASSWORD   | PINCODE |
      | Chrome  | Cestavon | mentor_test | Mentor1234 | 1111    |

  @Positive
  Scenario Outline: CestaVon - Login with valid credentials - omama - positive

    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    And     Input pin code "<PINCODE>" and click zaregistrovat zariadenie
    And     Click on menu button
    Then    Verify odhlasit button in menu is visible and click odhlasit

    Examples:

      | BROWSER | PAGE     | USERNAME   | PASSWORD  | PINCODE |
      | Chrome  | Cestavon | omama_test | Omama1234 | 1111    |

  @Negative
  Scenario Outline: CestaVon - Login with lock-outed user - negative
    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Login user with username SECURE "<USERNAME>" and password SECURE "<PASSWORD>"
    Then    Verify odhlasit button is not visible
    And     Verify error message is visible

    Examples:

      | BROWSER | PAGE     | USERNAME        | PASSWORD        |
      | Chrome  | Cestavon | locked_out_user | locked_out_user |
