import 'dart:io';

void main() {
  print("=== Hitung Luas & Keliling Segitiga ===");
  //INPUT LUAS
  print("== HITUNG LUAS SEGITIGA ==");
  stdout.write("Masukkan Alas: ");
  double alas = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Tinggi: ");
  double tinggi = double.parse(stdin.readLineSync()!);
  //PROSES
  double luas = 1 / 2 * alas * tinggi;
  //OUTPUT
  print("Luas Segitiga adalah: $luas");
  print("=== HITUNG KELILING SEGITIGA ===");
  //INPUT
  stdout.write("Masukkan Sisi Segitiga 1: ");
  double sisi1 = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Sisi Segitiga 2: ");
  double sisi2 = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Sisi Setiga 3: ");
  double sisi3 = double.parse(stdin.readLineSync()!);
  //PROSES
  double keliling = sisi1 + sisi2 + sisi3;
  //OUTPUT
  print("Keliling Segitiga adalah: $keliling");
}
