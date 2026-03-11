import 'dart:io';

void main() {
  print("Program Analisis Bilangan");

  print("Masukkan sebuah angka:");
  int angka = int.parse(stdin.readLineSync()!);

  if (angka % 2 == 0) {
    print("Bilangan Genap");
  } else {
    print("Bilangan Ganjil");
  }

   if (angka >= 0) {
    print("Bilangan Positif");
  } else {
    print("Bilangan Negatif");
  }
}