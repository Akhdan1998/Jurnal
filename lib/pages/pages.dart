import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jurnal/Models/model_popuptes.dart';
import 'package:jurnal/Models/model_warna_kesukaan.dart';
import 'package:jurnal/Models/Model_kelamin2.dart';
import 'package:jurnal/Models/Model_kelamin3.dart';
import 'package:jurnal/Models/model_button_PA.dart';
import 'package:jurnal/Models/model_button_grafik.dart';
import 'package:jurnal/Models/model_button_imunisasi.dart';
import 'package:jurnal/Models/model_tes.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cross_file/cross_file.dart';
import 'package:jurnal/cubit/buatdataanak_cubit.dart';
import 'package:jurnal/cubit/imunisasi_cubit.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:http/http.dart' as http;
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

part '../widget/bottomsheetImunisasi.dart';

part '../widget/bottomsheetProfil.dart';

part '../widget/bottomsheetTumbuh.dart';

part '../widget/bottomsheetKembang.dart';

part 'ubahprofilanak.dart';

part 'detailperkembangan.dart';

part 'belumimunisasi.dart';

part 'imunisasi.dart';

part 'beratbadan.dart';

part 'Buat data anak.dart';

part 'imunisasidetail.dart';

part 'inputdatakehamilan.dart';

part 'kehamilan.dart';

part 'keguguran.dart';

part 'kembang.dart';

part 'kecillahir.dart';

part 'lingkarkepala.dart';

part 'listsudahimunisasi.dart';
part 'listbelumimunisasi.dart';

part 'listimunisasi.dart';

part 'listAnak.dart';

part 'main.dart';

part 'navigasi.dart';

part '../widget/OnProgres1.dart';

part '../widget/OnProgres2.dart';

part 'profil.dart';

part 'semua.dart';

part 'sudahimunisasi.dart';

part 'tinggibadan.dart';

part 'tumbuh.dart';
