import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_movie/app/data/movie_details.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.put(DetailController());
    final data = MovieDetail();

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.originalTitle.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("Rating :"),
              Text("Release :"),
              Text("Overview"),
              Text("aaa"),
            ],
          ),
        ],
      ),
    );
  }
}
