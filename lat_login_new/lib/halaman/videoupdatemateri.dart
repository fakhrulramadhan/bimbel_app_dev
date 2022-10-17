import 'package:flutter/material.dart';
import 'haldua.dart';

class Videoupdatemateri extends StatefulWidget {
  @override
  State<Videoupdatemateri> createState() => _HalsatuState();
}

class _HalsatuState extends State<Videoupdatemateri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
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
              Center(
                child: Container(
                  //width: 200,
                  //height: 300,
                  color: Colors.grey,
                  child: Stack(
                    //alignment: Alignment.center,
                    children: [
                      //tumpukkan container 1 paling bawah
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 5),
                        //masing2 width ditambahkan 110
                        width: 200,
                        height: 200,
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
                        margin: EdgeInsets.only(left: 10, top: 15),
                        //masing2 width ditambahkan 110
                        width: 180,
                        height: 180,
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
                                builder: (context) => Haldua(),
                              ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 23, top: 28),
                          //masing2 width ditambahkan 110
                          width: 155,
                          height: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  // gradient: LinearGradient(
                  //     colors: [Colors.blue, Colors.green],
                  //     begin: Alignment.centerLeft,
                  //     end: Alignment.centerRight)
                ),
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 80,
                //color: Colors.cyan,
                child: Text(
                  "Asal Usul Hukum Gravitasi Beserta Rumusnya",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              // Divider(
              //   color: Colors.black,
              //   //height: 3,
              // ),
              //body isi materi

              Container(
                width: 400,
                height: 400,
                padding: EdgeInsets.only(top: 15, left: 15),
                decoration: BoxDecoration(
                    //color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.grey,
                        width: 4.0,
                        style: BorderStyle.solid)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Kamu tahu enggak sih, apa itu gravitasi, gravitasi adalah ialah salah satu jenis gaya yang dipengaruhi oleh gaya tarik sebuah benda ke pusat benda tersebut. Maka dari itu pengertian gaya gravitasi bumi ialah gaya tarik menarik sebuah benda menuju pusat bumi. Kita dapat menjumpai contoh gaya gravitasi bumi ketika buah mangga atau buah kelapa jatuh ketanah. Lalu bagaimana jika di bumi tidak memiliki gaya gravitasi? Jika hal ini terjadi maka di bumi tidak akan ada kehidupan."),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Live Konsul"),
        icon: Icon(Icons.chat),
        backgroundColor: Colors.green,
      ),
      //tombol mengapung di bawah untuk live konsultasi
      //penyebab errornya disini -_-
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Text("Live Konsul"),
      //   icon: Icon(Icons.chat),
      // ));
      //);
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
    );
  }
}
