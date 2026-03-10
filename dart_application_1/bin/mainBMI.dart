void main() {
  List<Map<String, dynamic>> riwayat = [];
}

double hitungNilaiBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}