import 'model_progresAnak.dart';

class Tekdung {
  int? id;
  int? user_id;
  int? anak_id;
  String? nama_anak;
  String? hpht;
  String? hpl;
  String? usia;
  String? trimester;
  dynamic created_at;
  dynamic updated_at;
  dynamic deleted_at;
  late List<Kehamilan_todolist> hamil;

  Tekdung(
      {this.id,
      this.user_id,
      this.anak_id,
      this.nama_anak,
      this.hpht,
      this.hpl,
      this.usia,
      this.trimester,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      required this.hamil});

  Tekdung.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user_id = json['user_id'];
    anak_id = json['anak_id'];
    nama_anak = json['nama_anak'];
    hpht = json['hpht'];
    hpl = json['hpl'];
    usia = json['usia'];
    trimester = json['trimester'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    deleted_at = json['deleted_at'];
    hamil = (json['hamil'] as Iterable)
        .map((e) => Kehamilan_todolist.fromJson(e))
        .toList();
  }
}
