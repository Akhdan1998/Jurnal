part of '../pages.dart';

class riwayatpencatatanberat extends StatefulWidget {
  @override
  State<riwayatpencatatanberat> createState() => _riwayatpencatatanberatState();
}

class _riwayatpencatatanberatState extends State<riwayatpencatatanberat> {

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
              'Ubah Data Detail Anak',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: 'FFFFFF'.toColor(),
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<BeratCubit, BeratState>(builder: (context, snapshot) {
        if (snapshot is BeratLoaded) {
          if (snapshot.berat != null) {
            return Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,
                          child: Text('Tanggal',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Text('Tinggi (cm)',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Text('Berat (kg)',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                        ),
                        Container(
                          width: 75,
                          child: Text('Lingkar Kepala (cm)',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: '414141'.toColor(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: 'ECECEC'.toColor()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            child: Text(snapshot.berat!.first.checked_at.toString() ?? '',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '414141'.toColor(),
                              ),
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Container(
                          //   width: 90,
                          //   child: Text('11 Februari 2023',
                          //     style: GoogleFonts.poppins().copyWith(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.bold,
                          //       color: '414141'.toColor(),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            child: Text(snapshot.berat!.first.tinggi.toString() ?? '',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '414141'.toColor(),
                              ),
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Container(
                          //   width: 70,
                          //   child: Text('60 cm',
                          //     style: GoogleFonts.poppins().copyWith(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.bold,
                          //       color: '414141'.toColor(),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            child: Text(snapshot.berat!.first.berat.toString() ?? '',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '414141'.toColor(),
                              ),
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Container(
                          //   width: 60,
                          //   child: Text('-',
                          //     style: GoogleFonts.poppins().copyWith(
                          //       fontSize: 11,
                          //       fontWeight: FontWeight.bold,
                          //       color: '414141'.toColor(),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(snapshot.berat!.first.lingkar_kepala.toString() ?? '',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: '414141'.toColor(),
                                  ),
                                ),
                                SizedBox(width: 3),
                                Icon(
                                  Icons.delete_outlined, color: 'FF6969'.toColor(), size: 16,
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Container(
                          //   width: 75,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text('-',
                          //         style: GoogleFonts.poppins().copyWith(
                          //           fontSize: 11,
                          //           fontWeight: FontWeight.bold,
                          //           color: '414141'.toColor(),
                          //         ),
                          //       ),
                          //       SizedBox(width: 3),
                          //       Icon(
                          //         Icons.delete_outlined, color: 'FF6969'.toColor(), size: 16,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ],
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
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<BeratCubit>().getBerat('Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
  }
}
