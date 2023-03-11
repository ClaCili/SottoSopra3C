import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> images = [
    "lib/assets/img1.jpg",
    "lib/assets/img2.jpg",
    "lib/assets/img3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              height: 300.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                child: Image.asset(images[index], fit: BoxFit.cover,),
              );
            },
          )
        ],
      )
      );
  }
}