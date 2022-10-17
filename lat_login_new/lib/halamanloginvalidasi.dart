import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import library form  validator
import 'package:form_field_validator/form_field_validator.dart';
import 'package:lat_login_new/halaman/halsatu.dart';
import 'package:lat_login_new/halaman/rumah.dart';
import './halaman/haldua.dart';

import 'beranda.dart';

class HalamanLoginValidasi extends StatefulWidget {
  @override
  State<HalamanLoginValidasi> createState() => _HalamanLoginValidasiState();
}

class _HalamanLoginValidasiState extends State<HalamanLoginValidasi> {
  bool isTersembunyi = false; //utk menyembunyikan password
  //bikin variabel untuk mengecek kekuatan password
  //late String _katasandi =""
  String _katasandi = ""; //_ berarti variabel bersifat privat
  double _kekuatan = 0; //utk dijadikan parameter kekuatan password

  //bikin inisiasi formstate globalnya dulu (formkey utk di formnya)
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //bikin fungsi validasi password (tipe datanya string)
  String validasiPassword(String value) {
    if (value.isEmpty) {
      return "* Wajib Diisi";
    } else if (value.length < 8) {
      //kalau panjang passnya < 8
      return "Minimal Password 8 Karakter";
    } else if (value.length > 15) {
      //kalau panjang passnya > 15
      return "Maksimal Password 15 Karakter";
    } else {
      return null;
    }
  }

  //regexp (regular expression)
  //utk menset karakter angka dan huruf
  RegExp numReg = RegExp(r".*[0-9].*"); //0 sampai 9
  RegExp letterReg = RegExp(r".*[A-Za-z].*"); //A sampai Z
  //RegExp simbolReg = RegExp(r".*[~`!@#$%^&*()-_=+{{}}].*");
  RegExp symbolReg = RegExp(r'[~!@#$%^&*()_+`{}|<>?;:./,=\-\[\]]');
  String _teksPesan = "Harap masukkan kata sandi";

  void _cekKatasandi(String value) {
    //trim, string tanpa spasi putih di awal dan akhir
    _katasandi = value.trim();

    if (_katasandi.isEmpty) {
      //jika kata sandinya kosong,maka kekuatan passwordnya 0
      setState(() {
        _kekuatan = 0;
        _teksPesan = "Harap masukkan kata sandi";
      });
    } else if (_katasandi.length < 6) {
      setState(() {
        _kekuatan = 1 / 4;
        _teksPesan = "Kata sandi anda terlalu pendek";
      });
    } else if (_katasandi.length < 8) {
      setState(() {
        _kekuatan = 2 / 4;
        _teksPesan = "Kata sandi anda masih lemah";
      });
    } else {
      //untuk mengecek kecocokan string dengan field inputannya
      // || artinya atau,! artinya datanya pasti ada
      if (!letterReg.hasMatch(_katasandi) ||
          !symbolReg.hasMatch(_katasandi) ||
          !numReg.hasMatch(_katasandi)) {
        //panjang karakter kata sandi >=  8
        //tapi katakter kata sandinya bukan perpaduan huruf dan angka
        setState(() {
          _kekuatan = 3 / 4;
          _teksPesan = "Kata sandi anda cukup kuat";
        });
      } else {
        //panjang karakter kata sandi >=  8
        // jika katakter kata sandinya  perpaduan ketiganya (huruf, angka, dan simbol
        setState(() {
          _kekuatan = 1;
          _teksPesan = "Kata sandi anda sangat kuat";
        });
      }

      // if (!numReg.hasMatch(_katasandi) && !letterReg.hasMatch(_katasandi)) {
      //   setState(() {
      //     _kekuatan = 1;
      //     _teksPesan = "Kata sandi anda sangat kuat";
      //   });
      // } else {
      //   setState(() {
      //     _kekuatan = 3 / 4;
      //     _teksPesan = "Kata sandi anda cukup kuat";
      //   });
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Halaman Login",
            style: TextStyle(fontFamily: "Gilda", fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF05589C)),
      body: SingleChildScrollView(
        child: Form(
            autovalidateMode:
                AutovalidateMode.always, //cek validasi otomatis ketika mengetik
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Center(
                    child: Container(
                        width: 180,
                        height: 180,
                        child: Image(image: AssetImage("images/login.jpg"))
                        // color: Colors.grey,
                        // Icon(
                        //   Icons.login_sharp,
                        //   size: 150,
                        // ),
                        ),
                  ),
                ),
                Padding(
                  //padding simetris (horizontal -> kasih spasi kiri-kanan)
                  //symetric hotizontal (kiri 20, kanan juga 20)
                  //padding simetris (vertikal -> kasih spasi atas-bawah)
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    autocorrect: false,
                    //tipe keyboardnya email
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35)),
                        labelText: "Email",
                        hintText: "contohnya: zzz@gmail.com"),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Wajib Diisi"),
                      EmailValidator(
                          errorText: "Masukkan alamat email yang valid")
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText:
                        isTersembunyi, //diambil dari variabel isTersembunyi
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        labelText: "Kata Sandi",
                        hintText: "Masukkan Kata Sandi yang kuat",
                        suffixIcon: IconButton(
                            onPressed: () {
                              //pakai yang ini, jangan pakai yang if
                              isTersembunyi = !isTersembunyi;
                              // if (isTersembunyi == true) {
                              //   isTersembunyi == false;
                              // } else {
                              //   isTersembunyi == true;
                              // }
                              setState(() {});
                            },
                            icon: Icon(Icons.remove_red_eye))),
                    //sembunyikan password

                    // validator: MultiValidator([
                    //   RequiredValidator(errorText: "* Wajib diisi"),
                    //   //minlengval(jml min, pesan error)
                    //   MinLengthValidator(8,
                    //       errorText: "Minimal Password 8 Karakter"),
                    //   MaxLengthValidator(15,
                    //       errorText: "Maksimal  Password 15 karakter")
                    // ]),
                    //isian password akan mengalami perubahan
                    onChanged: (value) => _cekKatasandi(value),
                    //onTap: ,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  //buat rounded rectangular clip(cliprrect) agar ada lekukan bulat
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: LinearProgressIndicator(
                      value:
                          _kekuatan, //nilai indikatornya diisi oleh var _kekuatan
                      backgroundColor: Colors.grey.shade300,
                      //untuk memnentukan warna berdasarkan kekuatan password
                      color: _kekuatan <= 1 / 4
                          ? Colors.red
                          : _kekuatan == 2 / 4
                              ? Colors.yellow
                              : _kekuatan == 3 / 4
                                  ? Colors.blue
                                  : Colors
                                      .green, //kalau passwordnya sangat kuat, warna hijau
                      minHeight: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //menampilkan pesan teks yang berisi kekuatan kata sandi yg diisi
                Text(
                  _teksPesan,
                  style: TextStyle(fontSize: 17, fontFamily: "Mazaeni"),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //     primary: Colors.green.shade400),

                  onPressed: _kekuatan < 3 / 4
                      ? null
                      : () {
                          //jika di klik maka melakukan validasi
                          if (formkey.currentState.validate()) {
                            //kalau cocok, masuk ke beranda / rumah
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Halsatu()));

                            print("Sukses Validasi, Anda Bisa Masuk");
                          } else {
                            print("Validasi Gagal Silakan cek formnya dulu");
                          }
                        },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
                //buttonnya akan muncul kalau kekuatan kata sandinya >1/2
                // ElevatedButton(
                //     onPressed: _kekuatan < 1 / 2 ? null : () {},
                //     child: Text("Lanjutkan")),

                SizedBox(
                  height: 20,
                ),
                //Text("Pengguna baru? Buat Akun"),

                Container(
                    height: 50,
                    width: 200,
                    child: Row(
                      children: [
                        Text("Pengguna Baru? "),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(onPressed: () {}, child: Text("Buat Akun"))
                      ],
                    )),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Lupa Kata Sandi",
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    )),
                SizedBox(
                  height: 50,
                ),
              ],
            )),
      ),
    );
  }
}
