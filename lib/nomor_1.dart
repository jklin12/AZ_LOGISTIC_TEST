import 'package:flutter/material.dart';

class NomorSatu extends StatefulWidget {
  const NomorSatu({super.key});

  @override
  State<NomorSatu> createState() => _NomorSatuState();
}

class _NomorSatuState extends State<NomorSatu> {
  List<String> namaKota = [
    'Kota Surabaya',
    'kota Medan',
    'kab. Malang',
    'Kab. Sidoarjo',
    'KOTA JAKARTA',
    'KAB.',
    'Banyuwangi',
    'KOTA',
    'Banjarmasin',
    'kab. Gresik',
  ];

  //soal nomor 1 pont A
  void pointA(List<String> array) {
    print(array.reversed.toList());
  }

  //soal nomor 1 pont B
  List<String> pointB(List<String> array) {
    List<String> arrKota = [];
    array.forEach((element) {
      if ((element.toLowerCase()).contains("kota")) {
        arrKota.add(element);
      }
    });
    return arrKota;
  }

  //soal nomor 1 pont C
  List<String> pointC(List<String> array) {
    List<String> arrKota = [];
    array.forEach((element) {
      String tolower = element.toLowerCase();
      if ((tolower).contains("kab")) {
        String replace = tolower.replaceAll('kab.', "K");
        //print(replace);
        arrKota.add(replace);
      }
    });
    return arrKota;
  }

  @override
  void initState() {
    pointA(namaKota);
    print(pointB(namaKota));
    print(pointC(namaKota));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jawaban Nomor 1"),
      ),
    );
  }
}
