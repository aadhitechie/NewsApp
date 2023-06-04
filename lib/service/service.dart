import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sample_news_app/common.dart/api.dart';
import 'package:sample_news_app/model/model.dart';

class Service {
  Dio dio = Dio();
  // ignore: body_might_complete_normally_nullable
  Future<List<Model>?> ServiceClass() async {
    try {
      Response response = await dio.get(api);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return (response.data['articles'] as List).map((e) => Model.fromJson(e)).toList();
      }
      return null;
    }on DioError catch (e) {
      log(e.message.toString());
    }
  }
}
