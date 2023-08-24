import 'package:flutter/material.dart';

class Post {
  final String accountName;
  final String city;
  final String country;
  List<Image> pictures;
  String description;
  List<String> hashtags;
  int picturesNum;

  Post(
      {required this.accountName,
      required this.city,
      required this.country,
      required this.pictures,
      required this.picturesNum,
      required this.description,
      required this.hashtags});
}
