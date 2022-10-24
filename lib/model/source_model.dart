import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SourceModel {
  String? id;
  String? name;
  SourceModel({
    this.id,
    this.name,
  });

  factory SourceModel.fromMap(Map<String, dynamic> map) {
    return SourceModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }
}
