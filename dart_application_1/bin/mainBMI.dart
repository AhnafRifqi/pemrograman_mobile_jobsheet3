void main() {
  List<Map<String, dynamic>> riwayat = [];

  prosesBMI(170, 65, riwayat);
  prosesBMI(165, 75, riwayat);
  prosesBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
}

void prosesBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  if (!validasiInput(tinggiCm, beratKg)) return;

  double bmi = hitungNilaiBMI(tinggiCm, beratKg);

  String kategori;

  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori
  });
}


bool validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid");
    return false;
  }
  return true;
}

double hitungNilaiBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  for (var data in riwayat) {
    print("Tinggi: ${data['tinggi']} cm");
    print("Berat: ${data['berat']} kg");
    print("BMI: ${data['bmi']}");
    print("Kategori: ${data['kategori']}");
    print("------------------");
  }
}
