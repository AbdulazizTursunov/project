import 'package:flutter/material.dart';

class ProductInfoFields {
  static const List<String> values = [];
  static const String id = '_id';
  static const String article = 'article';
  static const String barcode = 'barcode';
  static const String name = 'name';
  static const String price = 'price';
  static const String measure = 'measure';
  static const String brend = 'brend';
  static const String department = 'department';
  static const String category = 'category';
  static const String image = 'image';

  static const tableName = 'product';
}

class ProductInfo {
  int id;
  String article;
  String barcode;
  String name;
  int price;
  String measure;
  String brend;
  String department;
  String category;
  String image;

  ProductInfo.initial()
      : this(
          id: 0,
          article: '',
          barcode: '',
          name: '',
          price: 0,
          measure: '',
          brend: '',
          department: '',
          category: '',
          image: '',
        );

  ProductInfo copyWith({
    int? id,
    String? article,
    String? barcode,
    String? name,
    int? price,
    String? measure,
    String? brend,
    String? department,
    String? category,
    String? image,
  }) =>
      ProductInfo(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category ?? this.category,
        price: price ?? this.price,
        article: article ?? this.article,
        barcode: barcode ?? this.barcode,
        brend: brend ?? this.brend,
        department: department ?? this.department,
        measure: measure ?? this.measure,
        image: image ?? this.image,
      );

  factory ProductInfo.fromJson(Map<String, dynamic> json) => ProductInfo(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        category: json['category'] as String? ?? '',
        price: json['price'] as int? ?? 0,
        article: json['article'] as String? ?? '',
        barcode: json['barcode'] as String? ?? '',
        brend: json['brend'] as String? ?? '',
        department: json['department'] as String? ?? '',
        measure: json['measure'] as String? ?? '',
        image: json['image'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'article': article,
        'barcode': barcode,
        'name': name,
        'price': price,
        'measure': measure,
        'brend': brend,
        'department': department,
        'category': category,
        'image': image,
      };

  @override
  String toString() {
    return ''' 
    id: $id
   article:$article
   barcode:$barcode
   name:$name
   price:$price
   measure:$measure
   brend:$brend
   department:$department
   category:$category
   image: $image
    ''';
  }

  ProductInfo({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.article,
    required this.barcode,
    required this.brend,
    required this.department,
    required this.measure,
    required this.image,
  });
}
