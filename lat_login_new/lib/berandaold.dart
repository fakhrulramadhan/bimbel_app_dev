import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Beranda"),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 140,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context); //mundur ke 1 screen sebelumnya
              },
              child: Text("Selamat Datang",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
        ));
  }
}
