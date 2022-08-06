import 'package:flutter/cupertino.dart';

class DaftarSiswa {
  String fotoProfil;
  String nama;
  String kelas;
  int absen;
  int noTelpon;

  DaftarSiswa({
    required this.fotoProfil,
    required this.nama,
    required this.kelas,
    required this.absen,
    required this.noTelpon,
  });
}

var dataDaftarSiswa = [
  DaftarSiswa(
    fotoProfil: "images/daffa_profil.jpeg",
    nama: "Daffa Syauqi S.",
    kelas: "11 PPLG 1",
    absen: 13,
    noTelpon: 085811110099,
  ),
  DaftarSiswa(
    fotoProfil: "images/gavra_profil.jpeg",
    nama: "Javier Gavra A.",
    kelas: "11 PPLG 1",
    absen: 19,
    noTelpon: 085866478673,
  ),
  DaftarSiswa(
    fotoProfil: "images/kalam_profil.png",
    nama: "Khoiru Rizal K.",
    kelas: "11 PPLG 1",
    absen: 20,
    noTelpon: 085811112222,
  ),
  DaftarSiswa(
    fotoProfil: "images/wahyu_profil.jpeg",
    nama: "Muh Wahyu Ageng P.",
    kelas: "11 PPLG 1",
    absen: 25,
    noTelpon: 082128066795,
  ),
  DaftarSiswa(
    fotoProfil: "images/firdan_profil.png",
    nama: "Muhammad Firdan A.",
    kelas: "11 PPLG 1",
    absen: 26,
    noTelpon: 082128066795,
  ),
  DaftarSiswa(
    fotoProfil: "images/vitto_profil.png",
    nama: "Muhammad Vitto C.",
    kelas: "11 PPLG 1",
    absen: 28,
    noTelpon: 085817701301,
  ),
  DaftarSiswa(
    fotoProfil: "images/zumar_profil.jpeg",
    nama: "Muhammad Zumar R.",
    kelas: "11 PPLG 1",
    absen: 29,
    noTelpon: 085817701301,
  ),
  DaftarSiswa(
    fotoProfil: "images/rasyid_profil.jpeg",
    nama: "Sinatrya Rasyid F.",
    kelas: "11 PPLG 1",
    absen: 34,
    noTelpon: 0895354880006,
  ),
  DaftarSiswa(
    fotoProfil: "images/kaka_profil.png",
    nama: "Greska Wiranata",
    kelas: "11 PPLG 2",
    absen: 14,
    noTelpon: 0895354880006,
  ),
  DaftarSiswa(
    fotoProfil: "images/ilman_profil.png",
    nama: "Ilman Baruna",
    kelas: "11 PPLG 2",
    absen: 17,
    noTelpon: 0895354880006,
  ),
  DaftarSiswa(
    fotoProfil: "images/putra_profil.png",
    nama: "Putra Pratama",
    kelas: "11 PPLG 2",
    absen: 30,
    noTelpon: 0895354880006,
  ),
];
