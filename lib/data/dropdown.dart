import 'dart:convert';

import 'package:http/http.dart' as http;

class Restapi {
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNWE5NmVmNjdmODkwYzQ1OTI4YTBmODQ3NjJkMWE4ZmZlNWEwMmU2YWQwMmI3NGYzODZlNGFiNWMwMmFkZDA3MWZkOWViODUyMTJlNjdjMGQiLCJpYXQiOjE2NzU0MDY5NzMuMDA1MjY5LCJuYmYiOjE2NzU0MDY5NzMuMDA1MjcxLCJleHAiOjE3MDY5NDI5NzMuMDAyOTUxLCJzdWIiOiIzNzgiLCJzY29wZXMiOltdfQ.ibUQkqDc4BNqI4gZjLYMlNK2TuwrmlQYJJwuppELXI9VK_heV1yoDsLb8LPz1V7sA4nalTjLzsimCKHKkjS3iLKL-8P4OA1Vcl2Up6-WZSfZYIWdm9rmLdIscXpkChIIG1vs0up_-foGmxZ04GnW2b64ezTqARsQxhggMT8GmK4oLDnVfmuhz4iOSyu5Ao-I7Q8KAPlBgJwnAHDkeN6E3iqmRsJeJzVC1J5Dz_oPsIjreBQymb69PoITQmDQfdmn75gCZgFRCCAxP6IHmMkjmOc-nNdpaLQK2JukTnA82Hanku_oJvxfpaLKFM4Q_lncmGsrBLnwtqZXB6f2dcHVDEC5CjRZxj_O1NP9GXc0ANLkZFumxy0qo6mRGIYEWZFPhkwIUxaznTvdIwwFfyOUdgBl0KB0xItHFvHUiHvbUd8pIADSZj_p4WCrYu4Eg0PRa53iFPNfG_gadtv5ahhlHwkTu5vqq8-NC2GnKaP27e1YpvTvmPj62CXiEK3yq2m1BVr12xljkfHVifm1_LVZY4ZNzVvb-6C4AOgnRGXOlyeFo7qzxuciz3VSnG1z_hMIPXivFN1yUEYLRJ3_8kl3K2WydMc4LgZl6uTkmu1Be2TSDsT-_Haw0jrAKanqtFPTcZnWftJqmKHHo5J6kLT1uH06J5S_ZnyZoi-Jrk425iY';

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
