import 'package:flutter/material.dart';

class arnavutlukaskeri extends StatefulWidget {
  @override
  _arnavutlukaskeriState createState() => _arnavutlukaskeriState();
}

class _arnavutlukaskeriState extends State<arnavutlukaskeri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Arnavutluk Askeri Gücü"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Ink.image(
                      image: AssetImage(
                        "assets/ulkedetay/askeribanner.jpg",
                      ),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Arnavutluk Askeri Gücü",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Almanya Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 357.022 kilometrekarelik bir alana sahip olup 80.457.737 kişilik nüfusu ile dünyanın en kalabalık 19. ülkesidir. Almanya petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 50.000.000.000 dolarlık bütçe ile dünyanın en büyük 6. savunma bütçesine sahiptir.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              //KARA KUVVET
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 50,
                color: Colors.black54,
                child: Text(
                  "KARA KUVVETLERİ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Tanklar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "245",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Zırhlı Savaş Araçları",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "4.583",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Kundağı Motorlu Silahlar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "108",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Çekili Topçular",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Çoklu Roketatarlar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.teal,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "38",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //HAVA KUVVET
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 50,
                color: Colors.black54,
                child: Text(
                  "HAVA KUVVETLERİ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Toplam Uçaklar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "712",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Av-Önleme Uçakları",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "128",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Nakliye Uçakları",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "71",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Eğitim Uçakları",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "26",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Helikopterler",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "386",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Taarruz Helikopterleri",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.pinkAccent,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.pinkAccent,
                  child: Text(
                    "56",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //DENİZ KUVVET
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 50,
                color: Colors.black54,
                child: Text(
                  "DENİZ KUVVETLERİ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Toplam Donanma Gücü",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "80",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Uçak Gemisi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Firkateyn",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Destroyer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Korvet",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Denizaltı",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Sahil Güvenlik Botu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Mayın Gemileri",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Colors.amber,
                ),
                trailing: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    "12",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
