import 'package:dunyaprojem_app/drawermenusayfalari/natoulkeleri.dart';
import 'package:dunyaprojem_app/ulke_detay/andorra.dart';
import 'package:dunyaprojem_app/ulke_detay/arnavutluk.dart';
import 'package:dunyaprojem_app/ulke_detay/avusturya.dart';
import 'package:dunyaprojem_app/ulke_detay/azerbaycan.dart';
import 'package:dunyaprojem_app/ulke_detay/belarus.dart';
import 'package:dunyaprojem_app/ulke_detay/belcika.dart';
import 'package:dunyaprojem_app/ulke_detay/birlesik_krallik.dart';
import 'package:dunyaprojem_app/ulke_detay/bosna_hersek.dart';
import 'package:dunyaprojem_app/ulke_detay/bulgaristan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'ulke_detay/almanya.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Ülkeleri Tanıyalım",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => GirisEkrani(),
        "/Anasayfa": (context) => Anasayfa(),
      },
    ),
  );
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  cikisYap() {
    Navigator.pop(context);
  }

  String valueChoose; // drop listem
  List listItem = [
    "Genel Sıralama",
    "Nüfusa Göre",
    "Savunma Bütçesine Göre",
    "Tank Sayısına Göre",
    "Uçak Sayısına Göre",
    "Donanma Gücüne Göre",
    "Toprak Büyüklüğüne Göre",
    "Petrol Rezervlerine Göre",
  ];

  int fotografindex = 0;

  List<String> photos = [
    // fotoğraf listem
    "assets/anasayfa/bayraklar/turkiye.png",
    "assets/anasayfa/bayraklar/amerika.png",
    "assets/anasayfa/bayraklar/almanya.png",
    "assets/anasayfa/bayraklar/bulgaristan.png",
  ];

  void _previousImage() {
    setState(() {
      fotografindex = fotografindex > 0 ? fotografindex - 1 : 0;
    });
  } //geri resmi

  void _nextImage() {
    setState(() {
      fotografindex =
          fotografindex < photos.length - 1 ? fotografindex + 1 : fotografindex;
    });
  } // ileri resmi

  List<ulkeler> _ulkeler; // ulkeler list
  List<anasayfaulkesiralama> _anasayfaulkesiralama; //anasayfasiralama listem
  @override
  void initState() {
    super.initState();
    _anasayfaulkesiralama = [
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/amerika.png",
        "Amerika Birleşik Devletleri",
        "329,256,465",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/rusya.png",
        "Rusya",
        "142,122,776",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/cin.jpg",
        "Çin",
        "1,384,688,986",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/hindistan.jpg",
        "Hindistan",
        "1,296,834,042",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/japonya.png",
        "Japonya",
        "126,168,156",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/guneykore.png",
        "Güney Kore",
        "51,418,097",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/fransa.png",
        "Fransa",
        "67,364,357",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/birlesikkrallik.png",
        "Birleşik Krallık",
        "65,105,246",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/misir.png",
        "Mısır",
        "99,413,317",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/brezilya.png",
        "Brezilya",
        "208,846,892",
      ),
      anasayfaulkesiralama(
        "assets/anasayfa/bayraklar/turkiye.png",
        "Türkiye",
        "81,257,239",
      ),
    ];
    _ulkeler = [
      ulkeler(
        "Almanya",
        "Berlin",
        "assets/anasayfa/bayraklar/almanya.png",
        almanya(),
      ),
      ulkeler(
        "Andorra",
        "Andorra la Vella",
        "assets/anasayfa/bayraklar/andorra.png",
        andorra(),
      ),
      ulkeler(
        "Arnavutluk",
        "Tiran",
        "assets/anasayfa/bayraklar/arnavutluk.png",
        arnavutluk(),
      ),
      ulkeler(
        "Avusturya",
        "Viyana",
        "assets/anasayfa/bayraklar/avusturya.png",
        avusturya(),
      ),
      ulkeler(
        "Azerbaycan",
        "Bakü",
        "assets/anasayfa/bayraklar/azerbaycan.png",
        azerbaycan(),
      ),
      ulkeler(
        "Belarus",
        "Minsk",
        "assets/anasayfa/bayraklar/belarus.png",
        belarus(),
      ),
      ulkeler(
        "Belcika",
        "Brüksel",
        "assets/anasayfa/bayraklar/belcika.png",
        belcika(),
      ),
      ulkeler(
        "Birleşik Krallık",
        "Londra",
        "assets/anasayfa/bayraklar/birlesik_krallik.png",
        birlesik_krallik(),
      ),
      ulkeler(
        "Bosna Hersek",
        "Saray Bosna",
        "assets/anasayfa/bayraklar/bosna_hersek.png",
        bosna_hersek(),
      ),
      ulkeler(
        "Bulgaristan",
        "Sofya",
        "assets/anasayfa/bayraklar/bulgaristan.png",
        bulgaristan(),
      ),
    ];
  } // degerler

  @override
  Widget build(BuildContext context) {
    VeriModeli iletilenArgumanlar = ModalRoute.of(context).settings.arguments;
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Anasayfa"),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {},
              ),
            ],
            titleSpacing: 0,
            elevation: 20,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black54],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Anasayfa"),
                Tab(icon: Icon(Icons.golf_course), text: "Ülkeler"),
                Tab(icon: Icon(Icons.collections), text: "Galeri"),
                Tab(icon: Icon(Icons.info), text: "Hakkımda"),
                Tab(icon: Icon(Icons.face), text: "Profil"),
              ],
            ),
          ),
          drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black54,
            ),
            child: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Text(
                          "Askeri İttifaklar",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      title: Text(
                        "NATO Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Avrupa Birliği",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "G8 Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "OPEC Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "APEC Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    //bulundugu kita
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Text(
                          "Bulunduğu Kıtalar",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      title: Text(
                        "Avrupa Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Asya Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Afrika Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Kuzey Amerika Ülkeleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => natoulkeleri(),
                          ),
                        );
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      endIndent: 30,
                      indent: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              //anasayfa
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 110,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                padding: EdgeInsets.only(left: 16, right: 16),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: DropdownButton(
                                  hint: Text("Sıralamayı Seçiniz :"),
                                  dropdownColor: Colors.white,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36,
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose = newValue;
                                    });
                                  },
                                  items: listItem.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${valueChoose}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ), // Drop Kutusu
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: _anasayfaulkesiralama.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 4.0,
                              child: Center(
                                child: Column(
                                  children: [
                                    Image.asset(
                                        _anasayfaulkesiralama[index].bayrak),
                                    ListTile(
                                      leading: Icon(
                                        Icons.people,
                                        size: 35,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        _anasayfaulkesiralama[index].ulkeadi,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Nufüs : " +
                                            _anasayfaulkesiralama[index].nufus,
                                      ),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.teal,
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
              //ulkeler
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: _ulkeler.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(
                                _ulkeler[index].ulkeadi,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              subtitle: Text(
                                _ulkeler[index].ulkebaskenti,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage(_ulkeler[index].bayrak),
                                backgroundColor: Colors.black,
                              ),
                              trailing: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          _ulkeler[index].yolu)),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              //galeri
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage(photos[fotografindex]),
                                  fit: BoxFit.cover),
                            ),
                            height: 400.0,
                            width: 300.0,
                          ),
                          Positioned(
                              top: 375.0,
                              left: 25.0,
                              right: 25.0,
                              child: SelectedPhoto(
                                numberofdots: photos.length,
                                fotografindex: fotografindex,
                              )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text("Geri"),
                          onPressed: _previousImage,
                        ),
                        SizedBox(width: 10.0),
                        TextButton(
                          child: Text("İleri"),
                          onPressed: _nextImage,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //hakkımda
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 50,
                    color: Colors.teal[900],
                    child: Text(
                      "Hakkımda",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 150,
                    color: Colors.teal[700],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006047 numaralı Barış ÇAPAR tarafından 27 Nisan 2021 günü yapılmıştır.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 100,
                    color: Colors.teal[500],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Böyle Bir Ders İçin Sizden Teşekkür Ederim. İnşallah Emeğimi Beğenirsiniz...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //profil
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kullanıcı Adı : ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          iletilenArgumanlar.kullaniciAdi,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "Şifre : ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          iletilenArgumanlar.sifre,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: cikisYap,
                      child: Text("Çıkış Yap"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberofdots;
  final int fotografindex;

  SelectedPhoto({this.numberofdots, this.fotografindex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
            padding: const EdgeInsets.only(left: 3.0, right: 3.0),
            child: Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
            )));
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0,
                    blurRadius: 2.0,
                  )
                ])),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberofdots; ++i) {
      dots.add(i == fotografindex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildDots(),
    ));
  }
}

class anasayfaulkesiralama {
  String bayrak;
  String ulkeadi;
  String nufus;
  anasayfaulkesiralama(this.bayrak, this.ulkeadi, this.nufus);
}

class ulkeler {
  String ulkeadi;
  String ulkebaskenti;
  String bayrak;
  final yolu;
  ulkeler(this.ulkeadi, this.ulkebaskenti, this.bayrak, this.yolu);
}
