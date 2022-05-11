import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home/financial_custom_widget.dart';
import 'package:flutter_application_1/widgets/home/image_slider.dart';
import 'package:flutter_application_1/widgets/home/main_card_custom_widget.dart';
import 'package:flutter_application_1/widgets/home/market_custom_widget.dart';
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
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 335, 0, 0),
            child: Text(
              'ផ្សារ',
              style: TextStyle(color: blueColor),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 360, 0, 0),
            child: HomeMarketCustomWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 450, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ប្រូម៉ូសិន',
                  style: TextStyle(color: blueColor),
                ),
                Row(
                  children: const [
                    Text(
                      'បង្ហាញទាំងអស់',
                      style: TextStyle(color: greenColor),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: greenColor,
                    )
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 480, 0, 0),
            child: HomeImageSlider(),
          )
        ],
      ),
      drawer: const SizedBox(width: 275, child: MainDrawer()),
    );
  }
}
