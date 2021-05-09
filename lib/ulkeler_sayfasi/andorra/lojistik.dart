import 'package:flutter/material.dart';

class andorralojistik extends StatefulWidget {
  @override
  _andorralojistikState createState() => _andorralojistikState();
}

class _andorralojistikState extends State<andorralojistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Andorra Lojistik Gücü"),
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lojistik Bilgi Bulunamamıştır...",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
