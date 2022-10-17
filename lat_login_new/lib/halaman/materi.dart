import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/videoupdatemateri.dart';
import 'package:lat_login_new/halamanloginvalidasi.dart';

class Materi extends StatefulWidget {
  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
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
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade900, Colors.purple],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Text(
                  "Materi IPA",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(left: 8),
                color: Colors.white,
                alignment: Alignment.topLeft,
                child: Text(
                  "Berikut ini adalah kumpulan materi IPA (K13, KTSP)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 19),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Stack(
                      children: [
                        //tumpukkan container 1 paling bawah
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("images/gravitasi.jpg"))),
                        ),
                        //kalau mau bisa diplay,pasang library
                        //video dan pakai widget gesture detector
                        //nempatin gesture detector di play
                        //videonya
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              //color: Colors.yellow,
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 3.0)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Videoupdatemateri(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 28, top: 13),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Icon(
                              Icons.play_arrow,
                              size: 45,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text("Jenis Hewan Ovipar dan Ovovivipar"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
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
            BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: "user")
          ]),
    );
  }
}
