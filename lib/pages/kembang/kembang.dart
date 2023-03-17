part of '../pages.dart';

class Kembang extends StatefulWidget {
  @override
  State<Kembang> createState() => _KembangState();
}

class _KembangState extends State<Kembang> {
  List<Tes> tes = [
    Tes(
      id: '1',
      judul: 'Motorik Harus & Kasar',
      deskripsiKategori: 'Motorik Harus & Kasar 0 - 3 Bulan',
      tombol: 'Mulai Tes',
      image: 'assets/motorik.png',
      color1: '86C3BB',
      color2: '679E97',
      listTes: [
        PopupTes(
            id: '1',
            isi: 'Si kecil mengangkat kepala secara mandiri 45 derajat',
            deskripsiTes: 'Motorik Halus & Kasar 0 - 3 Bulan',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: 'Kasur bayi, Mainan berwarna cerah atau berbunyi',
            deskripsiintruksi: 'Posisikan bayi dengan posisi tengkurap, Letakkan mainan yang berbunyi atau berwarna cerah di dekat bayi, Ambil mainan dan arahkan ke atas dan ke bawah dihadapan bayi secara perlahan, Lakukan berulang kali sampai kepala si kecil bergerak mengikuti arah mainan ke atas'
        ),
        PopupTes(
            id: '2',
            isi: 'Anak mulai membuka telapak tangan',
            deskripsiTes: 'Motor Kasar & Halus Bayi 0-3 Bulan',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: 'Menyentuh Tangannya dengan lembut.',
            deskripsiintruksi: 'Lakukan saat si kecil sedang terbangun, Berikan sentuhan di area tangannya, dan biarkan telapak tangan si kecil terbuka sebagai responnya'
        ),
        PopupTes(
            id: '3',
            isi: 'Si Kecil mulai menggerakkan kedua tangan dan kaki',
            deskripsiTes: 'Motor Kasar & Halus Bayi 0-3 Bulan',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '”Kayuh” Sepeda sambil bernyanyi',
            deskripsiintruksi: 'Lakukan kegiatan ini setelah mandi atau sebelum si kecil tidur malam, Posisikan si kecil dengan posisi terlentang di alas yang datar, Dorong dan tarik kaki bayi perlahan dengan bergantian seperti gerakan mengayuh sepeda, Moms bisa lakukan sambil bernyanyi, agar suasanya lebih menyenangkan, Bermain dengan menggunakan tangan Momsday dan Papsday'
        ),
        PopupTes(
            id: '4',
            isi: 'Si Kecil menunjukkan respon berupa gerakan terhadap stimulus visual dan auditori',
            deskripsiTes: 'Kemampuan Motor Kasar Bayi 0-3 Bulan',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: 'Tali untuk gantungan, Mainan dengan warna kontras seperti hitam dan putih',
            deskripsiintruksi: 'Bayi diletakkan dengan posisi terlentang di alas datar, Gantungkan mainan berwarna kontras ini di atas bayi, Berikan jarak kepada bayi sekitar 15-20 cm'
        ),
        PopupTes(
            id: '5',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
      ],
    ),
    Tes(
      id: '2',
      judul: 'Bahasa',
      deskripsiKategori: '-',
      tombol: 'Mulai Tes',
      image: 'assets/bahasa.png',
      color1: '81B1DE',
      color2: '3F719F',
      listTes: [
        PopupTes(
            id: '1',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '2',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '3',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '4',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '5',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
      ],
    ),
    Tes(
      id: '3',
      judul: 'Sosial & Emosional',
      deskripsiKategori: '-',
      tombol: 'Mulai Tes',
      image: 'assets/sosial.png',
      color1: 'DE8ECD',
      color2: 'B15C9F',
      listTes: [
        PopupTes(
            id: '1',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '2',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '3',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '4',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '5',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
      ],
    ),
    Tes(
      id: '4',
      judul: 'Kognitif',
      deskripsiKategori: '-',
      tombol: 'Mulai Tes',
      image: 'assets/kognitif.png',
      color1: 'E9A47D',
      color2: 'BC7B57',
      listTes: [
        PopupTes(
            id: '1',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '2',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '3',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '4',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
        PopupTes(
            id: '5',
            isi: '-',
            deskripsiTes: '-',
            image: 'assets/detailperkembangan.png',
            deskripsimaterial: '-',
            deskripsiintruksi: '-'
        ),
      ],
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<BuatdataanakCubit>().getBuatDataAnak(
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
                          height: 225,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          color: 'D9D9D9'.toColor(),
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
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
                            child: Row(children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset((snapshot.dataanak!
                                    .firstWhere((e) => e.is_active == 1)
                                    .gender == 'Laki-laki')
                                    ? 'assets/laki.png'
                                    : 'assets/cwe.png'),
                              ),
                              SizedBox(width: 9),
                              Container(
                                width: MediaQuery.of(context).size.width - 113,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.dataanak!.firstWhere((e) =>
                                          e.is_active ==
                                              1)
                                              .name ??
                                              '', style: GoogleFonts.poppins()
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
                                                  .gender ?? '',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              '|',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              '0',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Tahun',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              '0',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Bulan',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 11,
                                                color: '7A7A7A'
                                                    .toColor(),
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
                                              borderRadius: BorderRadius
                                                  .only(
                                                  topRight:
                                                  Radius.circular(15),
                                                  topLeft:
                                                  Radius.circular(
                                                      15))),
                                          context: context,
                                          builder: (
                                              BuildContext context) {
                                            return bottomsheetImunisasi(snapshot.dataanak!);
                                          },
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            'Ganti Anak',
                                            style:
                                            GoogleFonts.poppins()
                                                .copyWith(
                                              fontWeight:
                                              FontWeight.w300,
                                              fontSize: 10,
                                              color:
                                              'FF6969'.toColor(),
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
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 265,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          color: 'D9D9D9'.toColor(),
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            // height: 131,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi Bunda, Selamat Datang!!',
                                  style:
                                  GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: '323232'.toColor(),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Untuk memantau jadwal dan pilihan imunisasi anak, isi terlebih dahulu data anak ya Moms.',
                                  style:
                                  GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: '7A7A7A'.toColor(),
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  height: 32,
                                  child: Container(
                                    height: 60,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(dataanak());
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
                                          borderRadius:
                                          BorderRadius.circular(
                                              5),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .center,
                                          children: [
                                            Text(
                                              'Buat Data Anak',
                                              style: GoogleFonts
                                                  .poppins()
                                                  .copyWith(
                                                fontSize: 12,
                                                fontWeight:
                                                FontWeight.bold,
                                                color: 'FFFFFF'
                                                    .toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Icon(
                                              Icons.add_outlined,
                                              color:
                                              'FFFFFF'.toColor(),
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
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: tes.map((e) => kategori(e)).toList(),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
