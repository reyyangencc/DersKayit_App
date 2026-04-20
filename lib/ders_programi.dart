import 'package:flutter/material.dart';
import 'ders_modeli.dart';

class DersProgramiSayfasi extends StatelessWidget {
  final List<Ders> kayitliListesi;

  const DersProgramiSayfasi({super.key, required this.kayitliListesi});

  @override
  Widget build(BuildContext context) {
    // Günleri sıralı bir liste yapalım
    List<String> haftaninGunleri = [
      "Pazartesi",
      "Salı",
      "Çarşamba",
      "Perşembe",
      "Cuma",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Haftalık Ders Programı")),
      body: ListView.builder(
        itemCount: haftaninGunleri.length,
        itemBuilder: (context, index) {
          String gun = haftaninGunleri[index];
          // O güne ait dersleri filtrele
          var oGununDersleri = kayitliListesi
              .where((d) => d.gun == gun)
              .toList();

          return ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              gun,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            children: oGununDersleri.isEmpty
                ? [const ListTile(title: Text("Bu gün dersiniz yok."))]
                : oGununDersleri
                      .map(
                        (ders) => ListTile(
                          leading: const Icon(Icons.alarm, color: Colors.blue),
                          title: Text(ders.ad),
                          subtitle: Text("${ders.saat} | ${ders.sinif}"),
                        ),
                      )
                      .toList(),
          );
        },
      ),
    );
  }
}
