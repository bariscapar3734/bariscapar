import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => GirisEkrani(),
        "/Anasayfa": (context) => Anasayfa(),
      },
    );
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  girisYap() {
    if (t1.text == "Barış" && t2.text == "173006047") {
      Navigator.pushNamed(context, "/Anasayfa",
          arguments: VeriModeli(kullaniciAdi: t1.text, sifre: t2.text));
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Yanlış Kullanıcı Adı veya Şifre"),
            content: Text("Lütfen Giriş Bilgilerinizi Gözden Geçiriniz !"),
            actions: [
              ElevatedButton(
                child: Text("Kapat"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Ekranı"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                  controller: t1),
              TextFormField(
                  decoration: InputDecoration(hintText: "Şifre"),
                  controller: t2),
              ElevatedButton(
                onPressed: girisYap,
                child: Text("Giriş Yap"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VeriModeli {
  String kullaniciAdi;
  String sifre;
  VeriModeli({this.kullaniciAdi, this.sifre});
}
