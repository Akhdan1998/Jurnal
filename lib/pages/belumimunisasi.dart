part of 'pages.dart';

class belumimunisasi extends StatefulWidget {
  @override
  State<belumimunisasi> createState() => _belumimunisasiState();
}

class _belumimunisasiState extends State<belumimunisasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            onprogres2(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
