part of '../pages/pages.dart';

class bottomsheetImunisasi extends StatefulWidget {
  final List<BuatDataAnak> listAnak;

  bottomsheetImunisasi(this.listAnak);

  @override
  State<bottomsheetImunisasi> createState() => _bottomsheetImunisasiState();
}

class _bottomsheetImunisasiState extends State<bottomsheetImunisasi> {
  BuatDataAnak? selectedAnak;

  void pilihAnak() async {
    Uri url = Uri.parse("https://dashboard.parentoday.com/api/anak/active");
    var res = await http.post(
      url,
      body: {
        'id': selectedAnak!.id.toString(),
      },
      headers: {
        // 'Content-Type': 'application/json',
        "Accept": "application/json",
        "Authorization": "Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK",
      },
    );
    print(res.body.toString());
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      bool data = body["data"];
      print(res.statusCode);
      context.read<BuatdataanakCubit>().getBuatDataAnak(
          'Bearer 1084|DFXS2Y1Xwbx1eylixrVZMPLUuJS8062KydUDrqsK');
      Navigator.pop(context);
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  @override
  void initState() {
    super.initState();
    selectedAnak = widget.listAnak.firstWhere((e) => e.is_active == 1);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.hardEdge,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        // height: MediaQuery.of(context).size.height,
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
              Column(
                children: [
                  Column(
                    children: widget.listAnak
                        .map((e) =>
                            // listAnak(e, (selectedAnak == e) ? true : ((e.is_active == 1) ?  true : false),
                    listAnak(e, (selectedAnak == e) ? true : false,
                                onChanged: (value) {
                              setState(() {
                                selectedAnak = value;
                              });
                            }))
                        .toList(),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      pilihAnak();
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
            ],
          ),
        ),
      ),
    );
  }
}
