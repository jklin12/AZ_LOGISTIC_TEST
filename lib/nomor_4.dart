import 'dart:convert';
import 'dart:io';

import 'package:az_logistic_test/model/photo_model.dart';
import 'package:az_logistic_test/nomor_5.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NomorEmpat extends StatefulWidget {
  const NomorEmpat({super.key});

  @override
  State<NomorEmpat> createState() => _NomorEmpatState();
}

class _NomorEmpatState extends State<NomorEmpat> {
  final String url = 'https://jsonplaceholder.typicode.com/albums/1/photos';
  bool isLoading = true;
  late List<PhotoModel> listPhoto;

  void getData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == HttpStatus.ok) {
      final body = jsonDecode(response.body);
      setState(() {
        listPhoto = (body as List).map((e) => PhotoModel.fromJson(e)).toList();
        isLoading = false;
      });
      print(listPhoto.length);
    } else {
      const snackBar = SnackBar(
        content: Text('Gagal memuat data'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: listPhoto.length,
                  itemBuilder: (context, index) {
                    return PhotoCard(photoModel: listPhoto[index]);
                  },
                )),
    );
  }
}

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key, required this.photoModel});
  final PhotoModel photoModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NomorLima(photoModel: photoModel))),
            leading: Image.network(
              photoModel.thumbnailUrl!,
              width: 50,
            ),
            title: Text("${photoModel.id!}"),
            subtitle: Text(photoModel.title!),
          )),
    );
  }
}
