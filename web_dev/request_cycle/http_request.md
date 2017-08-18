1. Status Codes
    * 200 All good
    * 201 Created
    * 204 No content
    * 400 Bad request
    * 401 Unathorized
    * 403 Forbidden
    * 404 Not found
    * 409 Conflict
    * 500 Internal server error

2.What is the difference between a GET request and a POST request? When might each be used?

* GET - Requests data from a specified resource
* POST - Submits data to be processed to a specified resource

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

It is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.