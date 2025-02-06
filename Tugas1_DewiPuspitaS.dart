import 'dart:io';

void main(){
  String penentu = "";
  List<String> historis = [];
  var hasil, luas;
  print("\nDewi Puspita Sari || 607062300020\n");
    do{
      print("============== Pilih Menu ==============");
      print("1. Menghitung Luas Segitiga");
      print("2. Menghitung Luas Persegi");
      print("3. Menghitung Luas Persegi Panjang");
      print("4. Histori aplikasi");
      print("========================================"); 

      stdout.write("Masukkan Pilihan: ");
      int pilihan;
      try {
        pilihan = int.parse(stdin.readLineSync()!);
      } catch (e) {
        print("Input tidak valid, mohon masukkan angka");
        continue;
      }

      print("========================================");

      switch(pilihan){
        case 1:
          int alas = 0, tinggi = 0;
          try {
            stdout.write("Masukkan alas: ");
            alas = int.parse(stdin.readLineSync()!);
            stdout.write("Masukkan tinggi: ");
            tinggi = int.parse(stdin.readLineSync()!);
          } catch (e) {
            print("Harap memasukkan angka");
            break;
          }
          luas = hitungLuasSegitiga(alas, tinggi);
          hasil = ("Hasil dari luas Segitiga adalah: $luas");
          print(hasil);
          historis.add(hasil);
          break;
        case 2:
          int sisi = 0;
          try {
            stdout.write("Masukkan sisi: ");
            sisi = int.parse(stdin.readLineSync()!);
          } catch (e) {
            print("Harap memasukkan angka");
            break;
          }
          luas = hitungLuasPersegi(sisi);
          hasil = ("Hasil dari luas Persegi adalah: $luas");
          print(hasil);
          historis.add(hasil);
          break;
        case 3:
          int panjang = 0, lebar = 0;
          try {
            stdout.write("Masukkan panjang: ");
            panjang = int.parse(stdin.readLineSync()!);
            stdout.write("Masukkan Lebar: ");
            lebar = int.parse(stdin.readLineSync()!);
          } catch (e) {
            print("Harap memasukkan angka");
            break;
          }
          luas = hitungLuasPersegiPanjang(panjang, lebar);
          hasil = ("Hasil dari luas Persegi Panjang adalah: $luas");
          print(hasil);
          historis.add(hasil);
          break;
        case 4:
            print("Berikut adalah histori penggunaan:\n");
            historis.forEach((histori){
              print(histori);
            });
            break;
        default:
          stdout.write("Maaf pilihan mu tidak ada di menu!\n");
          break;
      }
      print("========================================");
      print("Apakah anda ingin menghitung kembali? Y/y jika ingin melanjutkan");
      penentu = stdin.readLineSync()!;
      print("========================================");
    }while(lanjut(penentu));
}

double hitungLuasSegitiga(int alas, int tinggi) => (alas * tinggi) / 2;

int hitungLuasPersegi(int sisi) => sisi * sisi;

int hitungLuasPersegiPanjang(int panjang, int lebar) => panjang * lebar;

bool lanjut(String masukkan){
  if(masukkan == "y" || masukkan == "Y"){
    return true;
  }else{
    return false;
  }
}