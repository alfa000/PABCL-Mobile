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
              Image.network("https://image.tmdb.org/t/p/w500" +
                  data.posterPath.toString()),
              Text(
                data.originalTitle.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                data.title.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Rating :" + data.voteAverage.toString(),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(
                "Release Date :" + data.releaseDate.toString(),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text("Overview :"),
              Text(
                data.overview.toString(),
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
