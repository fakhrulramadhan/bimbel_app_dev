import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/profil.dart';
import 'package:lat_login_new/halamanloginvalidasi.dart';

class BeliPaket extends StatefulWidget {
  @override
  State<BeliPaket> createState() => _BeliPaketState();
}

class _BeliPaketState extends State<BeliPaket> {
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
                "Menu Utama",
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
                ListTile(
                  leading: Icon(Icons.people_alt),
                  title: Text("Profil"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profil(),
                        ));
                  },
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
          Stack(
            children: [
              Container(
                height: 340,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade100,
                ),
              ),
              Container(
                height: 310,
                width: 300,
                color: Colors.transparent,
                margin: EdgeInsets.only(left: 20, top: 20, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage("images/wisudaremove.png"))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        "Paket Nyaman, Belajarmu Tenang",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      height: 70,
                      color: Colors.transparent,
                      child: Text(
                        "Pilihan Paket yang beragam, tersedia disinin",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Hemat Kelas 3 SD 3 Bulan"),
            subtitle: Text("Rp.120.000"),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Hemat Kelas 3 SD 6 Bulan"),
            subtitle: Text("Rp.220.000"),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Hemat Kelas 3 SD 1 Tahun"),
            subtitle: Text("Rp.400.000"),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Si Rajin Kelas 3 SD 3 Bulan"),
            subtitle: Text("Rp.200.000"),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Si Rajin 3 SD 6 Bulan"),
            subtitle: Text("Rp.370.000"),
            tileColor: Colors.grey.shade200,
          ),
          ListTile(
            leading: Icon(Icons.money_rounded),
            title: Text("Paket Si Rajin Kelas 3 SD 1 Tahun"),
            subtitle: Text("Rp500.000"),
            tileColor: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }
}
