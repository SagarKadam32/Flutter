import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.baseUrl, this.partUrl, this.body);

  final String baseUrl;
  final String partUrl;
  final Map<String, String> body;

  Future getData() async {
    var url = Uri.https(baseUrl, partUrl, body);

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
