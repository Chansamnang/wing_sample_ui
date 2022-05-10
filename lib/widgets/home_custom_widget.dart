import 'package:flutter/material.dart';

class HomeCustomWidget extends StatefulWidget {
  const HomeCustomWidget({Key? key}) : super(key: key);

  @override
  State<HomeCustomWidget> createState() => _HomeCustomWidgetState();
}

class _HomeCustomWidgetState extends State<HomeCustomWidget> {
  Widget buildCard(String imgSrc, String text) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgSrc),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 8.5),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      childAspectRatio: 1.15,
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
      children: <Widget>[
        buildCard("assets/wing_card.png", "គណនី"),
        buildCard("assets/wing_card.png", "កម្មវិធី WingPoints"),
        buildCard("assets/wing_card.png", "ចំណូលចិត្ត"),
        buildCard("assets/wing_card.png", "ទីតាំងភ្នាក់ងារវីង"),
      ],
    );
  }
}
