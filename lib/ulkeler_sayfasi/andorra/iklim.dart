import 'package:flutter/material.dart';

class andorraiklim extends StatefulWidget {
  @override
  _andorraiklimState createState() => _andorraiklimState();
}

class _andorraiklimState extends State<andorraiklim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Andorra İklim"),
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
                        "assets/ulkedetay/iklimbanner.jpg",
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
                  "Andorra'da İklim",
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
                  "Andorra her ne kadar rakımı yüksek bir ülke olsa da iklimi ılıman bir görünümde. Ülkede kışlar karlı ve soğuk, yazlar ise kuru ve ılık geçiyor. Deniz seviyesinden en alçak noktası 840 metre ile Riu Runer bölgesi olan ülkenin en yüksek yeri ise 2 bin 946 metre ile Coma Pedrosa bölgesi. Dik kayalıklar ve dar vadilerle çevrili ülke doğal güzellikleri ile ünlü.",
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
