import 'package:flutter/material.dart';

class almanyatarim extends StatefulWidget {
  @override
  _almanyatarimState createState() => _almanyatarimState();
}

class _almanyatarimState extends State<almanyatarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Almanya Tarım"),
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
                  "Almanya'da Tarım",
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
                  "Tarım sektörü en büyük işverenlerden. Tüm gıdalarımızla ilgilenen 4,6 milyon çalışanı var. Almanya’da arazinin neredeyse yarısı (yaklaşık 16,7 milyon hektar) tarım amaçlı kullanılmaktadır.Nasıl ihracatta Made in Germany dünya çapında popüler olduysa, çiftlikte tatil yapmak da, artık sadece Almanlara özgü bir tatil tercihi değil.Alman tarım ekonomisi, gelirinin her dört Avro’sundan birini, hatta gıda sektöründe her üç Avro’dan birini, ihracattan elde etmektedir. İki Almanya’nın birleşmesinden sonra dışsatım neredeyse dörde katlandı. Almanya ABD ve Hollanda’nın ardından dünyanın en büyük üçüncü tarım ürünleri ihracatçısıdır.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Tarım sektörü gıda maddeleri üretiminin yanısıra; toprağın ve türlerin korunmasından, endüstriyel bitkilerden kazanılan hammadelerden enerji ve ürün elde edilmesine kadar uzanan bir yelpazede, çok yönlü görevler de üstlenmektedir. Böylece, Almanya’nın toplam enerji tüketiminde yenilenebilir enerjilerin payı yaklaşık yüzde 12 olmuştur. Araştırma ve inovasyon sayesinde, doğal maddelerin gelecekte şimdiye kadar olduğundan daha fazla kullanılması amaçlanmaktadır. Kesin olan birşey varsa, o da şudur: Gıda güvencesi Almanya için her zaman, sanayi ve enerji için hammadde üretilmesinden önce gelir.",
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
