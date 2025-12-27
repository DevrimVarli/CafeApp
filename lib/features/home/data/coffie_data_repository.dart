import 'dart:convert';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coffie_data_repository.g.dart';

@riverpod
Future<List<CoffieModel>> coffieDataRepository(Ref ref) async {
  Dio dio = Dio();
  Response<dynamic> response = await dio.get(
    'https://gist.githubusercontent.com/DevrimVarli/c97358fe29f7e217e2eef4df394a193e/raw',
  );

  if (response.statusCode == 200) {
    // response.data'nın bir String olduğunu varsayarak jsonDecode kullanıyoruz
    dynamic decodedData = jsonDecode(response.data.toString());

    // Şimdi ayrıştırılmış verinin Map olduğundan eminiz
    Map<String, dynamic> data =
        decodedData
            as Map<String, dynamic>; // 2. Decode edilmiş veriyi Map'e cast et

    List<dynamic> result = data['products'] as List<dynamic>;
    // ... (rest of your code)
    return result
        .map((dynamic e) => CoffieModel.fromJson(e as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Beklenmeyen veri formatı: ${response.statusCode}');
  }
}
