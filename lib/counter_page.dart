import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.put(
    CounterController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Counter')),
      body: Center(
        child: Obx(
          () => Text(
            'Count: ${controller.count}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: controller.decrement,
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            heroTag: "increment",
            onPressed: controller.increment,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
