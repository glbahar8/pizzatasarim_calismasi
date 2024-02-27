import 'package:flutter/material.dart';
import 'package:pizzatasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranBilgisi.size.height;
    final double ekrangenisligi = ekranBilgisi.size.height;
    print("Ekran Yüksekliği : $ekranyuksekligi");
    print("Ekran Genişliği : $ekrangenisligi");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PİZZA",
          style:
              TextStyle(color: yazirenk1, fontFamily: "Pacifico", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                  fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Chip(icerik: "Cheese"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Oliver"),
                Chip(icerik: "Pepper"),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "22 Min",
                  style: TextStyle(
                      fontSize: 22,
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Delevery",
                  style: TextStyle(
                      fontSize: 22,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Meat Lover, get ready to meet your pizza !",
                style: TextStyle(
                  fontSize: 22,
                  color: yaziRenk2,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "\$ 5.98 ",
                  style: TextStyle(
                      color: anaRenk,
                      fontSize: 44,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "ADD TO CARD",
                      style: TextStyle(color: yazirenk1, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Cheese",
        style: TextStyle(color: yazirenk1),
      ),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
    () {};
  }
}
