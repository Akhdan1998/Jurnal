class Pertumbuhan {
  String? user_id;
  String? anak_id;
  double? tinggi;
  double? berat;
  double? lingkar_kepala;
  String? checked_at;

  Pertumbuhan(
      {this.user_id,
      this.anak_id,
      this.tinggi,
      this.berat,
      this.lingkar_kepala,
      this.checked_at});

  Pertumbuhan.fromJson(Map<String, dynamic> json) {
    user_id = json['user_id'];
    anak_id = json['anak_id'];
    tinggi = (json['tinggi'] != null) ? json['tinggi'].toDouble() : 0.0;
    berat = (json['berat'] != null) ? json['berat'].toDouble() : 0.0;
    lingkar_kepala = (json['lingkar_kepala']!= null) ? json['lingkar_kepala'].toDouble() : 0.0;
    checked_at = json['checked_at'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = user_id;
    data['anak_id'] = anak_id;
    data['tinggi'] = tinggi;
    data['berat'] = berat;
    data['lingkar_kepala'] = lingkar_kepala;
    data['checked_at'] = checked_at;
    return data;
  }
}
