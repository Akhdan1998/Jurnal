part of '../pages/pages.dart';

class detailperkembangan extends StatefulWidget {
  late final PopupTes? listTes;

  detailperkembangan(this.listTes);

  @override
  State<detailperkembangan> createState() => _detailperkembanganState();
}

class _detailperkembanganState extends State<detailperkembangan> {
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
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Riwayat Pencatatan',
              style: GoogleFonts.poppins().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.listTes!.image ?? ''),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.listTes!.isi ?? '',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    widget.listTes!.deskripsiDetail ?? '',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: '7A7A7A'.toColor(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Material:',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 3),
                  Column(
                    children: widget.listTes!.deskripsimaterial!
                        .split(', ')
                        .map(
                          (e) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.circle,
                                color: '7A7A7A'.toColor(),
                                size: 8,
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: MediaQuery.of(context).size.width - 45,
                                child: Text(
                                  e,
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: '7A7A7A'.toColor(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Instruksi:',
                    style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 3),
                  Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: widget.listTes!.deskripsiintruksi!
                        .split(', ')
                        .map(
                          (e) => Row( mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.circle,
                                color: '7A7A7A'.toColor(),
                                size: 8,
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: MediaQuery.of(context).size.width - 45,
                                child: Text(
                                  e,
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: '7A7A7A'.toColor(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: (Platform.isIOS) ? 80 : 60,
        padding: (Platform.isIOS)
            ? EdgeInsets.only(left: 16, right: 16, bottom: 25, top: 10)
            : EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
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
              'Pencapaian Berhasil',
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
