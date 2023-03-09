part of 'pages.dart';

class kecillahir extends StatefulWidget {
  @override
  State<kecillahir> createState() => _kecillahirState();
}

class _kecillahirState extends State<kecillahir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: '888888'.toColor(),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Tandai Si Kecil Sudah Lahir',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/successkecillahir.png',
              scale: 2,
            ),
            SizedBox(height: 25),
            Text(
              'Selamat Si Kecil Sudah Lahir',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: '323232'.toColor(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              child: Text(
                'Untuk memantau pertumbuhan dan perkembangan bayi, isi jurnal parent ini yuk!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: '989797'.toColor(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 114,
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.offAll(navigation('Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK'));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: 'FF6969'.toColor(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Kembali Ke Jurnal Parent',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: 'FFFFFF'.toColor(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Get.offAll(navigation('Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK'));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 39,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: 'FF6969'.toColor()),
                ),
                child: Text(
                  'Batalkan',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: 'FF6969'.toColor(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
