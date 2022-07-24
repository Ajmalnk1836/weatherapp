import 'package:get/get.dart';
import 'package:weatherapp/app/data/models/weathermode/weathermode.dart';
import 'package:weatherapp/app/data/services/services.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final String? city;
   String? SerachText;

  Weathermode currentweatherData = Weathermode();

  HomeController({ this.city});

  final count = 0.obs;
  @override
  void onInit() {
    initState();
    super.onInit();
  }

  void initState() {
    WeatherServices(city: "$city").getCurrentweatherData(onSuccess: (data) {
      currentweatherData = data; 
      update(); 
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
