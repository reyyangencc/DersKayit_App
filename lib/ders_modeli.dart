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
    resim:
        "https://plus.unsplash.com/premium_vector-1722586231105-a190495ce48a?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Fizik",
    kod: "FZK101",
    hoca: "Prof. Dr. Aslı ER",
    sinif: "B108",
    saat: "11:00 - 13:00",
    gun: "Pazartesi",
    akts: 6,
    resim:
        "https://plus.unsplash.com/premium_vector-1723184441518-87733f924445?q=80&w=1131&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Algoritmaya Giriş",
    kod: "BİL101",
    hoca: "Dr. Ahmet YILMAZ",
    sinif: "A102",
    saat: "14:00 - 16:00",
    gun: "Pazartesi",
    akts: 7,
    resim:
        "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
    resim:
        "https://plus.unsplash.com/premium_photo-1661882403999-46081e67c401?q=80&w=1129&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Fizik Lab.",
    kod: "FZK101-L",
    hoca: "Prof. Dr. Aslı ER",
    sinif: "Lab-12",
    saat: "13:00 - 15:00",
    gun: "Salı",
    akts: 2,
    resim:
        "https://plus.unsplash.com/premium_photo-1742926583034-d750896fcafd?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Türkçe",
    kod: "TUR101",
    hoca: "Dr. Ali VELİ",
    sinif: "Online",
    saat: "16:00 - 18:00",
    gun: "Salı",
    akts: 2,
    resim:
        "https://plus.unsplash.com/premium_photo-1731535536714-6d6fd90ae36d?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
    resim:
        "https://images.unsplash.com/photo-1581092160607-ee22621dd758?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Matematik (Uygulama)",
    kod: "MAT101-U",
    hoca: "Dr. Nurcan ARIKAN",
    sinif: "B103",
    saat: "12:00 - 14:00",
    gun: "Çarşamba",
    akts: 2,
    resim:
        "https://images.unsplash.com/photo-1596495577886-d920f1fb7238?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
    resim:
        "https://images.unsplash.com/photo-1518082593638-b6e73b35d39a?q=80&w=1168&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
    resim:
        "https://plus.unsplash.com/premium_photo-1683749805442-dd033af82294?q=80&w=715&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
    resim:
        "https://images.unsplash.com/photo-1509228468518-180dd4864904?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Veri Tabanı",
    kod: "BİL202",
    hoca: "Dr. Fatma GÜL",
    sinif: "Lab-5",
    saat: "09:00 - 12:00",
    gun: "Perşembe",
    akts: 6,
    resim:
        "https://plus.unsplash.com/premium_vector-1734662648778-ca3ca43e7739?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "İspanyolca",
    kod: "ISP101",
    hoca: "Marta GARCIA",
    sinif: "D201",
    saat: "15:00 - 17:00",
    gun: "Cuma",
    akts: 4,
    resim:
        "https://images.unsplash.com/photo-1489945052260-4f21c52268b9?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Ders(
    ad: "Web Geliştirme",
    kod: "BİL301",
    hoca: "Dr. Kerem YILDIZ",
    sinif: "Online",
    saat: "18:00 - 21:00",
    gun: "Salı",
    akts: 6,
    resim:
        "https://plus.unsplash.com/premium_photo-1685086785230-2233cf5d8f28?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
];
