import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    try {
      var weatherData = await WeatherModel().getLocationWeather();

      // Check if context is still valid before navigating
      if (mounted) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        }));
      }
    } catch (e) {
      // Handle error, you could show an error screen or alert
      print("Error getting weather data: $e");

      if (mounted) {
        // Navigate to an error screen or show an error message
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child:
                  Text('Error fetching weather data. Please try again later.'),
            ),
          );
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
