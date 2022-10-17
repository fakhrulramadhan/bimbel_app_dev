import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/videoupdatemateri.dart';

class Videomateriwidget extends StatelessWidget {
  const Videomateriwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
