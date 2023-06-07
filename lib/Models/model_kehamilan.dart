import 'model_progresAnak.dart';

class Kelahiran {
  int? id;
  String? user_id;
  int? anak_id;
  String? nama_anak;
  String? hpht;
  String? hpl;
  double? progress;
  int? usia;
  int? trimester;
  late AnakProgress? anakProgress;
  dynamic created_at;
  dynamic updated_at;
  dynamic deleted_at;

  Kelahiran(
      {this.id,
      this.user_id,
      this.anak_id,
      this.nama_anak,
      this.hpht,
      this.hpl,
      this.progress,
      this.usia,
      this.trimester,
      required this.anakProgress,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  Kelahiran.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user_id = json['user_id'];
    anak_id = json['anak_id'];
    nama_anak = json['nama_anak'];
    hpht = json['hpht'];
    hpl = json['hpl'];
    progress = json['progress'].toDouble();
    usia = json['usia'];
    trimester = json['trimester'];
    anakProgress = (json['anak_progress'] != null)
        ? AnakProgress.fromJson(json['anak_progress'])
        : null;
    created_at = json['created_at'];
    updated_at = json['updated_at'];
    deleted_at = json['deleted_at'];
  }
}
