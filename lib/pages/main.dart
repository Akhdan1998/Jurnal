part of 'pages.dart';

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
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: navigation('Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK'),
      ),
    );
  }
}
