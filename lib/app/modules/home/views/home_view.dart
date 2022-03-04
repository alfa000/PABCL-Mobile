import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_movie/app/data/movie_models.dart';
import 'package:my_movie/app/modules/home/views/itemCard.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final data = MovieList();
    return Scaffold(
        appBar: AppBar(
          title: Text('My Movie'),
          centerTitle: true,
        ),
        body: controller.obx((data) => ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) => ItemCard(
                movie_id: data[index]['id'].toString(),
                judul: data[index]['title'],
                rating: data[index]['vote_average'].toString(),
                release_date: data[index]['release_date'],
                image: "https://image.tmdb.org/t/p/w500" +
                    data[index]['poster_path'],
              ),
            )));
  }
}
