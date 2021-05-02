import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news/model.dart' as News;
import 'package:news/model.dart';

import 'fetch.dart';
import 'news.dart';
import 'package:http/http.dart' as http;
import 'NewsListView.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
            child: NewsListView()
        ),
      ),
    );
  }
}
