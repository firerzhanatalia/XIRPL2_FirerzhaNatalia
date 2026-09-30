import 'dart:io';

void main() {
  //INPUT
  print("== HITUNG LUAS PERSEGI PANJANG ==");
  stdout.write("Masukkan Panjang: ");
  double panjang = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Lebar: ");
  double lebar = double.parse(stdin.readLineSync()!);
  //PROSES
  double luas = panjang * lebar;
  //OUTPUT
  print("Luas persegi panjang adalah : $luas");
}
