import 'package:flutter_bloc/flutter_bloc.dart';

import '../Models/api_return_lk.dart';
import '../Models/model_lk.dart';
import '../services/lk_services.dart';
import 'lk_state.dart';

class LkCubit extends Cubit<LkState> {
  LkCubit() : super(LkInitial());

  Future<void> getLk(String token) async {
    ApiReturnLk<List<Lk>>? result = await LkServices.getLk(token);
    if (result?.value != null) {
      emit(LkLoaded(lk: result?.value));
    } else {
      emit(LkLoadingFailed(result?.message));
    }
  }
}
