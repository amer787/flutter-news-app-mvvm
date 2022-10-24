// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'source_model.dart';

class ArticleModel {
  SourceModel? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticleModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      source: map['source'] != null
          ? SourceModel.fromMap(map['source'] as Map<String, dynamic>)
          : null,
      author: map['author'] != null ? map['author'] as String : "Author null",
      title: map['title'] != null ? map['title'] as String : "title Null",
      description: map['description'] != null
          ? map['description'] as String
          : "description Null",
      url: map['url'] != null
          ? map['url'] as String
          : "https://www.foxnews.com/world/kyiv-rocked-explosions-week-after-russian-strikes-across-ukraine",
      //
      //
      urlToImage: map['urlToImage'] != null
          ? map['urlToImage'] as String
          : "https://images.unsplash.com/photo-1665931500523-98ae696c47f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      publishedAt: map['publishedAt'] != null
          ? map['publishedAt'] as String
          : "publishedAt Null",
      content:
          map['content'] != null ? map['content'] as String : "content Null",
    );
  }
}
