part of '../pages.dart';

List<String> list = <String>['Semua Preferensi', 'Tema', 'Asal', 'Bulan Lahir'];

class Kehamilan extends StatefulWidget {
  @override
  State<Kehamilan> createState() => _KehamilanState();
}

class _KehamilanState extends State<Kehamilan> {
  final hurufawalan = TextEditingController();
  String selectedKelamin2 = '';

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 260,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  color: 'D9D9D9'.toColor(),
                  width: MediaQuery.of(context).size.width,
                  height: 187,
                  padding: EdgeInsets.only(left: 16, top: 43),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Monitoring Kehamilan',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: '747474'.toColor(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 150,
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: 'F0F0F0'.toColor(),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    // height: 131,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '-',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: '323232'.toColor()),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '4 Minggu',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: 'FF6969'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    '-',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: 'FF6969'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    'Trimaster 1',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: 'FF6969'.toColor()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Minggu 4',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: '323232'.toColor()),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HPL :',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: '7A7A7A'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    '07 Oktober 2023',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: '7A7A7A'.toColor()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 34,
                            // animation: true,
                            // animationDuration: 1000,
                            lineHeight: 15,
                            percent: 0.75,
                            barRadius: Radius.circular(20),
                            progressColor: 'FF6969'.toColor(),
                            backgroundColor: 'FFE7E7'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: 'F0F0F0'.toColor(),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress Baby',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: '323232'.toColor()),
                              ),
                              Icon(
                                Icons.info_outlined,
                                color: 'FF6969'.toColor(),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13),
                        Row(
                          children: [
                            Image.asset(
                              'assets/rice.png',
                              scale: 1.5,
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bayi sebesar beras',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '5C5C5C'.toColor()),
                                ),
                                Text(
                                  '-',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '7A7A7A'.toColor()),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: 'F0F0F0'.toColor(),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name Finder',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: '323232'.toColor()),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Reset',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: 'FF6969'.toColor()),
                                    ),
                                    SizedBox(width: 3),
                                    Icon(
                                      Icons.refresh_outlined,
                                      color: 'FF6969'.toColor(),
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        DropdownButtonFormField<String>(
                          value: dropdownValue,
                          icon: Icon(
                            Icons.expand_more_outlined,
                            color: 'B8B8B8'.toColor(),
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 5, right: 5),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: 'FF6969'.toColor()),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: '989797'.toColor(),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 13),
                        TextField(
                          controller: hurufawalan,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: 'FF6969'.toColor()),
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 5, bottom: 5),
                            hintStyle: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: '989797'.toColor(),
                            ),
                            hintText: 'Ketik Awalan Huruf',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedKelamin2 = '1';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: (selectedKelamin2 == '1')
                                          ? 'FF6969'.toColor()
                                          : 'E2E2E2'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Laki - laki',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '6D6767'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedKelamin2 = '2';
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: (selectedKelamin2 == '2')
                                          ? 'FF6969'.toColor()
                                          : 'E2E2E2'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Perempuan',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '6D6767'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 11, bottom: 11),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: 'FF6969'.toColor(),
                              ),
                              color: Colors.white,
                            ),
                            child: Text(
                              'Cari inspirasi nama anak',
                              style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: 'FF6969'.toColor(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Atur Data Kehamilan',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor(),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Get.to(inputdatakehamilan());
                        },
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/editdata.png', scale: 2),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width - 85,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Edit Data Kehamilan',
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
                                    Icon(
                                      Icons.navigate_next_outlined,
                                      color: 'A6A6A6'.toColor(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: 'E5E3E3'.toColor()),
                      GestureDetector(
                        onTap: () {
                          Get.to(sukseskecillahir());
                        },
                        child: Container(
                          color: Colors.white,
                         child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/tanda.png', scale: 2),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width - 85,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Tandai Si Kecil sudah Lahir',
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
                                    Icon(
                                      Icons.navigate_next_outlined,
                                      color: 'A6A6A6'.toColor(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: 'E5E3E3'.toColor()),
                      GestureDetector(
                        onTap: () {
                          Get.to(keguguran());
                        },
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/laporan.png', scale: 2),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width - 85,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Laporkan Keguguran',
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
                                    Icon(
                                      Icons.navigate_next_outlined,
                                      color: 'A6A6A6'.toColor(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: 'E5E3E3'.toColor()),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/hapus.png', scale: 2),
                              SizedBox(width: 10),
                              Container(
                                width: MediaQuery.of(context).size.width - 85,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hapus Data Kehamilan',
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
                                    Icon(
                                      Icons.navigate_next_outlined,
                                      color: 'A6A6A6'.toColor(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: 'E5E3E3'.toColor()),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: 'FF6969'.toColor(),
        child: Icon(Icons.edit_note_outlined, color: Colors.white),
      ),
    );
  }
}
