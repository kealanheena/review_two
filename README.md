# Review Two

This is my Second review at Makers.

## Challenge

Create an app that acts as a Bandpass Filter. it passes frequencies within a certain range and rejects frequencies outside that range. It takes a high limit and low limit, any frequency above the high limit get replaced with the high limit and any frequency below the low limit geta replaced with the low limit. e.g.
```
High Limit: 110
Low Limit: 90

[80, 90, 100, 110, 120]

This will return:
[90, 90, 100, 110, 110]
```

## User Stories

```
As a user,
So I can change frequencies that are too low,
I would like low frequencies to be replaced with the low limit.

As a user,
So I can change frequencies that are too high,
I would like high frequencies to be replaced with the high limit.
```


## Features

- filter out low frequencies and replace them with the low limit
- filter out high frequencies and replace them with the high limit


## Tech Used

- Ruby
- Rspec
- Rubocop

## Getting Started

This app is used in the terminal:

You can run it in IRB and create an instance of BandPassFilter and then pass it an array of intergers, a low limit and a high limit and it will return all the numbers adjusting them to be in that range if needed.


## Running The Tests
You can run tests by running rspec in the terminal in the review_two directory.

### Test Coverage

- Unit Tests
  - should return an array
  - if no numbers are below the low limit and above the high limit
    - should return the same array
  - should change a number to the low limit if it is below the low limit
  - should change a number to the high limit if it is above the high limit

## Versioning
review_two uses rubocop version 0.71.0 running bundle install will install rubocop version 0.71.0.
