import 'package:dunyaprojem_app/andorra/askeri.dart';
import 'package:dunyaprojem_app/andorra/din.dart';
import 'package:dunyaprojem_app/andorra/iklim.dart';
import 'package:dunyaprojem_app/andorra/lojistik.dart';
import 'package:dunyaprojem_app/andorra/tarih.dart';
import 'package:dunyaprojem_app/andorra/tarim.dart';
import 'package:flutter/material.dart';

class andorra extends StatefulWidget {
  @override
  _andorraState createState() => _andorraState();
}

class _andorraState extends State<andorra> {
  List<ulkebilgi> _ulkebilgi;

  @override
  void initState() {
    super.initState();
    _ulkebilgi = [
      ulkebilgi(
        "Avrupa",
        "Andorra la Vella",
        "Hristiyan",
        "Katalanca",
        "+ 376",
        "486 km²",
        "EURO",
        "77 Bin",
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
              child: Text('Andorra'),
            ),
            Image.asset(
              'assets/anasayfa/bayraklar/andorra.png',
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
                itemCount: _ulkebilgi.length,
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
                                "assets/ulkedetay/harita/andorraharita.png",
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
                                      _ulkebilgi[index].bulundugukita,
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
                                      _ulkebilgi[index].baskenti,
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
                                      _ulkebilgi[index].din,
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
                                      _ulkebilgi[index].dil,
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
                                      _ulkebilgi[index].telefonkod,
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
                                      _ulkebilgi[index].alan,
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
                                      _ulkebilgi[index].parabirim,
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
                                      _ulkebilgi[index].nufus,
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
                                        builder: (context) => andorratarih())),
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
                                        builder: (context) => andorradin())),
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
                                        builder: (context) => andorraaskeri())),
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
                                            andorralojistik())),
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
                                        builder: (context) => andorratarim())),
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
                                        builder: (context) => andorraiklim())),
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

class ulkebilgi {
  String bulundugukita;
  String baskenti;
  String din;
  String dil;
  String telefonkod;
  String alan;
  String parabirim;
  String nufus;
  ulkebilgi(this.bulundugukita, this.baskenti, this.din, this.dil,
      this.telefonkod, this.alan, this.parabirim, this.nufus);
}
