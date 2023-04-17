import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:jurnal/Models/model_warna_kesukaan.dart';
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
import '../Models/model_color.dart';
import '../Models/model_imunisasi.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Models/model_dataImunisasi.dart';
import '../Models/model_kehamilan.dart';
import '../Models/model_merek.dart';
import '../Models/model_milestones_category.dart';
import '../Models/model_todolist.dart';
import '../cubit/_milestone_kategori_cubit.dart';
import '../cubit/_milestone_kategori_state.dart';
import '../cubit/hpl_cubit.dart';
import '../cubit/hpl_state.dart';
import '../cubit/huruf_cubit.dart';
import '../cubit/huruf_state.dart';
import '../cubit/kehamilan_cubit.dart';
import '../cubit/kehamilan_state.dart';
import '../cubit/merekimunisasi_cubit.dart';
import '../cubit/milestone_cubit.dart';
import '../cubit/temanama_cubit.dart';
import '../cubit/temanama_state.dart';
import '../services/hpl_services.dart';
import '../services/huruf_services.dart';
import '../services/merek_services.dart';
part 'findername/finder.dart';
part 'imunisasi/dataimunisasi.dart';
part 'kehamilan/buatdatakehamilan.dart';
part 'kehamilan/editdatakehamilan.dart';

part 'profil/ubahdatadetailanak.dart';

part 'imunisasi/successimunisasi.dart';

part '../widget/kategori.dart';

part 'tumbuh/riwayatpencatatan.dart';

part 'profil/ubahdatakelahirananak.dart';

part '../widget/pertanyaanTes.dart';

part '../widget/bottomsheet.dart';

part 'profil/ubahprofilanak.dart';

part 'kembang/detailperkembangan.dart';

part 'imunisasi/belumimunisasi.dart';

part 'imunisasi/imunisasi.dart';

part 'tumbuh/beratbadan.dart';

part 'dataAnak/Buat data anak.dart';

part 'imunisasi/imunisasidetail.dart';

part 'kehamilan/inputdatakehamilan.dart';

part 'kehamilan/kehamilan.dart';

part 'kehamilan/sukses_keguguran.dart';

part 'kembang/kembang.dart';

part 'kehamilan/sukses_kecillahir.dart';

part 'tumbuh/lingkarkepala.dart';

part 'imunisasi/listsudahimunisasi.dart';

part 'imunisasi/listbelumimunisasi.dart';

part 'imunisasi/listimunisasi.dart';

part 'dataAnak/listAnak.dart';

part 'dataAnak/main.dart';

part 'dataAnak/navigasi.dart';

part 'profil/profil.dart';

part 'imunisasi/semua.dart';

part 'imunisasi/sudahimunisasi.dart';

part 'tumbuh/tinggibadan.dart';

part 'tumbuh/tumbuh.dart';
