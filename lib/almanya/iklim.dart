import 'package:flutter/material.dart';

class almanyaiklim extends StatefulWidget {
  @override
  _almanyaiklimState createState() => _almanyaiklimState();
}

class _almanyaiklimState extends State<almanyaiklim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Almanya İklim"),
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
                  "Almanya'da İklim",
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
                  "Almanya'nın geneli, nemli batı rüzgarlarının üstünlük kurduğu ılımlı bir iklime sahiptir. İklim; Gulf Stream'in etkisi altındaki Kuzey Atlantik Akıntıları tarafından etkilenmektedir. Bu ısıtıcı sular, Kuzey Denizi sınırlarındaki Jutland Yarımadası ve Ren Bölgesi dahil olmak üzere birçok bölgeyi etkilemektedir. Sonuç olarak kuzeybatı ve kuzey bölgelerinde iklim okyanusal iklimdir; yağış yaz boyunca maksimuma çıkmak üzere her dönem sürer.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Kışları ılımlı ve yazları serindir, buna karşın sıcaklık çoğu zaman 30°C'yi (86°F) aşabilmektedir. Doğuda ise iklim daha karasaldır; kışlar çok soğuk, yazlar çok sıcak ve kuru olabilmektedir. Orta ve güney Almanya ise farklı olarak karasal ve okyanusal iklim arasında bir geçiş bölgesidir. Yine, en yüksek sıcaklık yazın 30°C'yi (86°F) aşabilmektedir.",
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
