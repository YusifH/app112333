
import 'package:dio/dio.dart';

var dio = Dio()..options = BaseOptions(
  baseUrl: 'https://dummyjson.com',
  contentType: 'application/json'
);