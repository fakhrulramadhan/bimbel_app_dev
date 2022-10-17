import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/belipaket.dart';
import 'package:lat_login_new/halaman/ceritasukses.dart';
import 'package:lat_login_new/halaman/materitab.dart';
import 'package:lat_login_new/halaman/profil.dart';
import 'package:lat_login_new/halamanloginvalidasi.dart';
import 'haldua.dart';

//masukkin page update video materi
import 'videoupdatemateri.dart';
import './materi.dart';

class Halsatu extends StatefulWidget {
  @override
  State<Halsatu> createState() => _HalsatuState();
}

class _HalsatuState extends State<Halsatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BeliPaket(),
                        ));
                  },
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

      //body nya dapat dari fungsi pages dan berdasarkan indexnya
      // Container(
      //   width: 500,
      //   height: 500,
      //   color: Colors.blue,
      // ),
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
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left: 15),
                color: Colors.white,
                child: Text(
                  "Halo Siswa",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.white,
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Mau Belajar apa hari ini?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Materi(),
                                      ));
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      //width / 2 agar bisa bulat sempurna
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/indonesia.png"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                width: 80,
                                height: 90,
                                //color: Colors.blue,
                                child: Text(
                                  "Bahasa Indonesia",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Materitab(),
                                ));
                          },
                          child: Container(
                            width: 100,
                            height: 150,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      //width / 2 agar bisa bulat sempurna
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/tabungkimias.png"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  width: 80,
                                  height: 90,
                                  //color: Colors.blue,
                                  child: Text(
                                    "IPA",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    //width / 2 agar bisa bulat sempurna
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage("images/globe.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                width: 80,
                                height: 90,
                                //color: Colors.blue,
                                child: Text(
                                  "IPS",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    //width / 2 agar bisa bulat sempurna
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage("images/math.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                width: 80,
                                height: 90,
                                //color: Colors.blue,
                                child: Text(
                                  "Matematika",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    //width / 2 agar bisa bulat sempurna
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage("images/english.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                width: 80,
                                height: 90,
                                //color: Colors.blue,
                                child: Text(
                                  "Bahasa Inggris",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 30,
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Update Materi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.yellow,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          height: 200,
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3.0,
                                  style: BorderStyle.solid)),
                          child: Column(
                            //cross kesamping
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  //tumpukkan container 1 paling bawah
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 5),
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/ayam.jpg"))),
                                  ),
                                  //kalau mau bisa diplay,pasang library
                                  //video dan pakai widget gesture detector
                                  //nempatin gesture detector di play
                                  //videonya
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        //color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 3.0)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Videoupdatemateri(),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 63, top: 28),
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "IPA",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                //alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Videoupdatemateri(),
                                        ));
                                  },
                                  child: Text(
                                    "Jenis Hewan Ovipar dan Ovovivipar",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          height: 200,
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3.0,
                                  style: BorderStyle.solid)),
                          child: Column(
                            //cross kesamping
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  //tumpukkan container 1 paling bawah
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 5),
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/gravitasi.jpg"))),
                                  ),
                                  //kalau mau bisa diplay,pasang library
                                  //video dan pakai widget gesture detector
                                  //nempatin gesture detector di play
                                  //videonya
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        //color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 3.0)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Videoupdatemateri(),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 63, top: 28),
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "IPA",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                //alignment: Alignment.center,
                                child: Text(
                                  "Asal Usul Hukum Gravitasi Beserta Rumusnya",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          height: 200,
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3.0,
                                  style: BorderStyle.solid)),
                          child: Column(
                            //cross kesamping
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  //tumpukkan container 1 paling bawah
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 5),
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/ayam.jpg"))),
                                  ),
                                  //kalau mau bisa diplay,pasang library
                                  //video dan pakai widget gesture detector
                                  //nempatin gesture detector di play
                                  //videonya
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        //color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 3.0)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Videoupdatemateri(),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 63, top: 28),
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "IPS",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                //alignment: Alignment.center,
                                child: Text(
                                  "Mengenal Perbedaan Antara Teluk dan Tanjung",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          height: 200,
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3.0,
                                  style: BorderStyle.solid)),
                          child: Column(
                            //cross kesamping
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  //tumpukkan container 1 paling bawah
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 5),
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/teluk.jpg"))),
                                  ),
                                  //kalau mau bisa diplay,pasang library
                                  //video dan pakai widget gesture detector
                                  //nempatin gesture detector di play
                                  //videonya
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        //color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 3.0)),
                                  ),
                                  GestureDetector(
                                    //diarahinnya ke video
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Videoupdatemateri(),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 63, top: 28),
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Biologi",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                //alignment: Alignment.center,
                                child: Text(
                                  "Jenis Hewan Ovipar dan Ovovivipar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 180,
                          height: 200,
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 3.0,
                                  style: BorderStyle.solid)),
                          child: Column(
                            //cross kesamping
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  //tumpukkan container 1 paling bawah
                                  Container(
                                    margin: EdgeInsets.only(left: 40, top: 5),
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/ayam.jpg"))),
                                  ),
                                  //kalau mau bisa diplay,pasang library
                                  //video dan pakai widget gesture detector
                                  //nempatin gesture detector di play
                                  //videonya
                                  Container(
                                    margin: EdgeInsets.only(left: 50, top: 15),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        //color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 3.0)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Videoupdatemateri(),
                                          ));
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 63, top: 28),
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.transparent),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Biologi",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                //alignment: Alignment.center,
                                child: Text(
                                  "Jenis Hewan Ovipar dan Ovovivipar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Cerita Sukses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow.shade200,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage("images/anaksd.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      //padding: EdgeInsets.only(left: 5),
                      color: Colors.transparent,
                      child: TextButton(
                        onPressed: () {
                          //ke halaman / file cerita sukses
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Certiasukses(),
                              ));
                        },
                        //buat style ketika textnya di hover  (di arahin ke teks)

                        child: Text(
                          "Siska, Anak Putus Sekolah yang sukses memanfaatkan beasiswa",
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow.shade200,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage("images/anaksd.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      //padding: EdgeInsets.only(left: 5),
                      color: Colors.transparent,
                      child: TextButton(
                        onPressed: () {},
                        //buat style ketika textnya di hover  (di arahin ke teks)

                        child: Text(
                          "Siska, Anak Putus Sekolah yang sukses memanfaatkan beasiswa",
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow.shade200,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage("images/anaksd.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      //padding: EdgeInsets.only(left: 5),
                      color: Colors.transparent,
                      child: TextButton(
                        onPressed: () {},
                        //buat style ketika textnya di hover  (di arahin ke teks)

                        child: Text(
                          "Siska, Anak Putus Sekolah yang sukses memanfaatkan beasiswa",
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow.shade200,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          //color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage("images/anaksd.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      //padding: EdgeInsets.only(left: 5),
                      color: Colors.transparent,
                      child: TextButton(
                        onPressed: () {},
                        //buat style ketika textnya di hover  (di arahin ke teks)

                        child: Text(
                          "Siska, Anak Putus Sekolah yang sukses memanfaatkan beasiswa",
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Container(
              //   width: double.infinity,
              //   //height: double.infinity,
              //   height: 600,
              //   color: Colors.green,
              //tidak usah pakai listview column, karena dari parentnya,
              //listview yang awal sudah mewakili kalau scrollny itu kebawah.
              //kalau mau susunnya secara horizontal / row,  haruus pasang
              //listview lagi
              //   child: ListView(scrollDirection: Axis.vertical, children: [
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Container(
              //           width: 200,
              //           height: 200,
              //           color: Colors.purple,
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           width: 200,
              //           height: 200,
              //           color: Colors.purple,
              //         ),
              //       ],
              //     )
              //   ]),
              // )
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
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "a",
            ),
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
    );
  }
}
