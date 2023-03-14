import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jurnal/Models/model_popuptes.dart';
import 'package:jurnal/Models/model_warna_kesukaan.dart';
import 'package:jurnal/Models/model_tes.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jurnal/cubit/buatdataanak_cubit.dart';
import 'package:jurnal/cubit/imunisasi_cubit.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:http/http.dart' as http;
import '../Models/api_return_foto.dart';
import '../Models/api_return_merek.dart';
import '../Models/model_buatdataanak.dart';
import '../Models/model_cubit_imunisasi.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Models/model_dataImunisasi.dart';
import '../Models/model_merek.dart';
import '../cubit/merekimunisasi_cubit.dart';
import '../services/merek_services.dart';

part 'dataimunisasi.dart';

part 'ubahdatadetailanak.dart';

part 'successimunisasi.dart';

part '../widget/kategori.dart';

part 'riwayatpencatatan.dart';

part 'ubahdatakelahirananak.dart';

part '../widget/pertanyaanTes.dart';

part '../widget/bottomsheet.dart';

part 'ubahprofilanak.dart';

part 'detailperkembangan.dart';

part 'belumimunisasi.dart';

part 'imunisasi.dart';

part 'beratbadan.dart';

part 'Buat data anak.dart';

part 'imunisasidetail.dart';

part 'inputdatakehamilan.dart';

part 'kehamilan.dart';

part 'sukses_keguguran.dart';

part 'kembang.dart';

part 'sukses_kecillahir.dart';

part 'lingkarkepala.dart';

part 'listsudahimunisasi.dart';

part 'listbelumimunisasi.dart';

part 'listimunisasi.dart';

part 'listAnak.dart';

part 'main.dart';

part 'navigasi.dart';

part 'profil.dart';

part 'semua.dart';

part 'sudahimunisasi.dart';

part 'tinggibadan.dart';

part 'tumbuh.dart';
