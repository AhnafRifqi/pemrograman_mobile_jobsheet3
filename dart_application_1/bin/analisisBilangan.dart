import 'dart:io';

void main() {
  print("Program Analisis Bilangan");

  print("Masukkan sebuah angka:");
  int angka = int.parse(stdin.readLineSync()!);

  print("Angka yang dimasukkan: $angka");
}