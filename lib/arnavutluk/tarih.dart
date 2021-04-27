import 'package:flutter/material.dart';

class arnavutluktarih extends StatefulWidget {
  @override
  _arnavutluktarihState createState() => _arnavutluktarihState();
}

class _arnavutluktarihState extends State<arnavutluktarih> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Arnavutluk Tarih"),
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
                  "Arnavutluk'un Kısaca Tarihi",
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
                  "Kuzeyinde Kuzey Denizi, Danimarka, ve Baltık Denizi; doğusunda Polonya ve Çek Cumhuriyeti; güneyinde Avusturya ve İsviçre; ve batısında Fransa, Lüksemburg, Belçika, ve Hollanda bulunan Almanya bir Orta Avrupa ülkesidir. Almanya’ya ilk yerleşenler Germen ve Kelt kavimleridir. Germenler, Kavimler Göçü sonucu M.S. 6. y.y.’a değin Keltlerle, Ortaçağ boyunca da Doğu Almanya’daki Slavlar ile karışarak Alman halkını meydana getirmişlerdir.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Fransız tarihinde olduğu gibi Alman tarihinde de Charlemagne’ın kurduğu Charlemagne İmparatorluğu esas alınır. Charlemagne’ın vefat etmesinin ardından bu imparatorluk orta ve doğu Frank krallıklarına ayrılmıştır. Alman devletinin kurulduğu tarih olarak da, Doğu Frank Krallığı’nın, kral I. Otto’nun Roma’da Papa tarafından imparator ilan edilmesiyle Kutsal Roma Germen İmparatorluğu’na dönüştüğü 2 Şubat 962 tarihi geleneksel olarak kabul görmektedir. Zaman içerisinde Batı Frank Krallığı Fransa haline gelmiş, Kutsal Roma Germen İmparatorluğu ise parçalara ayrılmıştır.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Almanya Fransız Devrimi’nin (1789) ardından, İkinci Dünya Savaşı’nın bitimine kadar sürecek geleneksel Alman-Fransız düşmanlığının kökeni olarak görülen Napeleon Bonaparte önderliğindeki Fransız ordusunun işgalini yaşamış, Bonaparte’ın Avrupa düzeninin silinip eski devletçiklerin tekrar oluşturulduğu Viyana Kongresi’nden (1814-1815) sonra Alman birliğini kendi güdümünde sağlamak isteyen iki rakip alman devleti Avusturya-Macaristan İmparatorluğu ile Prusya’nın rekabetine sahne olmuştur. Bu rekabette kazanan taraf Prusya olmuş ve 1870-71 Alman Fransız savaşının Almanların zaferiyle sonuçlanması üzerine Prusya kralı I. Wilhelm Alman imparatoru ilam edilerek Almanların ilk imparatorluk olarak adlandırdıkları ve Avusturya Macaristan İmparatorluğu’nun dışında kaldığı devlet kurulmuştur.",
                  style: TextStyle(fontSize: 16, fontFamily: "Mukta"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Almanlar 1. Dünya Savaşı sonunda yenilgiye uğramaları, politik istikrarsızlık, devamındaki dünya ekonomik bunalımı ve Versailles antlaşmasına duydukları tepki sonucunda Adolf Hitler’in nasyonel sosyalist diktatörlüğüne varmıştır. Hitler döneminde yapılan Yahudi soykırımıyla Almanya, ülke tarihini en karanlık dönemlerinden birini yaşamıştır. Daha sonrasında Almanya 2. Dünya Savaşı’nda da yenilgiye uğramış ve Sovyet işgal bölgelerine bölünmüştür. Sovyet işgalindeki bölgelerde 7 Ekim 1949’da Demokratik Alman Cumhuriyeti, Batı işgal bölgelerinde ise 23 Mayıs 1949 Federal Alman Cumhuriyeti kurulmuştur. Doğu bloğunun çözülmesi ve Federal Alman Cumhuriyeti’ne katılmasıyla birlikte de 3 Ekim 1990 tarihinde Alman birliği yeniden oluşturulmuştur.",
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
