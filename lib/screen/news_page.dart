import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_news_app/controller/controller.dart';
import 'package:sample_news_app/widget/newstile.dart';

// ignore: must_be_immutable
class NewsPage extends StatelessWidget {
   NewsPage({super.key});
COntroller controller = Get.put(COntroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<COntroller>(
            init: controller,
            builder: (controller) {
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: controller.newsList.length,
                  itemBuilder: (context, i) {
                    return  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: NewsTile(controller: controller,index: i,),
                    );
                  });
            }
          )),
    );
  }
}
