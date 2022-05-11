import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeImageSlider extends StatefulWidget {
  const HomeImageSlider({Key? key}) : super(key: key);

  @override
  State<HomeImageSlider> createState() => _HomeImageSliderState();
}

class _HomeImageSliderState extends State<HomeImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> imgPath = [
      'assets/banner.jpeg',
      'assets/banner.jpeg',
      'assets/banner.jpeg',
      'assets/banner.jpeg',
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 130.0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
      items: imgPath.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                i,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
