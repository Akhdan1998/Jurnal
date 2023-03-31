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
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: navigation('Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4'),
      ),
    );
  }
}
