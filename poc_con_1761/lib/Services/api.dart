import 'dart:convert';
import 'package:poc_con_1760/Models/event.dart';
import 'package:http/http.dart' as http;

Future<List<Event>> fetchEvents() async {
  final response = await http.get(Uri.parse('http://10.0.2.2'));
  var json = jsonDecode(response.body)['data'] as List;
  return json.map((eventJson) => Event.fromJson(eventJson)).toList();
}
