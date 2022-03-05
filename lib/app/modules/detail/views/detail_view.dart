import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.put(DetailController());

    return Scaffold(
        appBar: AppBar(
          title: Text('My Movie'),
          centerTitle: true,
        ),
        body: controller.obx(
          (data) => Wrap(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "https://image.tmdb.org/t/p/w500" + data['poster_path'],
                      width: 390,
                      height: 400,
                      fit: BoxFit.fill),
                  Text(
                    data['original_title'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rating :" + data['vote_average'].toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Release Date :" + data['release_date'],
                    style: TextStyle(fontSize: 14),
                  ),
                  Text("Overview :"),
                  Text(
                    data['overview'],
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
