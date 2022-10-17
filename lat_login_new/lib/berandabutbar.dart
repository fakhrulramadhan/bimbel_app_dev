import 'dart:ui';

import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _indexTerpilih = 0; //_ bersifat private,utk menentukan index pagenya

  //buat variabel tetap / static utk textstyle
  static const TextStyle opsiStyle =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600);

  //buat variabel widget, utk menentukan tampilan di body setiap page indexnya
  static const List<Widget> _opsiWidget = <Widget>[
    Text(
      "Index Ke 0 Beranda",
      style: opsiStyle,
    ),
    Text(
      "Index Ke 1 Materi",
      style: opsiStyle,
    ),
    Text(
      "Index Ke 2 Nilai Ujian",
      style: opsiStyle,
    )
  ];

  //buat fungsi ketikaditekan (merubah tampilan screen)
  //_  = private
  void _ketikadiTekan(int index) {
    setState(() {
      _indexTerpilih = index; //indexterpilih didapatkan dari idex
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Beranda dengan bottom nav"),
      ),
      body: Center(
        //diisi dengan teks (salah satu index) yang diambil
        //dari variabel opsiwidget
        //elementat => pada element => pada materi looping
        child: _opsiWidget.elementAt(_indexTerpilih),
      ),
      //pakai botnavbar
      bottomNavigationBar: BottomNavigationBar(
        //botnavbar item, <> berupa list
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Materi"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Nilai")
        ],
        //index yang sekarang diambil dari terpilih
        currentIndex: _indexTerpilih,
        //warna icon yang terpiih, warna orange
        selectedItemColor: Colors.orange.shade800,
        //ketika ditekan, panggil fungsi _ketikaditekan
        onTap: _ketikadiTekan,
      ),
    );
  }
}
