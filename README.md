

A Flutter Package to help developers with API Integrations.

## Features

This package has a Function called apiHit is made which takes the paramters as request,url,path and token (for authorization). 
The parameter token,body is not required.



## Usage

String token = preferences.getString("token");
Map<String,dynamic> data = {

};
var response  = await apiHit("GET","http://10.2.2.1:5000","/getBooks",token,body);