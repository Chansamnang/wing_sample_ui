import 'package:flutter/material.dart';

import '../../utils/color.dart';

class HomeMarketCustomWidget extends StatefulWidget {
  const HomeMarketCustomWidget({Key? key}) : super(key: key);

  @override
  State<HomeMarketCustomWidget> createState() => _HomeMarketCustomWidgetState();
}

class _HomeMarketCustomWidgetState extends State<HomeMarketCustomWidget> {
  final double _width = 100.0;
  final double _height = 80.0;
  Widget _buildContainer(IconData icon, String text) {
    return Container(
      width: _width,
      color: whiteColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 30,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildContainer(Icons.shopping_bag, 'វីងម៉ល'),
          _buildContainer(Icons.save_alt, 'សន្សំ'),
          _buildContainer(Icons.download, 'កម្ចី'),
          _buildContainer(Icons.receipt, 'របាយការណ៍ឥនទាន'),
          _buildContainer(Icons.shopping_cart, 'ការទិញទំនិញអនឡាញ'),
          _buildContainer(Icons.cast_for_education, 'ការអប់រំ'),
          _buildContainer(Icons.drive_eta, 'ការដឹកជញ្ជូន'),
          _buildContainer(Icons.shopping_cart, 'សប្បុរសធម័'),
          _buildContainer(Icons.movie, 'ការកំសាន្ត'),
          _buildContainer(Icons.delivery_dining, 'សេវាកម្មដឹកជញ្ជូន'),
        ],
      ),
    );
  }
}
