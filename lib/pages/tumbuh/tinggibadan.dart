part of '../pages.dart';

class tinggibadan extends StatefulWidget {
  @override
  State<tinggibadan> createState() => _tinggibadanState();
}

class _tinggibadanState extends State<tinggibadan> {
  final tanggalcek = TextEditingController();
  final tinggi = TextEditingController();
  String selectedGrafik = '1';

  @override
  void initState() {
    super.initState();
    context.read<TumbuhTinggiCubit>().gettumbuhTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
    context.read<GrafikTinggiCubit>().getGrafikTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: 'F0F0F0'.toColor()),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grafik Tinggi Anak',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: '323232'.toColor()),
                        ),
                        Row(
                          children: [
                            Text(
                              'Catat Tinggi',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: 'FF6969'.toColor()),
                            ),
                            Icon(
                              Icons.add_outlined,
                              color: 'FF6969'.toColor(),
                              size: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  BlocBuilder<GrafikTinggiCubit, GrafikTinggiState>(
                    builder: (context, snapshot) {
                      if (snapshot is GrafikTinggiLoaded) {
                        if (snapshot.grafiktinggi != null) {
                          return Container(
                            padding: EdgeInsets.only(right: 16),
                            child: AspectRatio(
                              aspectRatio: 15 / 10,
                              child: LineChart(
                                LineChartData(
                                  maxX: 60,
                                  minX: 0,
                                  maxY: 120,
                                  minY: 0,
                                  clipData: FlClipData(
                                      top: true,
                                      bottom: false,
                                      left: false,
                                      right: false),
                                  titlesData: FlTitlesData(
                                    show: true,
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                      ),
                                    ),
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: false,
                                      ),
                                    ),
                                  ),
                                  gridData: FlGridData(
                                    show: true,
                                    drawVerticalLine: false,
                                    drawHorizontalLine: true,
                                  ),
                                  borderData: FlBorderData(
                                    show: true,
                                    border: Border(
                                      top: BorderSide(
                                        style: BorderStyle.solid,
                                        color: 'CFCFCF'.toColor(),
                                      ),
                                    ),
                                  ),
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.tigasd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: Colors.blue,
                                      // color: '9E401E'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // 1
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.duasd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: 'FD7948'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // 2
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.satusd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: '9E401E'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // 3
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.median!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: '529166'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // median
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.mintigasd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: '9E401E'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // -3
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.minduasd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: 'FC7847'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // -2
                                    LineChartBarData(
                                      spots: snapshot.grafiktinggi!.minsatusd!
                                          .where((element) =>
                                              element.gender == "Laki-laki")
                                          .map((e) => FlSpot(
                                              e.bulan!.toDouble(),
                                              e.tinggi!.toDouble() ?? 0.0))
                                          .toList(),
                                      isCurved: true,
                                      color: Colors.purpleAccent,
                                      // color: '529166'.toColor(),
                                      barWidth: 1,
                                      dotData: FlDotData(show: false),
                                    ), // -1
                                  ],
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
                  SizedBox(height: 11),
                  Container(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: '9E401E'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '- 3 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: 'FC7847'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '- 2 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.purpleAccent,
                                      // color: 'FC7847'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '- 1 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: '529166'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Median',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      // color: 'FD7948'.toColor(),
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '1 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: 'FD7948'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '2 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: '9E401E'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '3 SD',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: '434343'.toColor()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedGrafik = '1';
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                          topLeft: Radius.circular(5),
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: 'FF6969'.toColor(),
                                        ),
                                        color: (selectedGrafik == '1')
                                            ? 'FF6969'.toColor()
                                            : Colors.white,
                                      ),
                                      padding: EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                          left: 23,
                                          right: 23),
                                      child: Text(
                                        'Per Bulan',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: (selectedGrafik == '1')
                                                ? FontWeight.bold
                                                : FontWeight.w300,
                                            color: (selectedGrafik == '1')
                                                ? Colors.white
                                                : 'FF6969'.toColor()),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedGrafik = '2';
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                        ),
                                        border: Border.all(
                                          width: 1,
                                          color: 'FF6969'.toColor(),
                                        ),
                                        color: (selectedGrafik == '2')
                                            ? 'FF6969'.toColor()
                                            : Colors.white,
                                      ),
                                      padding: EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                          left: 23,
                                          right: 23),
                                      child: Text(
                                        'Per Minggu',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: (selectedGrafik == '2')
                                                ? FontWeight.bold
                                                : FontWeight.w300,
                                            color: (selectedGrafik == '2')
                                                ? Colors.white
                                                : 'FF6969'.toColor()),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '7A7A7A'.toColor(),
                                    ),
                                  ),
                                  Text(
                                    '24 Januari 2023',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '343434'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: 'F0F0F0'.toColor()),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hasil Pertumbuhan:',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: '323232'.toColor(),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Tinggi Badan:',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                          color: '414141'.toColor(),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '-',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                          color: '414141'.toColor(),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        'cm',
                        style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                          color: '414141'.toColor(),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: 'FF6969'.toColor(),
                        ),
                        padding: EdgeInsets.only(
                            top: 3, bottom: 3, left: 11, right: 11),
                        child: Text(
                          'Pendek',
                          style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: 'FFD6D6'.toColor(),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Catatan:',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '6C1F1F'.toColor(),
                          ),
                        ),
                        Text(
                          'Si kecil akan bertumbuh dengan cepat loh Moms, pertumbuhan si kecil bersifat kuantitatif, dapat diukur dan terjadi secara fisik. Pantau pertumbuhan si kecil yuk!',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            color: '6C1F1F'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            BlocBuilder<TumbuhTinggiCubit, TumbuhTinggiState>(
              builder: (context, snapshot) {
                if (snapshot is TumbuhTinggiLoaded) {
                  if (snapshot.tumbuhtinggi != null) {
                    return Container(
                      // height: MediaQuery.of(context).size.height,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: 'F0F0F0'.toColor()),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Riwayat Pencatatan:',
                                style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: '323232'.toColor(),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(riwayatpencatatantinggi());
                                },
                                child: Text(
                                  'Lihat Semua',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'FF6969'.toColor(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 11,
                                      color: '414141'.toColor(),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    snapshot.tumbuhtinggi!.first.checked_at
                                            .toString() ??
                                        '',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: '414141'.toColor(),
                                    ),
                                  ),
                                  // SizedBox(height: 10),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tinggi Badan (cm)',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 11,
                                      color: '414141'.toColor(),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Row(
                                    children: [
                                      Text(
                                        snapshot.tumbuhtinggi!.first.tinggi
                                                .toString() ??
                                            '',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: '414141'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'cm',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: '414141'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.delete,
                                          color: 'FF6969'.toColor(),
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 10),
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
              },
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
