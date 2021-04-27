import 'package:flutter/material.dart';

class andorratarim extends StatefulWidget {
  @override
  _andorratarimState createState() => _andorratarimState();
}

class _andorratarimState extends State<andorratarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Andorra Tarım"),
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
                  "Andorra'da Tarım",
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
