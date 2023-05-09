part of '../pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ImunisasiCubit()),
        BlocProvider(create: (_) => MerekimunisasiCubit()),
        BlocProvider(create: (_) => BuatdataanakCubit()),
        BlocProvider(create: (_) => MilestoneCubit()),
        BlocProvider(create: (_) => KategoriCubit()),
        BlocProvider(create: (_) => KehamilanCubit()),
        BlocProvider(create: (_) => HplCubit()),
        BlocProvider(create: (_) => TemaCubit()),
        BlocProvider(create: (_) => HurufCubit()),
        BlocProvider(create: (_) => TumbuhTinggiCubit()),
        BlocProvider(create: (_) => TumbuhBeratCubit()),
        BlocProvider(create: (_) => TumbuhLkCubit()),
        BlocProvider(create: (_) => TinggiCubit()),
        BlocProvider(create: (_) => BeratCubit()),
        BlocProvider(create: (_) => LkCubit()),
        BlocProvider(create: (_) => GrafikTinggiCubit()),
        BlocProvider(create: (_) => GrafikBeratCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            navigation('Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4'),
      ),
    );
  }
}
