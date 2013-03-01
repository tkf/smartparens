Feature: Autoinsert pairs
  In order to type less
  As a user
  I want to insert pairs automatically

  Scenario: M-RET at beginning of buffer in org-mode
    Given I add a local pair "*/*" on "org-mode"
      And I turn on org-mode
      And I insert:
       """
       * Header
       """
      And I go to beginning of buffer
      And I turn on smartparens
     When I press "<M-return>"
      And I type "New header"
     Then I should see:
       """
       * New header
       * Header
       """
