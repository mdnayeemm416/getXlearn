import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/pages/counter.dart';
import 'package:getx_learn/pages/getxRoutes.dart';
import 'package:getx_learn/pages/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => SnackbarWedget()),
        GetPage(name: "/route", page: () => MyWidget())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterWidget(),
    );
  }
}
