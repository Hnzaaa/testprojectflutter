import 'dart:convert';

import 'package:http/http.dart' as http;

class Restapi {
  //get..........................................................
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiOTk5YzNhMTU2YTVlMzU1N2MzZTE1NmE4OWE1MzJjMjc4ZjAzZjQ5ZWQ2NzI0ZGZiYTVjYjIzZTEyOTFjNzEwMzgyOTY1OGIxNzM3MDBmNmEiLCJpYXQiOjE2NzQ0NDYxNjIuNzUyMTIsIm5iZiI6MTY3NDQ0NjE2Mi43NTIxMjMsImV4cCI6MTcwNTk4MjE2Mi43NDk1NDIsInN1YiI6IjM0NCIsInNjb3BlcyI6W119.h9zRJI0WqC9wHgHro6OxJ6JERwoS1UXsVEDlPrgmqx40XttFwoq1GnUBzSSVe4s2aFEJXCk0dBUqY8BklITPuZQn5CbZyYPpYgMExo0TaflnjQ8U4VZt06Hn7gCvD3Wh0rwC-M0qcJMHm7OMISZPTfjT8VdT_tSrrGjC2wx0T4yPhBtJa9waP5T8eIU1K4Ww_xh1xDGjwKfhMBB_lA2596imtYbm4zpI8amM1tFPmDx7hNnIgNPA7LDxIENTnQbqOcZrhBnk72iQTmA81KwS02moWaZ-wG78gVlPYb153J6_WpD4nWv3obYZuNNZHIX3HdKIVpCtEGkGgedO312ybq5gqWpKAiJc6AMkRJyH5G234pON3Cm1dEFaGdM1VBE86eopDQXyqvqSgLHSh2GtIJmKqrETZbUMD6MK0C7v1recNLO169qpDlBpOrdCSLlFgF9d3BnqjPTcFfeLgybtTFE-S_vcmDKGM-OZWmOzVI7O_F0QGYUK8CGVF-mfHUtDwdvxKFsEa5ZrJ_ADJY1iQ3fxWjPFajPiRmyJwvgwv3KT63NK5R_lesdq2gvGgdfmQRHjElwEnjkUj4DIuhykOoPLSmUG3uS_TdqPJL6DY7Pc8X6FrO9236tnK-Jx6NHjJU5U9_IwDEkrFjDOmdhEK7SMvGqWsa7MREAAQ2XFTFI';
  Future get({required Uri url}) async {
    try {
      final response = await http.get(url, headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      // ignore: avoid_print
      print(response);
      return json.decode(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
