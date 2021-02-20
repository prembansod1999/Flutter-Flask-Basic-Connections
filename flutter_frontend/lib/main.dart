import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  fetchData();
}

void fetchData() async {
  final response = await http.get('https://97e7faf0cd55.ngrok.io/');

  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}
