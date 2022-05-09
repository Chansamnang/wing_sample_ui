import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home_custom_widget.dart';
import 'package:flutter_application_1/widgets/main_drawer.dart';

import '../utils/color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_on),
              onPressed: () {},
            ),
            Image.asset(
              'assets/splash.png',
              width: 100,
              fit: BoxFit.cover,
            ),
          ],
        ),
        backgroundColor: greenColor,
      ),
      body: const HomeCustomWidget(),
      drawer: const SizedBox(width: 275, child: MainDrawer()),
    );
  }
}
