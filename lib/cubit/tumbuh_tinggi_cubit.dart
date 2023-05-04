import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurnal/cubit/tumbuh_tinggi_state.dart';
import '../services/tumbuhTinggi_services.dart';

import '../Models/api_return_tumbuhtinggi.dart';
import '../Models/model_tumbuhTinggi.dart';

class TumbuhTinggiCubit extends Cubit<TumbuhTinggiState> {
  TumbuhTinggiCubit() : super(TumbuhTinggiInitial());

  Future<void> gettumbuhTinggi(String token) async {
    ApiReturntumbuhTinggi<List<TumbuhTinggi>>? result =
        await tumbuhTinggiServices.gettumbuhTinggi(token);
    if (result?.value != null) {
      emit(TumbuhTinggiLoaded(tumbuhtinggi: result?.value));
    } else {
      emit(TumbuhTinggiLoadingFailed(result?.message));
    }
  }
}
