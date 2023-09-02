//عشان تهندل الموديل الي هيجي من ال home repo
import 'package:dio/dio.dart';

class ApiService{
  final _baseurl='https://www.googleapis.com/books/v1/';
  late final Dio dio;
  ApiService(this.dio);
  //request for data
  Future<Map<String,dynamic>>get ({required String endPoint})async{
   var response=  await dio.get('$_baseurl $endPoint');
   return response.data;
  }
}