
import 'package:cafe_app/features/adress/domain/city_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_data_repository.g.dart';

@riverpod
Future<List<CityModel>> cityDataRepository(Ref ref) async {
  Dio dio = Dio();
  Response<dynamic> response = await dio.get('https://api.turkiyeapi.dev/v1/provinces');

  if (response.statusCode == 200) {
    Map<String, dynamic> data = response.data as Map<String, dynamic>;   
    List<dynamic> result = data['data'] as List<dynamic>;              
    return result.map((dynamic e) => CityModel.fromJson(e as Map<String,dynamic>)).toList();
  } else {
    throw Exception('Beklenmeyen veri formatı: ${response.statusCode}');
  }
}
