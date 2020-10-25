@Web
Feature: Google Search

 

  @WebResultsList
  Scenario: Search Quantum with results
    Given I am on Google Search Page
    When I search for "perfecto quantum starter kit"
    Then it should have following search results:
      | Quantum-Starter |
      | Perfecto-Quantum |

  @WebDD
  Scenario Outline: Search Keyword Inline Data
    Given I am on Google Search Page
    When I search for "<searchKey>"
    Then it should have "<searchResult>" in search results

    Examples:
      | recId | recDescription 	| searchKey               | searchResult                  |
      | 2     | Second Data Set 	|perfecto quantum starter kit | GitHub |

 