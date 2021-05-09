import 'package:flutter/material.dart';

class avusturya extends StatefulWidget {
  @override
  _avusturyaState createState() => _avusturyaState();
}

class _avusturyaState extends State<avusturya> {
  List<ulkebilgi> _ulkebilgi;

  @override
  void initState() {
    super.initState();
    _ulkebilgi = [
      ulkebilgi(
        "Avrupa",
        "Viyana",
        "Hristiyan",
        "Almanca",
        "+ 43",
        "83.879 km2",
        "Euro",
        "8,859 Milyon",
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
              child: Text('Avusturya'),
            ),
            Image.asset(
              'assets/anasayfa/bayraklar/avusturya.png',
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
                                "assets/ulkedetay/harita/avusturyaharita.jpg",
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
                              child: InkWell(onTap: () {}),
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
                              child: InkWell(onTap: () {}),
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
                              child: InkWell(onTap: () {}),
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
                              child: InkWell(onTap: () {}),
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
                              child: InkWell(onTap: () {}),
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
                              child: InkWell(onTap: () {}),
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
