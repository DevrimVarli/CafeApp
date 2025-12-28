import 'dart:convert';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'stores_data_repository.g.dart';

@riverpod
Future<List<StoresModel>> storesDataRepository(Ref ref) async {
  Dio dio = Dio();
  Response<dynamic> response = await dio.get(
    'https://gist.githubusercontent.com/DevrimVarli/c97358fe29f7e217e2eef4df394a193e/raw',
  );

  if (response.statusCode == 200) {
    dynamic decodedData = jsonDecode(response.data.toString());

    Map<String, dynamic> data =
        decodedData
            as Map<String, dynamic>; 

    List<dynamic> result = data['stores'] as List<dynamic>;
    return result
        .map((dynamic e) => StoresModel.fromJson(e as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Beklenmeyen veri formatı: ${response.statusCode}');
  }
}
