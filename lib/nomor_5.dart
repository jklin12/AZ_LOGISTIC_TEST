import 'package:az_logistic_test/model/photo_model.dart';
import 'package:flutter/material.dart';

class NomorLima extends StatelessWidget {
  const NomorLima({super.key, required this.photoModel});

  final PhotoModel photoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)),
                child: ListTile(
                  leading: Image.network(
                    photoModel.thumbnailUrl!,
                    width: 50,
                  ),
                  title: Text("${photoModel.id!}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(photoModel.title!),
                      Text("${photoModel.albumId!}"),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //border: Border.all(color: Colors.grey),
                  image: DecorationImage(
                      image: NetworkImage(photoModel.url!), fit: BoxFit.cover)),
            ),
          )
        ],
      )),
    );
  }
}
