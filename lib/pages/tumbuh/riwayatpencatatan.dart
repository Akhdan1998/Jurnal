part of '../pages.dart';

class riwayatpencatatan extends StatefulWidget {
  final String anak_id;

  riwayatpencatatan(this.anak_id);

  @override
  State<riwayatpencatatan> createState() => _riwayatpencatatanState();
}

class _riwayatpencatatanState extends State<riwayatpencatatan> {
  void deleted(String id) async {
    Uri url_ = Uri.parse(
        'https://dashboard.parentoday.com/api/jurnal/pertumbuhan/delete');
    var res = await http.post(
      url_,
      body: {
        'id': id,
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    Map<String, dynamic> body = jsonDecode(res.body);

    if (res.statusCode == 200) {
      bool data = body["data"];
      Navigator.pop(context);
      Fluttertoast.showToast(
          msg: "Kamu berhasil menghapus data Berat Badan anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      context.read<TinggiCubit>().getTinggi(
          'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4', widget.anak_id);
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

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
      body: BlocBuilder<TinggiCubit, TinggiState>(builder: (context, snapshot) {
        if (snapshot is TinggiLoaded) {
          if (snapshot.tinggi != null) {
            return Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '414141'.toColor(),
                          ),
                        ),
                        Text(
                          'Tinggi (cm)',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '414141'.toColor(),
                          ),
                        ),
                        Text(
                          'Berat (kg)',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '414141'.toColor(),
                          ),
                        ),
                        Text(
                          'Lingkar Kepala (cm)',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '414141'.toColor(),
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
                        children: snapshot.tinggi!
                            .map(
                              (e) => Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 32,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          e.checked_at.toString() ?? '',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: '414141'.toColor(),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              e.tinggi.toString() ?? '',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'cm',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              e.berat.toString() ?? '',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'kg',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              e.lingkar_kepala.toString() ?? '',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'cm',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: '414141'.toColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      'Hapus data anak',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                    ),
                                                    content: Text(
                                                      'Kamu yakin akan menghapus data badan anak?',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color: Colors
                                                                      .black),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          'Tidak',
                                                          style: GoogleFonts
                                                                  .poppins()
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: 'FF6969'
                                                                      .toColor()),
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          deleted(
                                                              e.id.toString());
                                                        },
                                                        child: Text(
                                                          'Ya',
                                                          style: GoogleFonts
                                                                  .poppins()
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: 'FF6969'
                                                                      .toColor()),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                });
                                          },
                                          child: Icon(
                                            Icons.delete,
                                            color: 'FF6969'.toColor(),
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            )
                            .toList(),
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
    context.read<TinggiCubit>().getTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4', widget.anak_id);
  }
}
