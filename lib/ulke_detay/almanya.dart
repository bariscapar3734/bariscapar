import 'package:dunyaprojem_app/almanya/askeri.dart';
import 'package:dunyaprojem_app/almanya/din.dart';
import 'package:dunyaprojem_app/almanya/iklim.dart';
import 'package:dunyaprojem_app/almanya/lojistik.dart';
import 'package:dunyaprojem_app/almanya/tarih.dart';
import 'package:dunyaprojem_app/almanya/tarim.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class almanya extends StatefulWidget {
  @override
  _almanyaState createState() => _almanyaState();
}

class _almanyaState extends State<almanya> {
  List<almanyabilgi> _almanyabilgi;

  @override
  void initState() {
    super.initState();
    _almanyabilgi = [
      almanyabilgi(
        "Avrupa",
        "Berlin",
        "Hristiyan",
        "Almanca",
        "+ 49",
        "357.386 km²",
        "EURO",
        "83 Milyon",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 60.0,
                right: 10.0,
              ),
              child: Text('Almanya'),
            ),
            Image.asset(
              'assets/anasayfa/bayraklar/almanya.png',
              fit: BoxFit.cover,
              width: 60,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: _almanyabilgi.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/harita/almanyaharita.jpg",
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Kısa Bilgiler",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].bulundugukita,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.public,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].baskenti,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.location_city,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].din,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.menu_book,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].dil,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.language,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].telefonkod,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.call,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].alan,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.straighten,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].parabirim,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.attach_money,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      _almanyabilgi[index].nufus,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    leading: Icon(
                                      Icons.group_sharp,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/tarihbanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => almanyatarih())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Tarih",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/dinbanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => almanyadin())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Din",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/askeribanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => almanyaaskeri())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Askeri",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/lojistikbanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            almanyalojistik())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Lojistik",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/tarimbanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => almanyatarim())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Tarım",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ulkedetay/iklimbanner.jpg",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => almanyaiklim())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "İklim",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class almanyabilgi {
  String bulundugukita;
  String baskenti;
  String din;
  String dil;
  String telefonkod;
  String alan;
  String parabirim;
  String nufus;
  almanyabilgi(this.bulundugukita, this.baskenti, this.din, this.dil,
      this.telefonkod, this.alan, this.parabirim, this.nufus);
}
