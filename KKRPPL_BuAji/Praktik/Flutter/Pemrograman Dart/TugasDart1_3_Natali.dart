import 'dart:io';

void main() {
  print("=== HITUNG TOTAL BELANJA ===");
  stdout.write("Nama Barang: ");
  String barang = stdin.readLineSync()!;
  stdout.write("Harga Satuan: ");
  double harga = double.parse(stdin.readLineSync()!);
  stdout.write("Jumlah Pembelian: ");
  int jumlah = int.parse(stdin.readLineSync()!);

  double total = harga * jumlah;

  print("=== RINCIAN BELANJA ===");
  print("Barang: $barang");
  print("Jumlah: $jumlah");
  print("Total Harga: $total");
}
