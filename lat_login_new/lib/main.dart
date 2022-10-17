import 'package:flutter/material.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'halamanloginvalidasi.dart'; //masukkin halaman login
import 'package:flame_splash_screen/flame_splash_screen.dart';

//main untuk mnejalankan proejct (sebutin nama)

//rumah.dart itu halaman bottomnabar yang bisa pindah halaman
void main() {
  runApp(
    MaterialApp(
      title: 'Aplikasi Bimbel',
      //debugShowCheckedModeBanner: false,
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyApp(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => HalamanLoginValidasi(),
      },
    ),
  );
}

//https://medium.com/swlh/forms-and-validation-in-flutter-login-ui-f2e7db4e00c9
//tutorial password strength
//https://medium.flutterdevs.com/password-strength-checker-in-flutter-90723799009
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlameSplashController controller;
  @override
  void initState() {
    super.initState();
    controller = FlameSplashController(
      //animasi (muncul) waktu munculin transisi pergantian / peralihan splashnya
      fadeInDuration: Duration(seconds: 3),
      //animasi (keluar) waktu munculin transisi pergantian / peralihan splashnya
      fadeOutDuration: Duration(seconds: 3),
      //waktu (detik) munculnya tampilan per splash
      waitDuration: Duration(seconds: 6),
      autoStart: true,
    );
  }

  @override
  void dispose() {
    controller.dispose(); // dispose it when necessary
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlameSplashScreen(
        showBefore: (BuildContext context) {
          return Container(
            color: Colors.blue.shade900,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                "Aplikasi Karya Anak Bangsa",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          );
        },
        showAfter: (BuildContext context) {
          return Container(
            color: Colors.blue.shade900,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                "Bimbel App",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          );
          ;
        },
        theme: FlameSplashTheme.white,
        onFinish: (context) => Navigator.pushNamed(context, '/second'),
        controller: controller,
      ),
    );
    //home: Splash(), //halaman awalnya pakai halaman splash.dart
  }
}
