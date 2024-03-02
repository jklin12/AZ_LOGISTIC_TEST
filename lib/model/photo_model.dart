
import 'dart:convert';

PhotoModel laporanListModelFromJson(String str) => PhotoModel.fromJson(json.decode(str));

class PhotoModel {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  PhotoModel(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

      factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
        albumId: json['albumId'], 
        id: json['id'], 
        title: json['title'], 
        url: json['url'], 
        thumbnailUrl: json['thumbnailUrl'], 
      );
}
