import 'package:flutter/material.dart';

class arnavutlukdin extends StatefulWidget {
  @override
  _arnavutlukdinState createState() => _arnavutlukdinState();
}

class _arnavutlukdinState extends State<arnavutlukdin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Arnavutluk Din"),
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
                  "Arnavutluk'ta Din",
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
                  "Almanya'da baskın din Hristiyanlık olmaktadır ve din 4. yüzyılda modern Almanya'nın kapladığı bölgelerdeki Cermen kabilelerinin bu dini benimsemesi ile yayılmıştır. 8. ve 9. yüzyılda, Şarlman'ın hakimiyetine kadar bölge tamamen Hristiyanlaşmıştır. 16. yüzyılda Martin Luther tarafından başlatılan Reform hareketi ve Katolik Kilisesi ile yarattığı şizm sonucunda yöre halkının önemli bir kısmı Lütercilik ve Kalvinizm başta olmak üzere Protestanlığı benimsemiştir.[2]",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Günümüzde Almanya'nın yaklaşık %50'si kendini Hristiyan olarak tanımlamakta olup, bu kişilerin yaklaşık yarısı ülkenin güney ve batısında daha yoğun olacak şekilde Katolik Kilisesi'ne, diğer yarısı ise ülkenin kuzeyinde daha yaygın olan Alman Evanjelik Kilisesi'ne (Alman Protestan Kilisesi) bağlıdır. Geri kalan küçük Hristiyan mezhepleri arasında Özgür Lüterci Evanjelik Kilisesi, Doğu Ortodoks Kilisesi ve Yehova'nın Şahitleri yer alır. Toplumun %5'i ile %6'si Müslüman olup, daha küçük Budist, Yahudi ve Hindu azınlık grupları da ülkede yer almaktadır. Halkın geriye kalan yaklaşık %40'lık kısmı herhangi bir dini kuruma bağlı olmayıp, ateist, agnostik veya diğer dinsiz gruplardan oluşmaktadır.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Dinsizler, Berlin ve Hamburg gibi büyük şehirlerde çoğunluğu oluşturur. Büyük şehirlerin yanı sıra, eskiden Doğu Almanya yönetiminde kalmış bölgelerde dinsizlik salt çoğunluğun inanç tarzıdır ve bu bölgelerde dinsiz oranı %70 ile %80 olabilir.[5] Batı Almanya yönetiminde kalmış kırsal bölgeler daha dindar olup, bu bölgelerin bazıları yüksek dindarlık gösterir",
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
