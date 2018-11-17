# README

The problem requires me to build a restfull api that has a GET method to return a generated random number and a POST method to allow the user to set the seed for random number generation.

I created a Number model that has upper_bound and lower_bound as attributes. When a Get request is received from the controller, the controller will generate a random number by using the rand() method, pass the result to the view and renders a json response.
