# API Docs

## Classical

User + Session are done via server-rendered erb

ROOT (/): Sign In / Sign Up

POST /users create a new user, redirect to ROOT
POST /session creates a new session and redirect to SPA

--

## JSON

GET /session will return JSON object with current user

GET /restaurants will return array of restaurant logs

```json
  {
    restaurants: [
    {
      name: "ABC",
      rest_type: "Japanese",
      address: "NYC",
      dined_at: "11-11-2011",
      rating: 4,
      comments: "Great sushi"
    }
    ]
  }
```

POST /restaurants will take a JSON object such as:

```json
  {
    authenticity_token: "dkjafkald;jfkdsjfio;ajfdk243",
    restaurant: {
      name: "some name",
      rest_type: "type of rest",
      address: "location",
      dined_at: "date",
      rating: "number from 1-5",
      comments: "some comment"
    }
  }
```

and return the created object
