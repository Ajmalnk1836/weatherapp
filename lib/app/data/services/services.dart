import 'package:weatherapp/app/data/apis/api_repos.dart';
import 'package:weatherapp/app/data/models/weathermode/weathermode.dart';

class WeatherServices {
  final String city;

  String baseUrl = "https://api.openweathermap.org/data/2.5";
  String apikey = "apiid=eb478e091ba487768836168e6215557d";
  //https://api.openweathermap.org/data/2.5/weather?q=Tokyo&appid=eb478e091ba487768836168e6215557d
  // String baseUrl = "https://api.openweathermap.org/data/2.5";   
  // String apikey = "apiid=eb478e091ba487768836168e6215557d";
  WeatherServices({required this.city});

  void getCurrentweatherData(
      {Function()? beforeSend,
      Function(Weathermode currentweatherData)? onSuccess,
      Function(dynamic error)? OnError}) {
        final url = "https://api.openweathermap.org/data/2.5/weather?q=Tokyo&appid=eb478e091ba487768836168e6215557d";
        //'$baseUrl/weather?q=$city&$apikey';   
        print("url = $url");
        Apirepositery(url: url,payload: null).get(
          beforeSend: () => {
            if(beforeSend != null){
              beforeSend()
            }
          },
          onSuccess: (data) => {
            onSuccess!(Weathermode.fromJson(data)),

          },
          onError: (error) =>{
            if(OnError != null){
              print(error),
              OnError(error)
            }
          }
         
        );
      }

       void getTopfivecities(
      {Function()? beforeSend,
      Function(dynamic currentweatherData)? onSuccess,
      Function(dynamic error)? OnError}) {}

       void getFuvedaysTHreehouresforecastDatas(
      {Function()? beforeSend,
      Function(dynamic currentweatherData)? onSuccess,
      Function(dynamic error)? OnError}) {}
}
