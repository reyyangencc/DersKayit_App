class Ders {
  final String ad;
  final String kod;
  final String hoca;
  final String sinif;
  final String saat;
  final String gun;
  final String resim;
  final int akts; // Yarınki kredi kontrolü için ekledik

  Ders({
    required this.ad,
    required this.kod,
    required this.hoca,
    required this.sinif,
    required this.saat,
    required this.gun,
    required this.resim,
    required this.akts,
  });
}

List<Ders> tumDersler = [
  // PAZARTESİ DERSLERİ (Görsel 2)
  Ders(
    ad: "Matematik",
    kod: "MAT101",
    hoca: "Dr. Nurcan ARIKAN",
    sinif: "B103",
    saat: "09:00 - 11:00",
    gun: "Pazartesi",
    akts: 6,
    resim: "https://picsum.photos/id/10/200",
  ),
  Ders(
    ad: "Fizik",
    kod: "FZK101",
    hoca: "Prof. Dr. Aslı ER",
    sinif: "B108",
    saat: "11:00 - 13:00",
    gun: "Pazartesi",
    akts: 6,
    resim: "https://picsum.photos/id/20/200",
  ),
  Ders(
    ad: "Algoritmaya Giriş",
    kod: "BİL101",
    hoca: "Dr. Ahmet YILMAZ",
    sinif: "A102",
    saat: "14:00 - 16:00",
    gun: "Pazartesi",
    akts: 7,
    resim: "https://picsum.photos/id/30/200",
  ),

  // SALI DERSLERİ (Görsel 3)
  Ders(
    ad: "Algoritmaya Giriş Lab.",
    kod: "BİL101-L",
    hoca: "Dr. Ahmet YILMAZ",
    sinif: "Lab-3",
    saat: "11:00 - 13:00",
    gun: "Salı",
    akts: 2,
    resim: "https://picsum.photos/id/40/200",
  ),
  Ders(
    ad: "Fizik Lab.",
    kod: "FZK101-L",
    hoca: "Prof. Dr. Aslı ER",
    sinif: "Lab-12",
    saat: "13:00 - 15:00",
    gun: "Salı",
    akts: 2,
    resim: "https://picsum.photos/id/50/200",
  ),
  Ders(
    ad: "Türkçe",
    kod: "TUR101",
    hoca: "Dr. Ali VELİ",
    sinif: "Online",
    saat: "16:00 - 18:00",
    gun: "Salı",
    akts: 2,
    resim: "https://picsum.photos/id/60/200",
  ),

  // ÇARŞAMBA DERSLERİ (Görsel 4)
  Ders(
    ad: "Müh. Prensipleri",
    kod: "MUH101",
    hoca: "Dr. Selim AK",
    sinif: "Konf.",
    saat: "09:00 - 11:00",
    gun: "Çarşamba",
    akts: 5,
    resim: "https://picsum.photos/id/70/200",
  ),
  Ders(
    ad: "Matematik (Uygulama)",
    kod: "MAT101-U",
    hoca: "Dr. Nurcan ARIKAN",
    sinif: "B103",
    saat: "12:00 - 14:00",
    gun: "Çarşamba",
    akts: 2,
    resim: "https://picsum.photos/id/11/200",
  ),

  // PERŞEMBE DERSLERİ (Görsel 5)
  Ders(
    ad: "İngilizce",
    kod: "ING101",
    hoca: "Dr. John DOE",
    sinif: "Online",
    saat: "11:00 - 13:00",
    gun: "Perşembe",
    akts: 3,
    resim: "https://picsum.photos/id/80/200",
  ),

  // CUMA DERSLERİ (Görsel 1)
  Ders(
    ad: "Kariyer Planlama",
    kod: "KAR101",
    hoca: "Dr. Ece MERT",
    sinif: "Online",
    saat: "09:00 - 11:00",
    gun: "Cuma",
    akts: 2,
    resim: "https://picsum.photos/id/90/200",
  ),

  // EKSTRA DERSLER (Talep ettiğin diğer dersler)
  Ders(
    ad: "Lineer Cebir",
    kod: "MAT201",
    hoca: "Dr. Hasan CAN",
    sinif: "C105",
    saat: "14:00 - 17:00",
    gun: "Çarşamba",
    akts: 5,
    resim: "https://picsum.photos/id/101/200",
  ),
  Ders(
    ad: "Veri Tabanı",
    kod: "BİL202",
    hoca: "Dr. Fatma GÜL",
    sinif: "Lab-5",
    saat: "09:00 - 12:00",
    gun: "Perşembe",
    akts: 6,
    resim: "https://picsum.photos/id/102/200",
  ),
  Ders(
    ad: "İspanyolca",
    kod: "ISP101",
    hoca: "Marta GARCIA",
    sinif: "D201",
    saat: "15:00 - 17:00",
    gun: "Cuma",
    akts: 4,
    resim: "https://picsum.photos/id/103/200",
  ),
  Ders(
    ad: "Web Geliştirme",
    kod: "BİL301",
    hoca: "Dr. Kerem YILDIZ",
    sinif: "Online",
    saat: "18:00 - 21:00",
    gun: "Salı",
    akts: 6,
    resim: "https://picsum.photos/id/104/200",
  ),
];
