import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  final String? weatherCode;
  final double size;
  final Widget? child;

  const WeatherImage({
    required this.weatherCode,
    this.size = 48.0,
    this.child,
  });

  String getIconAsset() {
    // Map weather condition codes to corresponding icon assets
    switch (weatherCode) {
      case '01d':
        return 'Assets/sunrise.jpg';
      case '02d':
        return 'Assets/daycloudy.jpg';
      case '03d':
      case '04d':
        return 'Assets/cloudy.jpg';
      case '09d':
      case '10d':
        return 'Assets/rainy.jpg';
      case '11d':
        return 'Assets/thunder.jpg';
      case '13d':
        return 'Assets/snow.jpeg';
      case '50d':
        return 'Assets/fog.jpg';
      default:
        return 'Assets/sunrise.jpg'; // Default icon
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(getIconAsset()),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
