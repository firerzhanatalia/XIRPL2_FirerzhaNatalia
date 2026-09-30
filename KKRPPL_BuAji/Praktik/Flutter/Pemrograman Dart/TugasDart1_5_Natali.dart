import 'dart:io';

void main() {
  print("=== HITUNG NILAI BMI ===");
  stdout.write("Masukkan Berat Badan(kg): ");
  double berat = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Tinggi Badan(cm): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  double tinggim = tinggi / 100;
  double bmi = berat / (tinggim * tinggim);
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Berlebih";
  } else {
    kategori = "Obesitas";
  }

  print("       ");
  print("=== HASIL NILAI BMI ===");
  print("Tinggi Badan: $tinggim m");
  print("BMI: $bmi");
  print("Kategori: $kategori");
}
