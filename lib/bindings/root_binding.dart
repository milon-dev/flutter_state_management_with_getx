import 'package:get/get.dart';

import '../controllers/list_controller.dart';
import '../controllers/tap_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapController>(() => TapController());
    Get.lazyPut<ListController>(() => ListController());
  }
}