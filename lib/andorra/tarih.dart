import 'package:flutter/material.dart';

class andorratarih extends StatefulWidget {
  @override
  _andorratarihState createState() => _andorratarihState();
}

class _andorratarihState extends State<andorratarih> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Andorra Tarih"),
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
                        "assets/ulkedetay/tarihbanner.jpg",
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
                  "Andorra'nın Kısaca Tarihi",
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
                  "Andorra, resmi adıyla Andorra Prensliği,[4] İber Yarımadası'nda Pirene Dağları üzerinde denize kıyısı olmayan egemen bir mikrodevlettir. Kuzeyde Fransa, güneyde ise İspanya ile çevrilidir. Şarlman tarafından kurulduğu düşünülen Andorra, 988 yılında Urgell Piskoposluğu'na devredilene kadar Urgell kontlarınca yönetilmiştir. Günümüz prensliği 1278 yılında yapılan bir antlaşma ile oluşturulmuştur. Prenslik; Katalonya'da bulunan Urgell piskoposu ve Fransa cumhurbaşkanı olmak üzere iki eş prens tarafından yönetilen bir diarşidir.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Andorra 468 km² yüzölçümü ile Avrupa'nın en küçük altıncı ülkesidir ve yaklaşık 77.000 nüfusa sahiptir.[5] Andorra halkı Katalan soyundan gelen İtalik bir etnik gruptur.[6] Andorra yüzölçümüne göre 16., nüfusa göre ise 11. en küçük ülkedir.[7] Başkenti Andorra la Vella, deniz seviyesinden 1.023 m yüksekliğiyle Avrupa'nın en yüksek rakımlı başkentidir. Resmi dil Katalancadır; ayrıca İspanyolca, Portekizce ve Fransızca da yaygın biçimde konuşulur.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Andorra'da turizm gelişmiştir, yılda yaklaşık 10,2 milyon turist ülkeyi ziyaret etmektedir.[11] Andorra Avrupa Birliği üyesi değildir ancak euro resmi para birimi olarak kullanılmaktadır. 1993'ten beri Birleşmiş Milletler üyesidir. Küresel Hastalık Yükü Araştırması'na göre 2013 yılında 81 yıl ile Andorra en uzun beklenen yaşam süresine sahipti.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Andorra'nın bağımsızlığını kazanmasını, bölgeyi 803'te Müslümanlardan geri alan Şarlman'ın ve imparatorluğunun bir bölümünü 819'da İspanya'daki Urgel piskoposuna bağışlayan oğlu I. Louis'nin (Sofu) sağladığı kabul edilir.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "1278 yılında Andorra biri İspanya'da, öteki Fransa'da bulunan iki prensin ortaklaşa yönetimine bağlanmış ve ülkenin sınırları netleşmiştir. Anılan yıldan beri ülkenin sınırları hiç değişmemiştir. Kurulan feodal düzen, Fransız Devrimi sırasında geçici olarak kalkmakla birlikte, 1806'da Napolyon tarafından yeniden kuruldu. Andorra, o günden bu yana Urgel piskoposu ve Fransa devlet başkanı tarafından ortaklaşa yönetilir; bunların ikisine de her yıl sembolik bir vergi ödenir.",
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
