import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArticlesListModel {
  List<dynamic>? articles;
  ArticlesListModel({
    this.articles,
  });

  factory ArticlesListModel.fromMap(Map<String, dynamic> map) {
    return ArticlesListModel(articles: map['articles']);
  }
}
