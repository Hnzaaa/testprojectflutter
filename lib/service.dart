import 'dart:convert';

import 'package:http/http.dart' as http;

class Restapi {  
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMzA4MTAyMzExMDBiMWUwOWYwNTc0OTI4Y2IwMWIzNDdmNDcyZmU0ZGJkM2UwNTZmYjUwOTg2MzNhNjg5ZWRmOTJkZWFhMTBhNzVmMDJhMTYiLCJpYXQiOjE2NzQyOTY1NzUuMzQ2NzU0LCJuYmYiOjE2NzQyOTY1NzUuMzQ2NzU2LCJleHAiOjE3MDU4MzI1NzUuMzQ0MjMxLCJzdWIiOiIzNjYiLCJzY29wZXMiOltdfQ.xWgsv4g7W6sLiVAggIcgk1ISTh6ADc_Lwsnef0kSwm_1K6TtrNbgnsbQQl5_7lGunPE8jgvAJALXh5znDmwIa-r4ku3nDfSbdHPGU6QQYmhANJ3qPxRrIsRSOV1qIRB2mJ09W_KJbt_twaeeqNrbcJusQpC8R-M7FpIHO_fwMvtSujHRcT1TmRVkEco5id3gm6a4v9ww6mbu5sqKWp0vSLwmJgF2fl2r0j9oG6x8L6JrcD2Ulq4BfUbJV5uIZngMTohGHI5e3q5GnscDUaIqUngfBNP1G0OrcSak59oKojL9NAg0evzKo5dGIZKI3hB03q_PK7KPlEZzgLX8qUsfSVYJgtlAd5yfo76k-gqLfuU371Nf4aHDz9VYxldIFCyWcTzFsMwLMHsxfkRWJF-rgzt1pY28CuQiTtiIFE5gOV2UbqXXqajBuNADi5NkJM03Xcbf_EUNQ0ujJBdmJDfXBXFkh3zp408bO3QRR6ZjpMo0VjO9wIv6FI-2KjnnlJ7loHRsbiap6ABjUQcGzhWPzDTl0LNYtiy9wZdWWmzaY4QDWZiZDfxGryX5AkFu3ArYCDOXyY90lykbs8L053BGTC2bYyQMAON5hAkCMhbRQdYvxywmtn24u7WD_WV0KpkME_SEcUzHW8vKl_PMXradDrNZ9NZ1VYY-8mveAhPG_Ug';
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

  Future post({required Uri url, Map? body}) async {
    try {
      final response = await http.post(url,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
          body: body);
      return json.decode(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
