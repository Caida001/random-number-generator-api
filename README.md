# README

The problem requires me to build a restfull api that has a GET method to return a generated random number and a POST method to allow the user to set the seed for random number generation.

I created a Number model that has upper_bound and lower_bound as attributes. When a Get request(api/numbers/:id) is received from the controller, the controller will generate a random number by using the rand() method, pass the result to the view and renders a json response. Also I created an api_controller to force the response to be in json format, so user can send a request without the .json suffix. As for the POST request(api/numbers) the params upper_bound and lower_bound are validated in the model. If saved correctly, the user will be able to access the record by id. All requests are being authenticated by using JsonWebToken, user must have valid credentials to send a request, otherwise the request is invalidated, specifics please see the comments in the file.  
