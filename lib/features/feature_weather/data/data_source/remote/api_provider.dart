import 'package:clean_block/core/utils/constants.dart';
import 'package:dio/dio.dart';



//زمانی که بخواهیم از معماری کیلین استفاده کنیم باید فقط دریافت کنیم از سرورددیو
//curent weather api call
class ApiProvider{
 final Dio _dio = Dio();

 var apikey = Constants.apiKeys1;
 //اب و هوای اون شهررا به ما میدهد
 Future<dynamic>callCurentWeather(cityName) async {
    var response =await _dio.get(
      '${Constants.baseUrl}/data/2.5/weather',
       queryParameters: {
        'q': cityName,
        'appid':apikey,
        // این برای برچه واحدی حساب کند که درداکیومنت هم گذاشته که اب وهوارابررحسب سیلیسیوس میدهد
        'units':'metric',
       }
    );
    print(response.data);
    return response;
 }
}