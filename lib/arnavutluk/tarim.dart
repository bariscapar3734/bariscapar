import 'package:flutter/material.dart';

class arnavutluktarim extends StatefulWidget {
  @override
  _arnavutluktarimState createState() => _arnavutluktarimState();
}

class _arnavutluktarimState extends State<arnavutluktarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Arnavutluk Tarım"),
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
                        "assets/ulkedetay/tarimbanner.jpg",
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
                  "Arnavutluk'ta Tarım",
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
                  "Tarım Bilgisi Bulunamamıştır...",
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
