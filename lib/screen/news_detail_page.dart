import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_news_app/controller/controller.dart';

// ignore: must_be_immutable
class NewsDetailPage extends StatelessWidget {
   NewsDetailPage({super.key,required this.index});
COntroller controller = Get.put(COntroller());
int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 400,
                height: 250,
                child: Image.network(
                  controller.newsList[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                controller.newsList[index].title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding:const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   controller.newsList[index].author,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                     controller.newsList[index].publishedAt,
                    style:const TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: SizedBox(
                width: 400,
                child: Text(
                 controller.newsList[index].description ,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
