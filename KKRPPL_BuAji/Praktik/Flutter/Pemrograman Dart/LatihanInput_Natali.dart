import 'dart:io';

void main() {
  stdout.write("Masukkan Nama: ");
  String Nama = stdin.readLineSync()!;

  stdout.write("Masukkan Umur: ");
  int Umur = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Tinggi Badan: ");
  double tinggi = double.parse(stdin.readLineSync()!);

  bool isAktif = true;
  var sekolah = "SMK NEGERI 3 KENDAL";

  print("Sekolah: $sekolah");
  print("Status:  $isAktif");
}
