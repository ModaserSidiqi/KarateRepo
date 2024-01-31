Feature: TEK Insurance Post Account API

  Background:
    Given url 'https://qa.insurance-api.tekschool-students.com'
    * def tokenGenerator = call read('generateToken.feature@GenerateToken')
    * def getTokenValue = tokenGenerator.response.token
    * header Authorization = 'Bearer ' + getTokenValue


  Scenario: Post an Account - Primary Person
    * path '/api/accounts/add-primary-account'
    * request
      """
      {
  "id": 0,
  "email": "karateApiLecture22@tekschool.us",
  "firstName": "karate1",
  "lastName": "Api1",
  "title": "Mr.",
  "gender": "MALE",
  "maritalStatus": "MARRIED",
  "employmentStatus": "Student",
  "dateOfBirth": "2000-01-01",
  "new": true
      }
      """
    * method post
    * status 201
    * print response