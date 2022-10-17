import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/widget/halsatuwidget.dart';
import 'package:lat_login_new/halaman/belipaket.dart';
import 'package:lat_login_new/halaman/profil.dart';
import 'package:lat_login_new/halaman/widget/videomateriwidget.dart';
import 'package:lat_login_new/halamanloginvalidasi.dart';
import './haldua.dart';

//masukkin page update video materi
import './videoupdatemateri.dart';
import './materi.dart';

class Rumah extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(label: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.label}) : super(key: key);

  final String label;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'Red'),
      BottomNavigationBarItem(
        icon: new Icon(Icons.search),
        label: 'Blue',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Yellow')
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HalsatuBody(),
        VideosatuBody(),
        Yellow(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
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
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}

class HalsatuBody extends StatefulWidget {
  @override
  _HalsatuBodyState createState() => _HalsatuBodyState();
}

class _HalsatuBodyState extends State<HalsatuBody> {
  @override
  Widget build(BuildContext context) {
    return const HalsatuWidget();
  }
}

class VideosatuBody extends StatefulWidget {
  @override
  _VideosatuBodyState createState() => _VideosatuBodyState();
}

class _VideosatuBodyState extends State<VideosatuBody> {
  @override
  Widget build(BuildContext context) {
    return const Videomateriwidget();
  }
}

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
    );
  }
}
