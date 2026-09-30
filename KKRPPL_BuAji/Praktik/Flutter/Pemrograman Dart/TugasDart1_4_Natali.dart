import 'dart:io';

void main() {
  print("=== KONVERSI DETIK KE MENIT ===");
  stdout.write("Total Detik: ");
  int detik = int.parse(stdin.readLineSync()!);

  int menit = detik ~/ 60;
  double sisa = detik % 60;

  print("        ");
  print("=== HASIL KONVERSI ===");
  print("$detik detik = $menit menit dan $sisa detik");
}
