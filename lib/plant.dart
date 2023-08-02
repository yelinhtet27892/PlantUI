import 'package:flutter/material.dart';

class Plant {
  final String text1;
  final String text2;
  final String text3;
  final String img;

  Plant(
      {required this.text1,
      required this.text2,
      required this.text3,
      required this.img});
}

List<Plant> plantList() {
  List<Plant> plant = [];

  plant.add(Plant(
      text1: 'SAMANTHA',
      text2: '\$400',
      text3: 'RUSSIA',
      img: 'images/p4.jpg'));

  plant.add(Plant(
      text1: 'ANGELICA',
      text2: '\$540',
      text3: 'RUSSIA',
      img: 'images/p5.jpg'));

  plant.add(Plant(
      text1: 'SAMANTHA',
      text2: '\$800',
      text3: 'RUSSIA',
      img: 'images/p3.jpg'));
  return plant;
}

List<Plant> featurePlantList() {
  List<Plant> fpl = [];

  fpl.add(Plant(
      text1: 'ANGELIACA',
      text2: '\$400',
      text3: 'RUSSIA',
      img: 'images/fp1.jpg'));

  fpl.add(Plant(
      text1: 'SAMANTHA',
      text2: '\$540',
      text3: 'RUSSIA',
      img: 'images/fp2.jpg'));

  fpl.add(Plant(
      text1: 'ANGELICA',
      text2: '\$800',
      text3: 'RUSSIA',
      img: 'images/fp3.jpg'));
  return fpl;
}
