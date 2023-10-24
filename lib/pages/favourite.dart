import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/getxcontroller/GetxController.dart';

class FavouriteItems extends StatefulWidget {
  const FavouriteItems({super.key});

  @override
  State<FavouriteItems> createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {
  @override
  Widget build(BuildContext context) {
    final itemController controller = Get.put(itemController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Items"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
          itemCount: controller.Fruits.length,
          itemBuilder: (context, index) {
            return Obx(() => Card(
                  child: ListTile(
                    title: Text(controller.Fruits[index].toString()),
                    trailing:
                        controller.Fruitlist.contains(controller.Fruits[index])
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
                    onTap: () {
                      if (!(controller.Fruitlist.contains(
                          controller.Fruits[index]))) {
                        controller.additem(controller.Fruits[index]);
                      } else {
                        controller.removeItem(controller.Fruits[index]);
                      }
                    },
                  ),
                ));
          }),
    );
  }
}
