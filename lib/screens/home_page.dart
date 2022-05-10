import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home/financial_custom_widget.dart';
import 'package:flutter_application_1/widgets/home/main_card_custom_widget.dart';
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
      backgroundColor: greyColor,
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
      body: Stack(
        children: [
          const MainCardCustomWidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 95, 0, 0),
            child: Container(
              child: const Text(
                'សេវាហិរញ្ញវត្ថុ',
                style: TextStyle(color: blueColor),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: HomeFinancialCustomWidget(),
          ),
        ],
      ),
      drawer: const SizedBox(width: 275, child: MainDrawer()),
    );
  }
}
