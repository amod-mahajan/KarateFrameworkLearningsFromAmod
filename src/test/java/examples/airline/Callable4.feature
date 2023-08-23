Feature: This feature will be called in to other feature file

  @success
  Scenario: Callable scenario1
    Given url 'https://api.sirv.com/v2/token'
    When request __arg
    Then method post

    @failure
  Scenario: Callable scenario2
    Given url 'https://api.sirv.com/v2/token1'
    When request __arg
    Then method post