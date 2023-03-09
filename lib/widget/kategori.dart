part of '../pages/pages.dart';

class kategori extends StatefulWidget {
  late final Tes? tes;

  kategori(this.tes);

  @override
  State<kategori> createState() => _kategoriState();
}

class _kategoriState extends State<kategori> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: (Platform.isIOS) ? (MediaQuery.of(context).size.width - 211) : (MediaQuery.of(context).size.width - 205),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: widget.tes!.color1!.toColor(),
              ),
              // padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12, top: 12),
                    child: Image.asset(widget.tes!.image ?? '', scale: 1.5),
                  ),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.tes!.judul ?? '',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: 'FFFFFF'.toColor()),
                        ),
                        Row(
                          children: [
                            Text(
                              '0',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: 'FFFFFF'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Text(
                              '/',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: 'FFFFFF'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Text(
                              '5',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: 'FFFFFF'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Text(
                              'Pencapaian',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: 'FFFFFF'.toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(bottom: 11, right: 12),
                    child: LinearPercentIndicator(
                      width: (Platform.isIOS) ? (MediaQuery.of(context).size.width - 245) : (MediaQuery.of(context).size.width - 239),
                      // animation: true,
                      // animationDuration: 1000,
                      lineHeight: 7,
                      percent: 0.75,
                      barRadius: Radius.circular(20),
                      progressColor: widget.tes!.color2!.toColor(),
                      backgroundColor: 'FFFFFF'.toColor(),
                      trailing: Text(
                        '75%',
                        style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: 'FFFFFF'.toColor()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.only(bottom: 4, top: 4),
              width: (Platform.isIOS) ? (MediaQuery.of(context).size.width - 211) : (MediaQuery.of(context).size.width - 205),
              height: 25,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.tes!.judul ?? '',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: '323232'.toColor()),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '0',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '939393'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    '/',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '939393'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    '5',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '939393'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    'Pencapaian',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '939393'.toColor()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: widget.tes!.listTes!
                                .map((e) => pertanyaanTes(e))
                                .toList(),
                          ),
                        );
                      },
                    );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: widget.tes!.color2!.toColor(),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Mulai Tes',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: 'FFFFFF'.toColor(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 74,
          child: Image.asset(
            'assets/efek.png',
            scale: 1.1,
          ),
        ),
      ],
    );
  }
}
