part of 'pages.dart';

class inputdatakehamilan extends StatefulWidget {
  @override
  State<inputdatakehamilan> createState() => _inputdatakehamilanState();
}

class _inputdatakehamilanState extends State<inputdatakehamilan> {
  final carinama = TextEditingController();
  bool value = true;
  final HPHT = TextEditingController();
  bool show = false;
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
              'Tambah Data Kehamilan',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 16,
                    width: 40,
                    padding: EdgeInsets.zero,
                    child: Switch.adaptive(
                      activeColor: Colors.white,
                      activeTrackColor: '86C3BB'.toColor(),
                      value: value,
                      onChanged: (value) => setState(() {
                        this.value = value;
                        show = !show;
                      }),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Nama Calon Bayi',
                    style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: '5A5A5A'.toColor()),
                  )
                ],
              ),
              SizedBox(height: 15),
              (show == true) ? SizedBox() : Container(
                height: 35,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: TextField(
                  // textAlign: TextAlign.end,
                  controller: carinama,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: 'FF6969'.toColor()),
                    ),
                    suffixIcon: Container(
                      width: 106,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Cari nama disini',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: 'FF6969'.toColor()),
                          ),
                          Icon(
                            Icons.chevron_right_outlined,
                            color: 'FF6969'.toColor(),
                          ),
                        ],
                      ),
                    ),
                    contentPadding: EdgeInsets.only(
                        left: 10, top: 5, bottom: 5),
                    hintStyle: GoogleFonts.poppins().copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: '989797'.toColor(),
                    ),
                    hintText: 'Preferensi Nama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Hari Pertama Haid Terakhir (HPHT)',
                  style: GoogleFonts.poppins().copyWith(fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: '5A5A5A'.toColor()),
              ),
              SizedBox(height: 5),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  controller: HPHT,
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
                        HPHT.text =
                            DateFormat('yMMMMd').format(pickeddate);
                      });
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: 'F2F2F2'.toColor(),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hasil Data :',
                      style: GoogleFonts.poppins().copyWith(fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '363636'.toColor()),),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hari Perkiraan Lahir (HPL) :',
                          style: GoogleFonts.poppins().copyWith(fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: '373737'.toColor()),),
                        Text('-',
                          style: GoogleFonts.poppins().copyWith(fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '393939'.toColor()),),
                      ],
                    ),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Usia Kehamilan :',
                          style: GoogleFonts.poppins().copyWith(fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: '373737'.toColor()),),
                        Text('-',
                          style: GoogleFonts.poppins().copyWith(fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '393939'.toColor()),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
        child: GestureDetector(
          onTap: () {
            //
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
        ),
      ),
    );
  }
}
