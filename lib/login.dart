import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
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

class _GirisEkraniState extends State<GirisEkrani>
    with TickerProviderStateMixin {
  AnimationController _controller,
      _controller2,
      _controller3,
      _controller4,
      _controller5;
  Animation<double> _animation,
      _animation2,
      _animation3,
      _animation4,
      _animation5;

  @override
  void initState() {
    super.initState();
    //Dünya,sonsuzluk içinde
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    //Küçük bir parantezdir...
    _controller3 =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(_controller3);
    _controller3.forward();
    //login arka plan
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _animation2 = Tween(begin: 1.0, end: 1.0).animate(_controller2);
    _controller2.forward();
    //kullanıcı kısmı
    _controller4 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation4 = Tween(begin: 0.0, end: 1.0).animate(_controller4);
    _controller4.forward();
    //logo kısmı
    _controller5 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation5 = Tween(begin: 0.0, end: 1.0).animate(_controller5);
    _controller5.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
  }

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  girisYap() {
    if (t1.text == "Barış" && t2.text == "173006047") {
      Navigator.pushNamed(context, "/Anasayfa",
          arguments: VeriModeli2(kullaniciAdi: t1.text, sifre: t2.text));
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _animation2,
                child: Container(
                  height: 804,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/login/loginbg.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 100,
                        child: Container(
                          child: Column(
                            children: [
                              FadeTransition(
                                opacity: _animation,
                                child: Text(
                                  "Dünya, sonsuzluk içinde",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Itim",
                                  ),
                                ),
                              ),
                              FadeTransition(
                                opacity: _animation3,
                                child: Text(
                                  "Küçük bir parantezdir...",
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Itim",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 200,
                        child: SizeTransition(
                          sizeFactor: _animation5,
                          axis: Axis.horizontal,
                          axisAlignment: -1,
                          child: Row(
                            children: [
                              Icon(
                                Icons.public,
                                color: Colors.red,
                                size: 80,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Ülkeleri Tanıyalım",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "PermanentMarker"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 45,
                        top: 350,
                        child: SizeTransition(
                          sizeFactor: _animation4,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.black54,
                            ),
                            width: 300,
                            height: 220,
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Colors.lightBlueAccent,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 1.0,
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.people,
                                          color: Colors.lightBlueAccent,
                                        ),
                                        hintText: "Kullanıcı Adı",
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        )),
                                    style: TextStyle(color: Colors.white),
                                    controller: t1),
                                SizedBox(
                                  height: 3,
                                ),
                                TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Colors.lightBlueAccent,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 1.0,
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.lock,
                                          color: Colors.lightBlueAccent,
                                        ),
                                        hintText: "Şifre",
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        )),
                                    style: TextStyle(color: Colors.white),
                                    controller: t2),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                  ),
                                  onPressed: girisYap,
                                  child: Text("Giriş Yap"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VeriModeli2 {
  String kullaniciAdi;
  String sifre;
  VeriModeli2({this.kullaniciAdi, this.sifre});
}
