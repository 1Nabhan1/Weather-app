import 'package:get/get.dart';
import 'package:weather_app/presentation/Weather_Page/controller/Weather_controller/weather_controller.dart';

class Weather_binding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => WeatherController());
  }
}
