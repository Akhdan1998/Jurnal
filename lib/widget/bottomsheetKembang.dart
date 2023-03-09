part of '../pages/pages.dart';

class bottomsheetKembang extends StatefulWidget {
  @override
  State<bottomsheetKembang> createState() => _bottomsheetKembangState();
}

class _bottomsheetKembangState extends State<bottomsheetKembang> {
  String selectedRadioKembang = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pilih Profil Anak :',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor(),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(dataanak());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Buat Data Anak',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: 'FF6969'.toColor(),
                        ),
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.add_outlined,
                        color: 'FF6969'.toColor(),
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRadioKembang = '1';
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/cwe.png',
                    scale: 2,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '5C5C5C'.toColor(),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '7A7A7A'.toColor(),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: (selectedRadioKembang == '1')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(width: 1, color: 'A0A0A0'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: 'E5E3E3'.toColor()),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRadioKembang = '2';
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/lakidark.png', scale: 2),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '5C5C5C'.toColor(),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '7A7A7A'.toColor(),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: (selectedRadioKembang == '2')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(width: 1, color: 'A0A0A0'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: 'E5E3E3'.toColor()),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedRadioKembang = '3';
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/cwedark.png', scale: 2),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '5C5C5C'.toColor(),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '-',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '7A7A7A'.toColor(),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: (selectedRadioKembang == '3')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(width: 1, color: 'A0A0A0'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: 'E5E3E3'.toColor()),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                  'Pilih Profil',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: 'FFFFFF'.toColor(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
