part of 'pages.dart';

class sudahimunisasi extends StatefulWidget {
  @override
  State<sudahimunisasi> createState() => _sudahimunisasiState();
}

class _sudahimunisasiState extends State<sudahimunisasi> {
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
            onprogres1(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
