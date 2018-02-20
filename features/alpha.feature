Feature: Hello Cucumber
As a product mangaer


# @javascript
Scenario: user click all in the dictionary page
Given That I am on the options page of the dictionary
Then I click the All option
Then I will see The Fist word with A and the Last word with Z


Scenario: user clicks the 'A' option in the dictionary page
Given That I am on the options page of the dictionary
Then I click the ,A, option
Then I will see no words that the first letter is not ,A,


Scenario: user clicks the 'C' option in the dictionary page
Given That I am on the options page of the dictionary
Then I click the ,C, option
Then I will see no words that the first letter is not ,C,

Scenario: user clicks the 'Z' option in the dictionary page
Given That I am on the options page of the dictionary
Then I click the ,Z, option
Then I will see no words that the first letter is not ,Z,



Scenario: As an admin I want to create a word into the database
