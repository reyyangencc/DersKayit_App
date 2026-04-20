import 'package:flutter/material.dart';
import 'ders_modeli.dart';
import 'detay_sayfasi.dart';
import 'giris_sayfasi.dart';
import 'kayitli_dersler.dart';
import 'ders_programi.dart';

void main() {
  runApp(const UniKayitApp());
}

class UniKayitApp extends StatelessWidget {
  const UniKayitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Üniversite Ders Kayıt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GirisSayfasi(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Ders> filtrelenmisDersler = [];
  List<Ders> kayitliDerslerim = [];

  int get toplamAKTS {
    int toplam = 0;
    for (var ders in kayitliDerslerim) {
      toplam += ders.akts;
    }
    return toplam;
  }

  @override
  void initState() {
    super.initState();
    filtrelenmisDersler = tumDersler;
  }

  void dersAra(String sorgu) {
    setState(() {
      filtrelenmisDersler = tumDersler
          .where((ders) => ders.ad.toLowerCase().contains(sorgu.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text("Ders Kayıt Kataloğu", style: TextStyle(fontSize: 18)),
            Text(
              "Toplam AKTS: $toplamAKTS / 30",
              style: TextStyle(
                fontSize: 12,
                color: (toplamAKTS > 25) ? Colors.orange : Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DersProgramiSayfasi(kayitliListesi: kayitliDerslerim),
                ),
              );
            },
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.collections_bookmark),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KayitliDerslerSayfasi(
                        kayitliListesi: kayitliDerslerim,
                      ),
                    ),
                  );
                },
              ),
              if (kayitliDerslerim.isNotEmpty)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '${kayitliDerslerim.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) => dersAra(value),
              decoration: InputDecoration(
                hintText: "Ders ara...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: filtrelenmisDersler.isEmpty
                ? const Center(child: Text("Aradığınız ders bulunamadı."))
                : ListView.builder(
                    itemCount: filtrelenmisDersler.length,
                    itemBuilder: (context, index) {
                      final ders = filtrelenmisDersler[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        elevation: 2,
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              ders.resim,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            ders.ad,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(ders.kod),
                          trailing: ElevatedButton(
                            onPressed: () async {
                              bool zatenKayitli = kayitliDerslerim.any(
                                (d) => d.kod == ders.kod,
                              );

                              if (zatenKayitli) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "Bu derse zaten kayıtlısınız!",
                                    ),
                                    backgroundColor: Colors.orange,
                                  ),
                                );
                              } else if (toplamAKTS + ders.akts > 30) {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Kredi Sınırı!"),
                                    content: const Text(
                                      "Bu dersi eklerseniz 30 AKTS sınırını aşıyorsunuz.",
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text("Tamam"),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                final gelenDers = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetaySayfasi(secilenDers: ders),
                                  ),
                                );

                                if (gelenDers != null && gelenDers is Ders) {
                                  setState(() {
                                    kayitliDerslerim.add(gelenDers);
                                  });
                                }
                              }
                            },
                            child: const Text("İncele"),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
