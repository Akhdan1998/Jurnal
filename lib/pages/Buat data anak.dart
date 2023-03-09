part of 'pages.dart';

class dataanak extends StatefulWidget {
  @override
  State<dataanak> createState() => _dataanakState();
}

class _dataanakState extends State<dataanak> {
  final namaAnakEditingController = TextEditingController();
  final tanggalLahirEditingController = TextEditingController();
  String selectedKelamin = '';

  void saveData(String namaAnak, String tanggalLahir) async {
    Uri url = Uri.parse('https://dashboard.parentoday.com/api/anak/create');

    String gender = (selectedKelamin == '1') ? "Laki - laki" : "Perempuan";

    var response = await http.post(
      url,
      body: {
        'name': namaAnak,
        'gender': gender,
        'birthday': tanggalLahir + ' ' + '07:00:00',
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    print(response.body.toString());
    Map<String, dynamic> body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      BuatDataAnak data = BuatDataAnak.fromJson(body['data']);
      print(response.statusCode);
      Get.off(navigation(
        "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      ));
    } else {
      throw 'Error ${response.statusCode} => ${body['meta']['message']}';
    }
  }

  // File? image;
  //
  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? imagePicked =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   image = File(imagePicked!.path);
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  // }

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
            Stack(
              children: [
                Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      // top: 90,
                      // left: 90,
                      child: Image.asset('assets/foto.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        // getImage();
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 85, left: 85),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: 'FF6969'.toColor(),
                          ),
                          child:
                              Icon(Icons.edit, color: Colors.white, size: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      controller: namaAnakEditingController,
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
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      controller: tanggalLahirEditingController,
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
                        hintText: '24-03-1998',
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
                            tanggalLahirEditingController.text =
                                DateFormat('yyyy-MM-dd').format(pickeddate);
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
                                  selectedKelamin = '1';
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
                                        color: (selectedKelamin == '1')
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
                                  selectedKelamin = '2';
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
                                        color: (selectedKelamin == '2')
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
            saveData(namaAnakEditingController.text,
                tanggalLahirEditingController.text);
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
