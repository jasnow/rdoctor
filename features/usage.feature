Feature: rdoctor

  Scenario: '--help' argument
    When I run `rdoctor --help`
    Then it should pass with:
"""
Usage: rdoctor [ b ] [ 1 ] [ m ]
    -- No arguments check following technologies (very quick)
        -- rvm rails bundle brew gem psql mysql sqlite3 git ruby heroku
        -- travis xcode
    -- 'b' add 'brew doctor' run too. (mac only)
    -- '1' add one-line env output too.
    -- 'm' add multiple-line env output too.
"""

 ## Then the stdout should contain "sqlite3 NOT installed"
  Scenario: no arguments
    When I run `rdoctor`
    Then the stderr should contain "travis.yml: No such file or directory"
    Then the stderr should contain "config/database.yml: No such file or directory"
    Then the stderr should contain "rvmrc"

## Then the stdout should contain "sqlite3 NOT installed"
  Scenario: '1' (one) argument
    When I run `rdoctor 1`
    Then the stderr should contain "travis.yml: No such file or directory"
    Then the stderr should contain "config/database.yml: No such file or directory"
    Then the stderr should contain "rvmrc"
    Then the stdout should contain "ruby:"

## Then the stdout should contain "sqlite3 NOT installed"
## Then the stdout should contain "BREW ENV:"
  Scenario: 'm' (multi-line) argument
    When I run `rdoctor m`
    Then the stderr should contain "travis.yml: No such file or directory"
    Then the stderr should contain "config/database.yml: No such file or directory"
    Then the stderr should contain "rvmrc"
    Then the stdout should contain "RVM ENV:"
    Then the stdout should contain "BUNDLE CONFIG:"
    Then the stdout should contain "BUNDLE CHECK:"
    Then the stdout should contain "BUNDLE OUTDATED:"

## Then the stdout should contain "sqlite3 NOT installed"
  Scenario: 'b' (add brew doctor; long time to run) argument
    When I run `rdoctor b`
    Then the stderr should contain "travis.yml: No such file or directory"
    Then the stderr should contain "config/database.yml: No such file or directory"
    Then the stderr should contain "rvmrc"
    #### Then the stdout should contain "BREW DOCTOR"
