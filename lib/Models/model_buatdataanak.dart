class BuatDataAnak {
  int? id;
  String? user_id;
  String? anak_id;
  String? name;
  String? gender;
  String? birthday;
  String? photo_url;
  int? is_active;
  String? darah;
  String? hobi;
  String? cita_cita;
  String? warna;
  int? berat_lahir;
  int? tinggi_lahir;
  int? lingkar_kepala_lahir;
  dynamic created_at;
  dynamic updated_at;
  dynamic deleted_at;

  BuatDataAnak(
      {this.id,
      this.user_id,
      this.anak_id,
      this.name,
      this.gender,
      this.birthday,
      this.photo_url,
      this.is_active,
      this.darah,
      this.hobi,
      this.cita_cita,
      this.warna,
      this.berat_lahir,
      this.tinggi_lahir,
      this.lingkar_kepala_lahir,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  BuatDataAnak.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user_id = json['user_id'];
    anak_id = json['anak_id'];
    name = json['name'];
    gender = json['gender'];
    birthday = json['birthday'];
    photo_url = json['photo_url'];
    is_active = json['is_active'];
    darah = json['darah'];
    hobi = json['hobi'];
    cita_cita = json['cita_cita'];
    warna = json['warna'];
    berat_lahir = json['berat_lahir'];
    tinggi_lahir = json['tinggi_lahir'];
    lingkar_kepala_lahir = json['lingkar_kepala_lahir'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    deleted_at = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['anak_id'] = anak_id;
    data['name'] = name;
    data['gender'] = gender;
    data['birthday'] = birthday;
    data['photo_url'] = photo_url;
    data['is_active'] = is_active;
    data['darah'] = darah;
    data['hobi'] = hobi;
    data['cita_cita'] = cita_cita;
    data['warna'] = warna;
    data['berat_lahir'] = berat_lahir;
    data['tinggi_lahir'] = tinggi_lahir;
    data['lingkar_kepala_lahir'] = lingkar_kepala_lahir;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    return data;
  }
}
