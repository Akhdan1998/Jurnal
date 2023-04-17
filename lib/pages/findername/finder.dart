part of '../pages.dart';

class finder extends StatefulWidget {
  @override
  State<finder> createState() => _finderState();
}

class _finderState extends State<finder> {
  final hurufawalan = TextEditingController();
  String selectedKelamin2 = '';
  String selectedKelamin3 = '';
  String dropdownValue = list.first;
  bool show1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 415,
              ),
              Container(
                alignment: Alignment.topLeft,
                color: 'D9D9D9'.toColor(),
                width: MediaQuery.of(context).size.width,
                height: 220,
                padding: EdgeInsets.only(left: 16, top: 43),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: '888888'.toColor(),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Name Finder',
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
                  // height: 131,
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide:
                                BorderSide(width: 1, color: 'FF6969'.toColor()),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                // color: '989797'.toColor(),
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
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide:
                                BorderSide(width: 1, color: 'FF6969'.toColor()),
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
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedKelamin2 = '3';
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: (selectedKelamin2 == '3')
                                        ? 'FF6969'.toColor()
                                        : 'E2E2E2'.toColor(),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Unisex',
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
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    border: Border.all(color: 'F0F0F0'.toColor(), width: 1),
                    color: 'FF6969'.toColor(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hasil Pencarian',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Semua Preferensi - Awalan A - Unisex',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                    border: Border.all(color: 'F0F0F0'.toColor(), width: 1),
                  ),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '1.',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Anya',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                show1 = !show1;
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Detail',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: 'FF6969'.toColor()),
                                ),
                                SizedBox(width: 5),
                                (show1 == true)
                                    ? Icon(Icons.expand_less_outlined,
                                        color: 'FF6969'.toColor())
                                    : Icon(Icons.expand_more_outlined,
                                        color: 'FF6969'.toColor()),
                              ],
                            ),
                          ),
                        ],
                      ),
                      (show1 == true)
                          ? Text(
                              'Merupakan nama seorang anak laki-laki yang ganteng tampan dan keren di kalangan gadis remaja hehe.',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11, color: '414141'.toColor()),
                            )
                          : SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '1.',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Anya',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                show1 = !show1;
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Detail',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: 'FF6969'.toColor()),
                                ),
                                SizedBox(width: 5),
                                (show1 == true)
                                    ? Icon(Icons.expand_less_outlined,
                                        color: 'FF6969'.toColor())
                                    : Icon(Icons.expand_more_outlined,
                                        color: 'FF6969'.toColor()),
                              ],
                            ),
                          ),
                        ],
                      ),
                      (show1 == true)
                          ? Text(
                              'Merupakan nama seorang anak laki-laki yang ganteng tampan dan keren di kalangan gadis remaja hehe.',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11, color: '414141'.toColor()),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
