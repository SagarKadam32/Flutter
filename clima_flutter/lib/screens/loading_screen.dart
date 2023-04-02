import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:clima_flutter/services/location.dart';
import 'package:http/http.dart' as http;

const apiKey = 'ce1a9cc18151f66808efbf60cd527aaf';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    getData();
  }

  void getData() async {
    //  http.Response response = await http.get(
    //  'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$apiKey');

    var url = Uri.https('api.openweathermap.org', '/data/2.5/weather',
        {'lat': '35', 'lon': '139', 'appid': '$apiKey'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];

      print(temperature);
      print(condition);
      print(cityName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
