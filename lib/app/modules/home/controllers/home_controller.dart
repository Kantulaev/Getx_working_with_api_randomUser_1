import 'package:flutter_application_2_api_1/app/modules/home/providers/user_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    UserProvider()
        .getUser()
        .then((value) => change(value, status: RxStatus.success()))
        .onError((error, stackTrace) =>
            change(null, status: RxStatus.error(error.toString())));
  }


  @override
  void onClose() {}
  void increment() => count.value++;
}
