import 'package:counter_app/controllers/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Counter cnt = Get.put(Counter());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(cnt.counter.toString()),
            ),
          ),
          ElevatedButton(
            onPressed: cnt.incrementer,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
