import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarWedget extends StatefulWidget {
  const SnackbarWedget({super.key});

  @override
  State<SnackbarWedget> createState() => _SnackbarWedgetState();
}

class _SnackbarWedgetState extends State<SnackbarWedget> {
  String name = "nayeem";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Get.snackbar("Error", "Learning getx",
            //     animationDuration: const Duration(seconds: 1));
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Sure Log in ",
                  middleText: "Please select Yes for Log IN else cancel",
                  onConfirm: () {
                    Get.toNamed("/route", arguments: [name]);
                  },
                  onCancel: () => Get.back(),
                );
              },
              child: Text("Dialog Box"),
            ),
            Container(
                child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    icon: Icon(Icons.dark_mode)),
                IconButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.light());
                    },
                    icon: Icon(Icons.light_mode)),
              ],
            )),
          ],
        ));
  }
}
