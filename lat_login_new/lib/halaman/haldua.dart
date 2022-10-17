import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/halsatu.dart';

class Haldua extends StatefulWidget {
  // const Haldua({ Key? key }) : super(key: key);

  @override
  State<Haldua> createState() => _HalduaState();
}

class _HalduaState extends State<Haldua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Haldua"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali Ke Awal")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Halsatu()));
                  },
                  child: Text("Ke Halamn Satu"))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            //agar si bottom  barnya mau berubah warna
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue.shade900,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade400,

            //agar labelnya enggak muncul
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "a"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection), label: "b"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "c"), //utk evaluasi / rapor siswa
              BottomNavigationBarItem(icon: Icon(Icons.edit), label: "d"),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_alt),
                label: "user",
              )
            ]),
      ),
    );
  }
}
