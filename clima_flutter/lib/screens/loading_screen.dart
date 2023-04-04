import 'package:flutter/material.dart';
import 'package:clima_flutter/services/location.dart';
import 'package:clima_flutter/services/networking.dart';

const apiKey = 'ce1a9cc18151f66808efbf60cd527aaf';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude = 0.0;
  double longitude = 0.0;
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'api.openweathermap.org',
        '/data/2.5/weather',
        {'lat': '$latitude', 'lon': '$longitude', 'appid': '$apiKey'});

    var weatherData = await networkHelper.getData();
    double temperature = weatherData['main']['temp'];
    int condition = weatherData['weather'][0]['id'];
    String cityName = weatherData['name'];

    print(temperature);
    print(condition);
    print(cityName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getData() async {
    //  http.Response response = await http.get(
    //  'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$apiKey');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
