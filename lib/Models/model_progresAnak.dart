class Kehamilan_todolist {
  int? id;
  String? usia;
  String? judul;
  String? berat;
  String? panjang;
  String? jantung;
  String? deskripsi;

  Kehamilan_todolist(
      {this.id,
      this.usia,
      this.judul,
      this.berat,
      this.panjang,
      this.jantung,
      this.deskripsi});

  Kehamilan_todolist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usia = json['usia'];
    judul = json['judul'];
    berat = json['berat'];
    panjang = json['panjang'];
    jantung = json['jantung'];
    deskripsi = json['deskripsi'];
  }
}
