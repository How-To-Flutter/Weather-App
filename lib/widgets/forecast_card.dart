import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class ForecastCard extends StatelessWidget {
  ForecastCard(
      {super.key,
      required this.hour,
      required this.averageTemp,
      required this.description,
      required this.descriptionIMG});

  String hour;
  String description;
  String descriptionIMG;
  double averageTemp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(18, 255, 255, 255)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hour,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          Container(
            height: 70,
            width: 70,
            color: Color.fromARGB(0, 0, 0, 0),
            child: (Image.network(
              descriptionIMG,
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(height: 10),
          Text(
            '$averageTemp°',
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(139, 255, 255, 255),
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
