import 'package:flutter/material.dart';

class News {
  final String newsId;
  final String name;
  final String url;

  News({@required this.newsId, @required this.name, @required this.url});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      newsId: json['news_id'],
      name: json['name'],
      url: json['url'],
    );
  }
}

