import 'package:flutter/material.dart';

class andorradin extends StatefulWidget {
  @override
  _andorradinState createState() => _andorradinState();
}

class _andorradinState extends State<andorradin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Andorra Din"),
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
                        "assets/ulkedetay/dinbanner.jpg",
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
                  "Andorra'da Din",
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
                  "Hıristiyanlık, Andorra'daki çoğunluğun dinidir. Özellikle, Roma Katolikleri ülke nüfusunun% 88.2'sini oluşturmaktadır. Diğer Hıristiyan mezheplerin de ülkede taraftarları var. Az sayıda Müslüman, Hindu, Bahia, Yahudi, inanmayan ve ateist, kalan Andorra nüfusunu oluşturuyor. Andorra'nın Müslümanlarının çoğu Kuzey Afrika'dan gelen göçmenlerdir.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Resmi bir devlet dini olmasa da, Katolikliğin Andorra anayasası tarafından kabul edilen ülkede özel bir yeri var. Ülkedeki Katolik Kilisesi'ne bazı özel ayrıcalıklar tanınmıştır. Andorra'da bulunan diğer Hıristiyan mezhepleri Protestanlar, Mormonlar ve Yeni Apostolik Kilisesi'dir. Andorra'nın Hıristiyanlarının çoğu, Fransa, İspanya ve Portekiz gibi Avrupa ülkelerinden gelen göçmenlerdir. Tahminler, Andorra Katolik nüfusunun yalnızca yarısının düzenli olarak kiliseye katılacağını göstermektedir.",
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
