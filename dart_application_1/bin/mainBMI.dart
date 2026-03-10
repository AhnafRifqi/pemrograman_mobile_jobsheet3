void main() {
  List<Map<String, dynamic>> riwayat = [];
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