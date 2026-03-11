import 'dart:io';


void main() {
  List<Map<String, dynamic>> riwayat = [];

  print("Program Analisis Bilangan");

  for (int i = 0; i < 3; i++) {
    print("Masukkan angka ke-${i + 1}: ");
    int angka = int.parse(stdin.readLineSync()!);

    String jenis;
    if (angka % 2 == 0) {
      jenis = "Genap";
    } else {
      jenis = "Ganjil";
    }

    String sifat;
    if (angka >= 0) {
      sifat = "Positif";
    } else {
      sifat = "Negatif";
    }

    riwayat.add({
      'angka': angka,
      'jenis': jenis,
      'sifat': sifat
    });
  }

  print("\nRiwayat Analisis:");

  for (var data in riwayat) {
    print("Angka : ${data['angka']}");
    print("Jenis : ${data['jenis']}");
    print("Sifat : ${data['sifat']}");
    print("-------------------");
  }
}