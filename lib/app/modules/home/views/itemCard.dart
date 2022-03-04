import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_movie/app/modules/detail/views/detail_view.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.movie_id,
    required this.judul,
    required this.rating,
    required this.release_date,
    required this.image,
  }) : super(key: key);
  final String movie_id;
  final String judul;
  final String rating;
  final String release_date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Get.to(() => DetailView(), arguments: movie_id);
          },
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: Row(
              children: [
                Image.network(image),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Rating :" + rating,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Text(
                      "Release Date :" + release_date,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
