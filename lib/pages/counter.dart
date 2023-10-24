import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/getxcontroller/GetxController.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  final CountController cntroller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Counter"),
            backgroundColor: Theme.of(context).primaryColor),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            cntroller.IncreaseNumber();
          },
          child: Icon(Icons.add),
        ),
        body: Obx(
          () => Center(
              child:
                  Text("Count Number" + '  ' + cntroller.Num.value.toString())),
        ));
  }
}
