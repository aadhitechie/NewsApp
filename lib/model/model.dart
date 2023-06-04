import 'dart:core';

class Model {
  final String author;
  final String title;
  final String description;
  final String imageUrl;
  final String publishedAt;
  final SourceModel sourceModel;

  Model(
     {
    required  this.publishedAt,
    required this.author,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.sourceModel,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        author: json['author'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        imageUrl: json['urlToImage'] ?? '',
        publishedAt:json['publishedAt']??'',
        sourceModel: SourceModel.fromJson(json), 
      );
}

class SourceModel {
  final String id;
  final String name;

  SourceModel({
    required this.id,
    required this.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> json) => SourceModel(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
      );
}
