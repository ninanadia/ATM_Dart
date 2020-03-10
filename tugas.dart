import "dart:io";

void main() {
  stdout.write("-------ATM Sederhana--------\n");
  stdout.write("Username : ");
  var username = stdin.readLineSync();
  stdout.write("Password : ");
  var password = stdin.readLineSync();

  if (username == "nina" && password == "123456") {
    int saldo = 3000000;
    menuTransaksi(saldo);
  } else if (username == "nadia" && password == "987654") {
    int saldo = 3000000;
    menuTransaksi(saldo);
  } else {
    print("Password atau username yang anda masukkan tidak sesuai");
    main();
  }
}

void menuTransaksi(saldo) {
  var dataList = ["1. Tarik Tunai", "2. Setor tunai", "3. Cek Saldo"];
  print(dataList);
  print("Masukkan Pilihan Anda : ");
  int pilih = int.parse(stdin.readLineSync());
  if (pilih == 1) {
    print("Masukkan Nominal Tarik Tunai : ");
    int nominal = int.parse(stdin.readLineSync());
    saldo = saldo - nominal;
    print("Saldo anda sisa $saldo");
    print("Lanjutkan Transaksi ? [Y/T]");
    var jawab = stdin.readLineSync();
    if (jawab == "Y") {
      menuTransaksi(saldo);
    } else {
      print("Terimakasih Telah Melakukan Transaksi");
    }
  } else if (pilih == 2) {
    print("Masukkan Nominal Setor Tunai : ");
    int nominal = int.parse(stdin.readLineSync());
    saldo = saldo + nominal;
    print("Saldo anda sisa $saldo");
    print("Lanjutkan Transaksi ? [Y/T]");
    var jawab = stdin.readLineSync();
    if (jawab == "Y") {
      menuTransaksi(saldo);
    } else {
      print("Terimakasih Telah Melakukan Transaksi");
    }
  } else if (pilih == 3) {
    print("Sisa Saldo Anda Adalah $saldo");
    if (pilih == 1) {
      print("Masukkan Nominal Tarik Tunai : ");
      int nominal = int.parse(stdin.readLineSync());
      saldo = saldo - nominal;
      print("Saldo anda sisa $saldo");
      print("Lanjutkan Transaksi ? [Y/T]");
      var jawab = stdin.readLineSync();
      if (jawab == "Y") {
        menuTransaksi(saldo);
      } else {
        print("Terimakasih Telah Melakukan Transaksi");
      }
    } else {
      main();
    }
  }
}
