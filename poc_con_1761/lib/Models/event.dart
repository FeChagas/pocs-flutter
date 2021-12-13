import 'package:mobx/mobx.dart';

class Event with Store {
  final String cover;
  final String title;
  final String address;
  final String date;

  Event(
      {required this.cover,
      required this.title,
      required this.address,
      required this.date});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        cover: json['cover'],
        title: json['title'],
        address: json['address'],
        date: json['date']);
  }
}
