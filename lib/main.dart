import 'package:color_animation/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final int factor = 90;
  final controller = ColorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Animation'),
        actions: [
          IconButton(
              onPressed: () {
                controller.animate();
              },
              icon: const Icon(Icons.start))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Obx(() => Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / factor,
              color: controller.color1,
            )),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.height / factor,
                    color: controller.color4,
                  )),
              Obx(() => Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.height / factor,
                    color: controller.color2,
                  )),
            ],
          ),
        ),
        Obx(() => Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / factor,
              color: controller.color3,
            )),
      ]),
    );
  }
}
