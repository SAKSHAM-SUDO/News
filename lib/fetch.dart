import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news/model.dart';
Future<List<News>> fetchNews() async {

  final response = await http.get(Uri.parse("https://hubblesite.org/api/v3/news"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((job) => new News.fromJson(job)).toList();
  } else {
    throw Exception('Failed to load jobs from API');
  }
}