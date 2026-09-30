import 'dart:io';

void main() {
  print("=== DATA KARTU PELAJAR ===");
  stdout.write("Masukkan Nama Lengkap: ");
  String nama = stdin.readLineSync()!;
  stdout.write("Masukkan NISN: ");
  String nisn = stdin.readLineSync()!;
  stdout.write("Masukkan Umur: ");
  int umur = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Nilai Rata-rata Nilai UN: ");
  double nilai = double.parse(stdin.readLineSync()!);

  print("                     ");
  print("=== KARTU PELAJAR SMK NEGERI 3 KENDAL ===");
  print("|Nama   : $nama");
  print("|NISN   : $nisn");
  print("|Umur   : $umur");
  print("|Nilai  : $nilai");
}
