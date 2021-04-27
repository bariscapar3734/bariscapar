import 'package:flutter/material.dart';

class almanyalojistik extends StatefulWidget {
  @override
  _almanyalojistikState createState() => _almanyalojistikState();
}

class _almanyalojistikState extends State<almanyalojistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Almanya Lojistik Gücü"),
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
                        "assets/ulkedetay/lojistikbanner.jpg",
                      ),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              //Lojistik Veriler
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 50,
                color: Colors.black54,
                child: Text(
                  "LOJİSTİK GÜCÜ",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "İş Gücü",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "46 Milyon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Ticaret Filosu",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "629",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Limanlar ve Terminaller",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "13",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Karayolu Ağı (Km)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "645 Bin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Demiryolu Ağı (Km)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "41.981",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Havaalanları",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.bookmark,
                    color: Colors.brown,
                  ),
                  trailing: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown,
                    child: Text(
                      "539",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
