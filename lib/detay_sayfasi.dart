import 'package:flutter/material.dart';
import 'ders_modeli.dart';

class DetaySayfasi extends StatefulWidget {
  final Ders secilenDers;

  const DetaySayfasi({super.key, required this.secilenDers});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.secilenDers.ad),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              // Ders Resmi
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.secilenDers.resim,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image, size: 100, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 25),
              // Ders Bilgileri
              Text(
                widget.secilenDers.ad,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Ders Kodu: ${widget.secilenDers.kod}",
                style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Öğretim Görevlisi"),
                      subtitle: Text(widget.secilenDers.hoca),
                    ),
                    ListTile(
                      leading: const Icon(Icons.location_on),
                      title: const Text("Sınıf"),
                      subtitle: Text(widget.secilenDers.sinif),
                    ),
                    ListTile(
                      leading: const Icon(Icons.access_time),
                      title: const Text("Ders Saati"),
                      subtitle: Text(widget.secilenDers.saat),
                    ),
                    // detay_sayfasi.dart içinde Column içindeki ListTile'ların arasına ekle:
                    ListTile(
                      leading: const Icon(Icons.star, color: Colors.amber),
                      title: const Text("Ders Kredisi (AKTS)"),
                      subtitle: Text("${widget.secilenDers.akts} Kredi"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // KAYIT BUTONU (Kritik Bölge)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      // 1. Bildirim göster
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "${widget.secilenDers.ad} listeye eklendi!",
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );

                      // 2. VERİYİ ANA SAYFAYA GÖNDER VE SAYFAYI KAPAT
                      Navigator.pop(context, widget.secilenDers);
                    },
                    child: const Text(
                      "BU DERSE KAYDOL",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
