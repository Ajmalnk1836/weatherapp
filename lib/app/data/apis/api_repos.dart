import 'package:dio/dio.dart';


class Apirepositery {
  final String url;
  final Map<String,dynamic>? payload;

  Apirepositery({required this.url, required this.payload});

  final Dio _dio = Dio();

  void get(
      {Function()? beforeSend,
      Function(dynamic data)? onSuccess,
      Function(dynamic data)? onError}) {
    _dio
        .get(this.url, queryParameters: this.payload)
        .then((response){
              if (onSuccess != null) {onSuccess(response.data);}
            })
        .catchError((error) {
      if (onError != null) {
        onError(error);
      }
    });
  }
}
