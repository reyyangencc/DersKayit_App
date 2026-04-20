import 'package:flutter/material.dart';
import 'ders_modeli.dart';

class KayitliDerslerSayfasi extends StatefulWidget {
  final List<Ders> kayitliListesi;

  const KayitliDerslerSayfasi({super.key, required this.kayitliListesi});

  @override
  State<KayitliDerslerSayfasi> createState() => _KayitliDerslerSayfasiState();
}

class _KayitliDerslerSayfasiState extends State<KayitliDerslerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıtlı Derslerim"),
        backgroundColor: Colors.green[100],
      ),
      body: widget.kayitliListesi.isEmpty
          ? const Center(child: Text("Henüz bir derse kaydolmadınız."))
          : ListView.builder(
              itemCount: widget.kayitliListesi.length,
              itemBuilder: (context, index) {
                final ders = widget.kayitliListesi[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                    title: Text(ders.ad),
                    subtitle: Text(ders.kod),
                    // SİLME BUTONU BURADA:
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          widget.kayitliListesi.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${ders.ad} kaydı silindi.")),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
