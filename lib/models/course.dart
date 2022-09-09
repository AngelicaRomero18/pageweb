import 'package:flutter/cupertino.dart';

class Course {
  late String title;
  late Color backgroundColor;
  late Color iconColor;
  late Color backgroundIconColor;
  late String image;

  Course.fromJson(Map json)
      : title = json['title'],
        backgroundColor = json['backgroundColor'],
        iconColor = json['iconColor'],
        backgroundIconColor = json['backgroundIconColor'],
        image = json['image'];
}
