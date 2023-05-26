import 'package:flutter/material.dart';
import 'package:flutter_01/data/location.dart';
import 'package:flutter_01/data/network.dart';
import 'package:flutter_01/screens/weather_screen.dart';

const apiKey = "1a3d909027e5b03886c45fa1de204d3e";

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double? latitude3;
  double? longitude3;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location currentLocation = Location();
    await currentLocation.getCurrentLocation();
    latitude3 = currentLocation.latitude2;
    longitude3 = currentLocation.longitude2;

    NetWork network = NetWork(
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longitude3&appid=$apiKey&units=metric");
    var weatherData = await network.getJsonData();
    print(weatherData);

    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeatherData: weatherData,
      );
    }));
  }

  // Future<void> fatchData() async {
  //   http.Response response = await http.get(Uri.parse(
  //       "https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longitude3&appid=$apiKey"));
  //   if (response.statusCode == 200) {
  //     String jsonData = response.body;
  //     var parsingData = jsonDecode(jsonData);

  //     var myJson = parsingData['weather'][0]['description'];
  //     print(myJson);
  //   }

  //   print(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: () {
          getLocation();
        },
        child: Text('Get my location!!!'),
      )),
    );
  }
}
