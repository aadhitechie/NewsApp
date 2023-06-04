import 'package:get/get.dart';
import 'package:sample_news_app/service/service.dart';

import '../model/model.dart';

class COntroller extends GetxController {
  bool isLoading = false;
  List<Model> newsList = [];
  COntroller() {
    getNews();
  }
  Future<void> getNews() async {
    Service().ServiceClass().then((value) {
      if (value != null) {
        newsList = value;
        update();
      }
    });
  }
}
