import 'package:az_logistic_test/nomor_1.dart';
import 'package:az_logistic_test/nomor_2.dart';
import 'package:az_logistic_test/nomor_3.dart';
import 'package:az_logistic_test/nomor_4.dart';
import 'package:flutter/material.dart';

class ListSoal extends StatelessWidget {
  const ListSoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          SoalButton(
              title: "Jawaban Nomor 1. ",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NomorSatu(),
                    ));
              }),
          SoalButton(
              title: "Jawaban Nomor 2. ",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NomorDua(),
                    ));
              }),
          SoalButton(
              title: "Jawaban Nomor 3. ",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NomorTiga(),
                    ));
              }),
          SoalButton(
              title: "Jawaban Nomor 4 & 5 . ",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NomorEmpat(),
                    ));
              })
        ],
      )),
    );
  }
}

class SoalButton extends StatelessWidget {
  const SoalButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Center(
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: Text(title)),
      ),
    );
  }
}
