part of '../pages.dart';

List<String> listed = <String>[
  '0-3 Bulan',
  '3-6 Bulan',
  '6-9 Bulan',
  '9 - 12 Bulan',
  '12 - 18 Bulan',
  '18 - 24 Bulan',
  '24 - 36 Bulan',
  '36 - 48 Bulan',
  '48 - 60 Bulan',
  '60 - 72 Bulan',
];

class Kembang extends StatefulWidget {
  String token;

  Kembang(this.token);

  @override
  State<Kembang> createState() => _KembangState();
}

class _KembangState extends State<Kembang> {
  String selectedUsia = listed.first;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<BuatdataanakCubit>().getBuatDataAnak(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
    context
        .read<MilestoneCubit>()
        .getMilestone('Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
    context.read<KategoriCubit>().getMilestonesKat(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                          height: 285,
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
                                'Imunisasi',
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
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 15, right: 15, left: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            child: Image.asset((snapshot
                                                        .dataanak!
                                                        .firstWhere((e) =>
                                                            e.is_active == 1)
                                                        .gender ==
                                                    'Laki-laki')
                                                ? 'assets/laki.png'
                                                : 'assets/cwe.png'),
                                          ),
                                          SizedBox(width: 9),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    113,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      snapshot.dataanak!
                                                              .firstWhere((e) =>
                                                                  e.is_active ==
                                                                  1)
                                                              .name ??
                                                          '',
                                                      style: GoogleFonts
                                                              .poppins()
                                                          .copyWith(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: '323232'
                                                                  .toColor()),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        showModalBottomSheet(
                                                          backgroundColor:
                                                              Colors.white,
                                                          // clipBehavior: Clip.none,
                                                          // isScrollControlled: true,
                                                          // isDismissible: true,
                                                          // enableDrag: true,
                                                          // useSafeArea: true,
                                                          // useRootNavigator: true,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topRight: Radius
                                                                  .circular(15),
                                                              topLeft: Radius
                                                                  .circular(15),
                                                            ),
                                                          ),
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return bottomsheetImunisasi(
                                                                snapshot
                                                                    .dataanak!);
                                                          },
                                                        );
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Ganti Anak',
                                                            style: GoogleFonts
                                                                    .poppins()
                                                                .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 10,
                                                              color: 'FF6969'
                                                                  .toColor(),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5),
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: 'FF6969'
                                                                .toColor(),
                                                            size: 18,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    snapshot.dataanak!
                                                            .firstWhere((e) =>
                                                                e.is_active ==
                                                                1)
                                                            .gender ??
                                                        '',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '|',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Tahun',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Bulan',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 11,
                                                      color: '7A7A7A'.toColor(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pencapaian Total',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 12,
                                                      color:
                                                          '323232'.toColor()),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  180,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  DropdownButton<String>(
                                                    value: selectedUsia,
                                                    icon: Icon(
                                                        Icons.expand_more,
                                                        color:
                                                            'FF6969'.toColor()),
                                                    style: TextStyle(
                                                        color:
                                                            'FF6969'.toColor()),
                                                    underline: SizedBox(),
                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        selectedUsia = value!;
                                                      });
                                                    },
                                                    items: listed.map<
                                                            DropdownMenuItem<
                                                                String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(
                                                          value,
                                                          style: GoogleFonts
                                                                  .poppins()
                                                              .copyWith(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: 'FF6969'
                                                                .toColor(),
                                                          ),
                                                        ),
                                                      );
                                                    }).toList(),
                                                  ),
                                                  BlocBuilder<MilestoneCubit,
                                                      MilestoneState>(
                                                    builder:
                                                        (context, snapshot) {
                                                      if (snapshot
                                                          is MilestonesKatLoaded) {
                                                        if (snapshot
                                                                .milestoned !=
                                                            null) {
                                                          return Row(
                                                            children: [
                                                              Text(
                                                                snapshot
                                                                    .milestoned!
                                                                    .where((e) =>
                                                                        e.usia ==
                                                                        selectedUsia)
                                                                    .first
                                                                    .pencapaian
                                                                    .toString(),
                                                                style: GoogleFonts
                                                                        .poppins()
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10,
                                                                        color: '7A7A7A'
                                                                            .toColor()),
                                                              ),
                                                              SizedBox(
                                                                  width: 5),
                                                              Text(
                                                                'dari',
                                                                style: GoogleFonts
                                                                        .poppins()
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10,
                                                                        color: '7A7A7A'
                                                                            .toColor()),
                                                              ),
                                                              SizedBox(
                                                                  width: 5),
                                                              Text(
                                                                snapshot
                                                                    .milestoned!
                                                                    .where((e) =>
                                                                        e.usia ==
                                                                        selectedUsia)
                                                                    .first
                                                                    .total_pencapaian
                                                                    .toString(),
                                                                style: GoogleFonts
                                                                        .poppins()
                                                                    .copyWith(
                                                                        fontSize:
                                                                            10,
                                                                        color: '7A7A7A'
                                                                            .toColor()),
                                                              ),
                                                            ],
                                                          );
                                                        } else {
                                                          return const Center(
                                                            child: SizedBox(),
                                                          );
                                                        }
                                                      } else {
                                                        return Center(
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: 'FF6969'
                                                                .toColor(),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: LinearPercentIndicator(
                                    width: (Platform.isIOS)
                                        ? (MediaQuery.of(context).size.width -
                                            34)
                                        : (MediaQuery.of(context).size.width -
                                            239),
                                    // animation: true,
                                    // animationDuration: 1000,
                                    lineHeight: 13,
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
                                  child: Icon(Icons.arrow_back),
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Imunisasi',
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
            SizedBox(height: 10),
            BlocBuilder<KategoriCubit, KategoriState>(
              builder: (context, snapshot) {
                if (snapshot is KategoriLoaded) {
                  if (snapshot.milestones != null) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Wrap(
                          spacing: 15,
                          runSpacing: 15,
                          children: snapshot.milestones!
                              .where((element) => element.usia == selectedUsia)
                              .first
                              .category
                              .map((e) => kategori(e))
                              .toList()),
                    );
                  } else {
                    return const Center(
                      child: SizedBox(),
                    );
                  }
                } else {
                  return Center(
                    child: CircularProgressIndicator(color: 'FF6969'.toColor()),
                  );
                }
              },
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
