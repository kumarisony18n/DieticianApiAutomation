Feature: UsersAPI

  Scenario: Validate GetUsers with wrong credentials
    Given Initilize base uri with wrong credentials
    When Get request is sent with endpoint as "/Users/"
    Then Verify statuscose is 401 unauthorised

  Scenario: Validate GetUsers with correct authentication
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive data with endpoint as "/Users/"
    Then API should return all User records with success code 200

  Scenario Outline: Get request is to retrive specific user using contact
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive specific user data with endpoint as "/Users/Contact={contact}" from given sheetname "<sheetName>" and rownumber <RowNumber>
    Then API should return record for specific user with success code 200

    Examples: 
      | SheetName | RowNumber |
      | Get       |         0 |

  Scenario Outline: Get request is to retrive specific user using DieticianId
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive specific user data with endpoint as "/Users/DieticianId={DieticianId}" from given sheetname "<sheetName>" and rownumber <RowNumber>
    Then API should return record for specific user with success code 200

    Examples: 
      | SheetName | RowNumber |
      | Get       |         1 |

  Scenario Outline: Get request is to retrive specific user using email
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive specific user data with endpoint as "/Users/Email={Email}" from given sheetname "<sheetName>" and rownumber <RowNumber>
    Then API should return record for specific user with success code 200

    Examples: 
      | SheetName | RowNumber |
      | Get       |         1 |

  Scenario Outline: Get request is to retrive specific user using FirstName
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive specific user data with endpoint as "/Users/FirstName={FirstName}" from given sheetname "<sheetName>" and rownumber <RowNumber>
    Then API should return record for specific user with success code 200

    Examples: 
      | SheetName | RowNumber |
      | Get       |         1 |

  Scenario Outline: Get request is to retrive specific user using UserType
    Given UsersAPI is up and running for authorised user
    When User sends Get request to retrive specific user data with endpoint as "/Users/FirstName={FirstName}" from given sheetname "<sheetName>" and rownumber <RowNumber>
    Then API should return record for specific user with success code 200

    Examples: 
      | SheetName | RowNumber |
      | Get       |         1 |

  Scenario Outline: Post request is to create new user record
    Given UsersAPI is up and running for authorised user
    When User sends post request with valid inputs from given sheetname "<SheetName>" and rownumber <RowNumber> and enpoint as "/Users/"
    Then New user record is created with success code 200

    Examples: 
      | SheetName | RowNumber |
      | post      |         0 |
      | post      |         1 |
      | post      |         3 |
      | post      |         4 |
      | post      |         5 |
      | post      |         6 |
      | post      |         7 |
      | post      |         8 |
      | post      |         9 |
      | post      |        10 |

  Scenario Outline: Put request is to update existing user record
    Given UsersAPI is up and running for authorised user
    When User sends put request with valid inputs from given sheetname "<SheetName>" and rownumber <RowNumber> and endpoint "​/Users​/DieticianId={DieticianId}&UserId={UserId}"
    Then User record is successsfully updated with successcode 200

    Examples: 
      | SheetName | RowNumber |
      | put       |         1 |

  Scenario Outline: delete request is to delete existing user record
    Given UsersAPI is up and running for authorised user
    When User sends delete request with valid inputs and endpoint as "/Users/DieticianId={DieticianId}&UserId={UserId}" from given sheetname "<SheetName>" and rownumber <RowNumber>
    Then User record is successsfully deleted with successcode 200

    Examples: 
      | SheetName | RowNumber |
      | Delete    |         0 |
