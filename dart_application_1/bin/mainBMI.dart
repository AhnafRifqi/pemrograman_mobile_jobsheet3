void main() {
  List<Map<String, dynamic>> riwayat = [];
}

bool validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid");
    return false;
  }
  return true;
}