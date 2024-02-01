import 'package:get/get.dart';

class Counter extends GetxController {
  RxInt counter = 0.obs;
  void incrementer() => counter++;
}
