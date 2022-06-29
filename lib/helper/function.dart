import 'dart:convert';

import 'package:http/http.dart' as http;

fetchdata() async {
  // http.Response response = await http.get(Uri.parse(url));
  // return response.body;

  var request =
      http.Request('GET', Uri.parse('http://10.0.2.2:5000/api?query'));
  request.body = '''''';

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var datafinal = await response.stream.bytesToString();
    var data = jsonDecode(datafinal);
    return data;
  } else {
    print(response.reasonPhrase);
  }
}
