Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: Sequence is initialized and next value returned twice
    Given a fibonacci sequence initialized to 2
    Then the next number should be 3
    And the next number should be 5

  Scenario: Sequence is initialized and next value returned, then skipped
    Given a fibonacci sequence initialized to 5
    Then the next number should be 8
    When the sequence is skipped 2 times
    Then the state should be "The current number is 21"

  Scenario: Sequence is initialized and skipped, then next value returned
    Given a fibonacci sequence initialized to 3
    When the sequence is skipped 4 times
    Then the state should be "The current number is 21"
    And the next number should be 34

  Scenario: Initialized with a string
    When a fibonacci sequence initialized to "Howdy"
    Then an error is thrown

  Scenario: Initialized with an illegitimate integer 
    Given a fibonacci sequence initialized to 4
    Then an error is thrown
  
  Scenario: Initialized with an illegitimate integer then skipped
    Given a fibonacci sequence initialized to 4
    Then an error is thrown
    When the sequence is skipped 2 times
    Then an error is thrown

  Scenario: Sequence is initialized and skipped, then next value returned and skipped again
    Given a fibonacci sequence initialized to 5
    When the sequence is skipped 3 times
    Then the next number should be 34
    When the sequence is skipped 2 times
    Then the state should be "The current number is 89"

  