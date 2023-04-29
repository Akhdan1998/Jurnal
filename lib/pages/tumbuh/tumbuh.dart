part of '../pages.dart';

class Tumbuh extends StatefulWidget {
  String token;

  Tumbuh(this.token);

  @override
  State<Tumbuh> createState() => _TumbuhState();
}

class _TumbuhState extends State<Tumbuh> {
  final tanggalcek1 = TextEditingController();
  final tanggalcek2 = TextEditingController();
  final tanggalcek3 = TextEditingController();
  final tinggi = TextEditingController();
  final lk = TextEditingController();
  final berat = TextEditingController();

  PageController pageController = PageController(initialPage: 0);
  String selectedButton = '1';
  int pageChanged = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<BuatdataanakCubit>().getBuatDataAnak(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
  }

  void dataTinggi(String anak_id, String tinggi, String checked_at) async {
    Uri url = Uri.parse(
        "https://dashboard.parentoday.com/api/jurnal/pertumbuhan/tinggi/create");
    var res = await http.post(
      url,
      body: {
        "anak_id": anak_id,
        "tinggi": tinggi,
        "checked_at": checked_at + ' ' + '07:00:00',
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    print(res.body.toString());
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Kamu berhasil memperbaharui data Tinggi Badan anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      BuatDataAnak data = BuatDataAnak.fromJson(body["data"]);
      print(res.statusCode);
      Navigator.of(context).pop();
      // Get.off(
      //   navigation(
      //     'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
      //     index: 1,
      //   ),
      // );
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  void dataBerat(String anak_id, String berat, String checked_at) async {
    Uri url = Uri.parse(
        "https://dashboard.parentoday.com/api/jurnal/pertumbuhan/berat/create");
    var res = await http.post(
      url,
      body: {
        "anak_id": anak_id,
        "berat": berat,
        "checked_at": checked_at,
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    print(res.body.toString());
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Kamu berhasil memperbaharui data Berat Badan anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      BuatDataAnak data = BuatDataAnak.fromJson(body["data"]);
      print(res.statusCode);
      Navigator.of(context).pop();
      // Get.off(
      //   navigation(
      //     'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
      //     index: 1,
      //   ),
      // );
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  void dataLK(String anak_id, String lingkarkepala, String checked_at) async {
    Uri url = Uri.parse(
        "https://dashboard.parentoday.com/api/jurnal/pertumbuhan/lingkar/create");
    var res = await http.post(
      url,
      body: {
        "anak_id": anak_id,
        "lingkar_kepala": lingkarkepala,
        "checked_at": checked_at,
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    print(res.body.toString());
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Kamu berhasil memperbaharui data Lingkar Kepala anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      BuatDataAnak data = BuatDataAnak.fromJson(body["data"]);
      print(res.statusCode);
      Navigator.of(context).pop();
      // Get.off(
      //   navigation(
      //     'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
      //     index: 1,
      //   ),
      // );
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              BlocBuilder<BuatdataanakCubit, BuatdataanakState>(
                builder: (context, snapshot) {
                  if (snapshot is BuatdataanakLoaded) {
                    if (snapshot.dataanak != null &&
                        snapshot.dataanak!.isNotEmpty) {
                      return Stack(
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: 225,
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
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: '888888'.toColor(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'Pertumbuhan Anak',
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
                              child: Row(children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset((snapshot.dataanak!
                                              .firstWhere(
                                                  (e) => e.is_active == 1)
                                              .gender ==
                                          'Laki-laki')
                                      ? 'assets/laki.png'
                                      : 'assets/cwe.png'),
                                ),
                                SizedBox(width: 9),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 113,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            snapshot.dataanak!
                                                    .firstWhere(
                                                        (e) => e.is_active == 1)
                                                    .name ??
                                                '',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: '323232'.toColor()),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                snapshot.dataanak!
                                                        .firstWhere((e) =>
                                                            e.is_active == 1)
                                                        .gender ??
                                                    '',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                '|',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                '0',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                'Tahun',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                '0',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                'Bulan',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '7A7A7A'.toColor(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                            // clipBehavior: Clip.none,
                                            // isScrollControlled: true,
                                            // isDismissible: true,
                                            // enableDrag: true,
                                            // useSafeArea: true,
                                            // useRootNavigator: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15),
                                                    topLeft:
                                                        Radius.circular(15))),
                                            context: context,
                                            builder: (BuildContext context) {
                                              return bottomsheetImunisasi(
                                                  snapshot.dataanak!);
                                            },
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              'Ganti Anak',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: 'FF6969'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: 'FF6969'.toColor(),
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Stack(
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: 265,
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
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: '888888'.toColor(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'Pertumbuhan Anak',
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
                            top: 135,
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
                                  Text(
                                    'Hi Bunda, Selamat Datang!!',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: '323232'.toColor(),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Untuk memantau jadwal dan pilihan imunisasi anak, isi terlebih dahulu data anak ya Moms.',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: '7A7A7A'.toColor(),
                                    ),
                                  ),
                                  SizedBox(height: 11),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 32,
                                    child: Container(
                                      height: 60,
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(dataanak());
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: 'FF6969'.toColor(),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Buat Data Anak',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: 'FFFFFF'.toColor(),
                                                ),
                                              ),
                                              SizedBox(width: 3),
                                              Icon(
                                                Icons.add_outlined,
                                                color: 'FFFFFF'.toColor(),
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        color: 'FF6969'.toColor(),
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedButton = '1';
                          });
                          pageController.animateToPage(0,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.bounceInOut);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: (selectedButton == '1')
                                  ? Colors.white
                                  : 'F0F0F0'.toColor(),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: (selectedButton == '1')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                          ),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: Text(
                            'Tinggi Badan',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                              color: (selectedButton == '1')
                                  ? Colors.white
                                  : '989797'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedButton = '2';
                          });
                          pageController.animateToPage(1,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.bounceInOut);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: (selectedButton == '2')
                                  ? Colors.white
                                  : 'F0F0F0'.toColor(),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: (selectedButton == '2')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                          ),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: Text(
                            'Berat Badan',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                              color: (selectedButton == '2')
                                  ? Colors.white
                                  : '989797'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedButton = '3';
                          });
                          pageController.animateToPage(2,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.bounceInOut);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: (selectedButton == '3')
                                  ? Colors.white
                                  : 'F0F0F0'.toColor(),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: (selectedButton == '3')
                                ? 'FF6969'.toColor()
                                : Colors.white,
                          ),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: Text(
                            'Lingkar Kepala',
                            style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                              color: (selectedButton == '3')
                                  ? Colors.white
                                  : '989797'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // height: 360 * grafik!.length.toDouble(),
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageChanged = index;
                    });
                    print(pageChanged);
                  },
                  children: [
                    tinggibadan(),
                    beratbadan(),
                    lingkarkepala(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          if (pageChanged == 0) {
            modelTinggi(context);
          }
          if (pageChanged == 1) {
            modelBerat(context);
          }
          if (pageChanged == 2) {
            modellk(context);
          }
        },
        backgroundColor: 'FF6969'.toColor(),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  void modelTinggi(BuildContext context) {
    showModalBottomSheet(
      // clipBehavior: Clip.none,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
                top: 16,
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Isi Data Tinggi',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor(),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Tanggal Cek',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  controller: tanggalcek1,
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
                    hintText: '24 Maret 2023',
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
                        tanggalcek1.text =
                            DateFormat('yyyy-MM-dd').format(pickeddate);
                      });
                    }
                  },
                ),
                SizedBox(height: 14),
                Text(
                  'Tinggi Badan (cm)',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: tinggi,
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
                    hintText: '10',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                BlocBuilder<BuatdataanakCubit, BuatdataanakState>(
                  builder: (context, snapshot) {
                    if (snapshot is BuatdataanakLoaded) {
                      if (snapshot.dataanak != null) {
                        return GestureDetector(
                          onTap: () {
                            dataTinggi(
                                snapshot.dataanak!.first.anak_id.toString(),
                                tinggi.text,
                                tanggalcek1.text);
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
                              'Simpan Data',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: 'FFFFFF'.toColor(),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: 'FF6969'.toColor(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }

  void modelBerat(BuildContext context) {
    showModalBottomSheet(
      // clipBehavior: Clip.none,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
                top: 16,
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Isi Data Berat',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor(),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Tanggal Cek',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  controller: tanggalcek2,
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
                        tanggalcek2.text =
                            DateFormat('yMMMMd').format(pickeddate);
                      });
                    }
                  },
                ),
                SizedBox(height: 14),
                Text(
                  'Berat Badan (kg)',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: berat,
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
                    hintText: '10',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                BlocBuilder<BuatdataanakCubit, BuatdataanakState>(
                  builder: (context, snapshot) {
                    if (snapshot is BuatdataanakLoaded) {
                      if (snapshot.dataanak != null) {
                        return GestureDetector(
                          onTap: () {
                            dataBerat(
                                snapshot.dataanak!.first.anak_id.toString(),
                                berat.text,
                                tanggalcek2.text);
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
                              'Simpan Data',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: 'FFFFFF'.toColor(),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: 'FF6969'.toColor(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }

  void modellk(BuildContext context) {
    showModalBottomSheet(
      // clipBehavior: Clip.none,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
                top: 16,
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Isi Data Lingkar Kepala',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor(),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Tanggal Cek',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  controller: tanggalcek3,
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
                    hintText: '24 Maret 2023',
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
                        tanggalcek3.text =
                            DateFormat('yMMMMd').format(pickeddate);
                      });
                    }
                  },
                ),
                SizedBox(height: 14),
                Text(
                  'Lingkar Kepala (cm)',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 11,
                    color: '5A5A5A'.toColor(),
                  ),
                ),
                SizedBox(height: 3),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: tinggi,
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
                    hintText: '10',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                BlocBuilder<BuatdataanakCubit, BuatdataanakState>(
                  builder: (context, snapshot) {
                    if (snapshot is BuatdataanakLoaded) {
                      if (snapshot.dataanak != null) {
                        return GestureDetector(
                          onTap: () {
                            dataLK(snapshot.dataanak!.first.anak_id.toString(),
                                lk.text, tanggalcek3.text);
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
                              'Simpan Data',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: 'FFFFFF'.toColor(),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: 'FF6969'.toColor(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }
}
