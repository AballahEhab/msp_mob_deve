import 'package:flutter/material.dart';

class Meeting {
  final String name;
  final String time;
  final String content;
  final List images;
  final Color iconBackground;
  final Icon icon;
  const Meeting(
      {this.name,
      this.time,
      this.content,
      this.images,
      this.icon,
      this.iconBackground});
}

const List<Meeting> meetings = [
  Meeting(
      name: "Work Shop",
      time: "2019 - 12 - 1",
      images: [
        "images/WorkShop/0.jpeg",
        "images/WorkShop/1.jpeg",
        "images/WorkShop/2.jpeg",
      ],
      icon: Icon(
        Icons.laptop,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.blueGrey),
  Meeting(
      name: "Online Meeting",
      time: "2019 - 11 - 20",
      images: [
        "images/OnlineMeeting/0.png",
        "images/OnlineMeeting/1.png",
        "images/OnlineMeeting/2.png"
      ],
      icon: Icon(
        Icons.videocam,
        color: Colors.white,
      ),
      iconBackground: Colors.blueGrey),
  Meeting(
      name: "Our First Meeting",
      time: "2019 - 11 - 1",
      images: [
        "images/FirstMeeting/0.jpg",
        "images/FirstMeeting/1.jpg",
        "images/FirstMeeting/2.jpg"
      ],
      icon: Icon(
        Icons.map,
        color: Colors.white,
        size: 32.0,
      ),
      iconBackground: Colors.blueGrey),
];
