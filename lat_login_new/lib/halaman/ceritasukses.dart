import 'package:flutter/material.dart';
import 'package:lat_login_new/halamanloginvalidasi.dart';

class Certiasukses extends StatefulWidget {
  @override
  State<Certiasukses> createState() => _CertiasuksesState();
}

class _CertiasuksesState extends State<Certiasukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //jangan pakai leading,mau diganti sama drawer
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        title: Text(
          "Learning kuy",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFF05589C),
        actions: [
          Icon(
            Icons.people_alt,
            color: Colors.white,
          )
        ],
      ),
      //menu di sebelah kiri
      drawer: Drawer(
        child: Column(
          //align secara horizontal
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //judul harus tetap pakai container, agar tetap berada diatas
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue.shade900,
              alignment: Alignment.center,
              child: Text(
                "Cerita Sukses",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            //isi pakai expanded agar kebawahnya tidak overflow, (tidak terhingga)
            //dan juga pakai listview agar bia discroll kebawah
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.video_library_rounded),
                  title: Text("Materi Belajar"),
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Laporan Nilai"),
                ),
                ListTile(
                  leading: Icon(Icons.people_alt),
                  title: Text("Konsultasi Materi"),
                ),
                ListTile(
                  leading: Icon(Icons.forum),
                  title: Text("Cerita Sukses"),
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Beli Paket"),
                ),
                // SizedBox(
                //   height: 200,
                // ),
                ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text("Logout Akun"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HalamanLoginValidasi(),
                        ));
                  },
                )
              ],
            ))
          ],
        ),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid),
                      image: DecorationImage(
                          image: AssetImage("images/anaksd.jpg"))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 80,
                child: Text(
                  "Siska, Anak Putus Sekolah yang sukses memanfaatkan beasiswa",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //isi berita
              Container(
                width: 400,
                height: 400,
                padding: EdgeInsets.only(top: 15, left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                  ],
                ),
              )
            ],
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          //supaya labelnya enggak muncul
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue.shade900,
          //item yang kepilih menjadi warna putih
          selectedItemColor: Colors.white,
          //item yang enggak kepilih menjadi warna abu
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "a"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: "b"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "c"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "d"),
            BottomNavigationBarItem(icon: Icon(Icons.people_alt))
          ]),
    );
  }
}
