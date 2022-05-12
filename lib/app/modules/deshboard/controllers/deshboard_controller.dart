import 'package:get/get.dart';

class DeshboardController extends GetxController {
  //TODO: Implement DeshboardController


  var tabIndex = 0.obs;
  void changeTabIndex(int index){
    tabIndex.value = index;

    print("tabIndex=> "+tabIndex.toString());
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
