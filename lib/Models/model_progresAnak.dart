class AnakProgress {
  int? id;
  String? usia;
  String? judul;
  String? berat;
  String? panjang;
  String? jantung;
  String? deskripsi;

  AnakProgress(
      {this.id,
      this.usia,
      this.judul,
      this.berat,
      this.panjang,
      this.jantung,
      this.deskripsi});

  AnakProgress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usia = json['usia'];
    judul = json['judul'];
    berat = json['berat'];
    panjang = json['panjang'];
    jantung = json['jantung'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['usia'] = usia;
    data['judul'] = judul;
    data['berat'] = berat;
    data['panjang'] = panjang;
    data['jantung'] = jantung;
    data['deskripsi'] = deskripsi;
    return data;
  }
}
