part of '../pages.dart';

class semuaData extends StatefulWidget {
  @override
  State<semuaData> createState() => _semuaDataState();
}

class _semuaDataState extends State<semuaData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: 'FF6969'.toColor(),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: 'FFFFFF'.toColor(),
                ),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Buat Data Pertumbuhan',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
