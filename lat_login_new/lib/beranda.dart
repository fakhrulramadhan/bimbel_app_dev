import 'package:flutter/material.dart';
import 'package:lat_login_new/halaman/halsatu.dart';

//ngarahin ke page lainnya bukan pakai page navigator route
//tapi pakai ontap berdasarkan index pagenya
class Beranda extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Beranda> {
  int pageIndex = 0;

  // final pages = [
  //   const Page1(),
  //   const Page2(),
  //   const Page3(),
  //   const Page4(),
  // ];

  //fungsi pages,utk menampilkan halaan
  final pages = [
    Halsatu(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.menu,
      //     color: Theme.of(context).primaryColor,
      //   ),
      //   title: Text(
      //     "Learning kuy",
      //     textAlign: TextAlign.left,
      //     style: TextStyle(
      //       color: Theme.of(context).primaryColor,
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: false,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Icon(
      //       Icons.people_alt,
      //       color: Colors.black,
      //     )
      //   ],
      // ),
      //body nya dapat dari fungsi pages dan berdasarkan indexnya
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

// class Page1 extends StatelessWidget {
//   //const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//           // child: Text(
//           //   "Page Number 1",
//           //   style: TextStyle(
//           //     color: Colors.green[900],
//           //     fontSize: 45,
//           //     fontWeight: FontWeight.w500,
//           //   ),
//           // ),
//           child: Container(
//         width: 300,
//         height: 400,
//         color: Colors.blue,
//       )),
//     );
//   }
// }

class Page2 extends StatelessWidget {
  //const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  //const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  //const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
