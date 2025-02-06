import 'dart:io';

abstract class Kendaraan implements Pergerakan {
  int kecepatan;

  Kendaraan(this.kecepatan);

  void startEngine() {}

  int getKecepatan() {
    return kecepatan;
  }
}

interface class Pergerakan {
  void bergerak() {
    print("Kendaraan ini bergerak");
  }
}

class Mobil extends Kendaraan {
  Mobil(super.kecepatan);

  @override
  void startEngine() {
    print("Mobil menyalakan mesin");
  }

  @override
  void bergerak() {
    print("Mobil bergerak dengan kecepatan $kecepatan");
  }
}

class Sepeda extends Kendaraan {
  Sepeda(super.kecepatan);

  @override
  void startEngine() {
    print("Sepeda tidak memiliki mesin");
  }

  @override
  void bergerak() {
    print("Sepeda bergerak dengan kecepatan $kecepatan Km/h");
  }
}

void main() {
  String penentu = "";
  List<Mobil> historisMobil = [];
  List<Sepeda> historisSepeda = [];
  int kecepatan = 0;

  print("\nDewi Puspita Sari || 607062300020\n");
  do {
    print("========== Pilih Menu ==========");
    print("1. Memasukkan kecepatan Mobil");
    print("2. Memasukkan kecepatan Sepeda");
    print("3. Tampilkan kecepatan Mobil");
    print("4. Tampilkan kecepatan Sepeda");
    print("================================");

    stdout.write("Masukkan angka pilihan: ");
    int pilihan = 0;
    try {
      pilihan = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Maaf, angka yang di pilih tidak tersedia");
    }
    print("================================");

    switch (pilihan) {
      case 1:
        stdout.write("Masukkan kecepatan: ");
        kecepatan = int.parse(stdin.readLineSync()!);
        Mobil mobil = new Mobil(kecepatan);
        mobil.startEngine();
        mobil.bergerak();
        historisMobil.add(mobil);
        break;
      case 2:
        stdout.write("Masukkan kecepatan: ");
        kecepatan = int.parse(stdin.readLineSync()!);
        Sepeda sepeda = new Sepeda(kecepatan);
        sepeda.startEngine();
        sepeda.bergerak();
        historisSepeda.add(sepeda);
        break;
      case 3:
        print("Berikut adalah histori Mobil:\n");
        for (var m in historisMobil) {
          print("Mobil dengan kecepatan ${m.kecepatan} Km/h");
        }
        break;
      case 4:
        print("Berikut adalah histori Sepeda:\n");
        for (var m in historisSepeda) {
          print("Sepeda dengan kecepatan ${m.kecepatan} Km/h");
        }
        break;
      default:
        print("Maaf nomor yang kamu pilih tidak tersedia");
        break;
    }
    print("================================");
    print("Apakah anda mau lanjut? Y || y jika ingin melanjutkan");
    penentu = stdin.readLineSync()!;
    print("================================");
  } while (lanjut(penentu));
}

bool lanjut(String masukkan) {
  if (masukkan == "y" || masukkan == "Y") {
    return true;
  } else {
    return false;
  }
}
