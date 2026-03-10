void main() {
  List<Map<String, dynamic>> riwayat = [];
}

double hitungNilaiBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}


bool validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid");
    return false;
  }
  return true;
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
