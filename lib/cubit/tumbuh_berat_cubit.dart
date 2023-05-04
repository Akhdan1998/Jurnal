import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurnal/cubit/tumbuh_berat_state.dart';
import '../Models/api_return_tumbuhberat.dart';
import '../Models/model_tumbuhBerat.dart';
import '../services/tumbuhBerat_services.dart';

class TumbuhBeratCubit extends Cubit<TumbuhBeratState> {
  TumbuhBeratCubit() : super(TumbuhBeratInitial());

  Future<void> gettumbuhBerat(String token) async {
    ApiReturntumbuhBerat<List<TumbuhBerat>>? result =
        await tumbuhBeratServices.gettumbuhBerat(token);
    if (result?.value != null) {
      emit(TumbuhBeratLoaded(tumbuhBerat: result?.value));
    } else {
      emit(TumbuhBeratLoadingFailed(result?.message));
    }
  }
}
