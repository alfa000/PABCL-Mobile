import 'package:get/get.dart';
import 'package:my_movie/app/service/movie_service.dart';

class DetailController extends GetxController with StateMixin<dynamic> {
  //TODO: Implement DetailController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    MovieService().fetchMovieDetail(Get.arguments).then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
