import 'package:flutter/material.dart';
import 'main.dart'; // Ana sayfaya gitmek için

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Senin tasarımındaki logo ve isim kısmı
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.deepPurple.shade50,
              child: const Icon(
                Icons.auto_stories,
                size: 80,
                color: Colors.deepPurple,
              ), // Kitap okuma ikonu
            ),
            const SizedBox(height: 10),
            const Text(
              "EduPlan",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const Text("Derslerini kolayca takip et"),
            const SizedBox(height: 50),

            // E-mail alanı
            TextField(
              decoration: InputDecoration(
                hintText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: 20),

            // Şifre alanı
            TextField(
              obscureText: true, // Şifreyi gizli yapar
              decoration: InputDecoration(
                hintText: 'Şifre',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.lock_outline),
              ),
            ),
            const SizedBox(height: 30),

            // Giriş Yap Butonu
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  // Giriş başarılı simülasyonu yaparak Ana Sayfa'ya yönlendiriyoruz
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AnaSayfa()),
                  );
                },
                child: const Text("Giriş Yap", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
