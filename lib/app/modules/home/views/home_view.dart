import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data?.length,
          itemBuilder: ((context, index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        data![index]['picture']['large'],
                      ),
                    ),
                    title: Text(
                      data[index]['name']['title'] +
                          "" +
                          data[index]['name']['first'] +
                          "" +
                          data[index]['name']['last'],
                    ),
                    subtitle: Text(
                      data[index]['email'],
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "Age : " + data[index]['dob']['age'].toString(),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
