part of 'pages.dart';

class ubahdataanak extends StatefulWidget {
  @override
  State<ubahdataanak> createState() => _ubahdataanakState();
}

class _ubahdataanakState extends State<ubahdataanak> {
  final namaAnak = TextEditingController();
  final tanggalLahir = TextEditingController();
  String selectedKelamin3 = '';
  List<ButtonKelamin3> button = [
    ButtonKelamin3(
      id: '1',
      kelamin: 'Laki - laki',
    ),
    ButtonKelamin3(
      id: '2',
      kelamin: 'Perempuan',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              'Buat Data Anak',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: '747474'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 130,
                      height: 130,
                      child: Image.asset('assets/foto.png'),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 90,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: 'FF6969'.toColor(),
                      ),
                      // padding: EdgeInsets.only(top: 55, left: 65),
                      child: Icon(Icons.edit, color: Colors.white, size: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Anak',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '5A5A5A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 40,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: TextField(
                      controller: namaAnak,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                          BorderSide(width: 1, color: 'FF6969'.toColor()),
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        hintStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: '989797'.toColor(),
                        ),
                        hintText: 'Nama panggilan',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tanggal Lahir',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '5A5A5A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 40,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: TextField(
                      controller: tanggalLahir,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.date_range,
                          size: 20,
                          color: '8F8F8F'.toColor(),
                        ),
                        hintStyle: GoogleFonts.poppins().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: '989797'.toColor(),
                        ),
                        hintText: '24 Maret 1998',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                          BorderSide(width: 1, color: 'FF6969'.toColor()),
                        ),
                        contentPadding:
                        EdgeInsets.only(top: 5, left: 10, bottom: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1945),
                            lastDate: DateTime(2500));

                        if (pickeddate != null) {
                          setState(() {
                            tanggalLahir.text =
                                DateFormat('yMMMMd').format(pickeddate);
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jenis Kelamin',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '5A5A5A'.toColor(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedKelamin3 = '1';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 1,
                                        color: (selectedKelamin3 == '1')
                                            ? 'FF6969'.toColor()
                                            : 'E2E2E2'.toColor(),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(3),
                                    child: Image.asset('assets/laki.png',
                                        scale: 1),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Laki - laki',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '5A5A5A'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedKelamin3 = '2';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 1,
                                        color: (selectedKelamin3 == '2')
                                            ? 'FF6969'.toColor()
                                            : 'E2E2E2'.toColor(),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(3),
                                    child:
                                    Image.asset('assets/cwe.png', scale: 1),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Perempuan',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '5A5A5A'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
        child: GestureDetector(
          onTap: () {
            Get.off(navigation('Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK'));
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 40,
            decoration: BoxDecoration(
              color: 'FF6969'.toColor(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Simpan Data Anak',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
