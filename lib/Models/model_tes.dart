import 'package:jurnal/Models/model_popuptes.dart';

class Tes {
  late final String? id;
  late final String? judul;
  late final String? deskripsiKategori;
  late final String? tombol;
  late final String? image;
  late final String? color1;
  late final String? color2;
  late final List<PopupTes>? listTes;

  Tes(
      {this.id,
      this.judul,
      this.deskripsiKategori,
      this.tombol,
      this.image,
      this.color1,
      this.color2,
      this.listTes});
}
