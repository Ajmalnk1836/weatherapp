import 'package:get/get.dart';
import 'package:weatherapp/app/data/models/weathermode/main.dart';
import 'package:weatherapp/app/data/models/weathermode/weathermode.dart';
import 'package:weatherapp/app/data/services/services.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final String? city;
  String? SerachText;

  Weathermode currentweatherData = Weathermode();
  Weathermode data = Weathermode();
  List<Weathermode> weatherList = [];
   List<Main> fiveDaysData = [];


  HomeController({this.city});

  final count = 0.obs;
  @override
  void onInit() {
    initState();
    getTopFivecities();
    getFivedayData();
   // WeatherServices(city: "$city").getFuvedaysTHreehouresforecastDatas();
    super.onInit();
  } 

  void initState() {
    getcurrentWeather();
  }

  void getcurrentWeather() {
    WeatherServices(city: "$city").getCurrentweatherData(
        onSuccess: (data) {
          currentweatherData = data;
          update();
        },
        OnError: (error) => {
              print(error),
              update(),
            });
  }

  void getTopFivecities() {
    List<String> cities = ["London", "Newyork", "Paris", "Mosco", "Tokyo"];
    cities.forEach((c) {
      WeatherServices(city: c).getCurrentweatherData(
        onSuccess: (data){
          weatherList.add(data);
          update();
        },
        OnError: (error)=>{
          print("error"),
          update()
        }
      );
     });
  }
  void getFivedayData(){  
    WeatherServices(city: '$city').getFuvedaysTHreehouresforecastDatas(
        onSuccess: (data) {
      fiveDaysData = data;
      update();
    }, OnError: (error) {
      print(error);
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

