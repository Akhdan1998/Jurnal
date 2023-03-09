part of 'pages.dart';

class riwayatpencatatan extends StatefulWidget {
  @override
  State<riwayatpencatatan> createState() => _riwayatpencatatanState();
}

class _riwayatpencatatanState extends State<riwayatpencatatan> {
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
              'Ubah Data Detail Anak',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    child: Text('Tanggal',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: '414141'.toColor(),
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Text('Tinggi (cm)',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: '414141'.toColor(),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Text('Berat (kg)',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: '414141'.toColor(),
                      ),
                    ),
                  ),
                  Container(
                    width: 75,
                    child: Text('Lingkar Kepala (cm)',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: '414141'.toColor(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: 'ECECEC'.toColor()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      child: Text('11 Februari 2023',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 90,
                      child: Text('11 Februari 2023',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      child: Text('61 cm',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 70,
                      child: Text('60 cm',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      child: Text('-',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 60,
                      child: Text('-',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '414141'.toColor(),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('-',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.delete_outlined, color: 'FF6969'.toColor(), size: 16,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('-',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.delete_outlined, color: 'FF6969'.toColor(), size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
