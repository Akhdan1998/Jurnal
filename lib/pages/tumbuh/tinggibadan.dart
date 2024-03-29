part of '../pages.dart';

class tinggibadan extends StatefulWidget {
  final String anak_id;
  final String gender;
  final ValueChanged<List<TumbuhTinggi>>? listTinggi;

  tinggibadan(this.anak_id, this.gender, {this.listTinggi});

  @override
  State<tinggibadan> createState() => _tinggibadanState();
}

class _tinggibadanState extends State<tinggibadan> {
  final tanggalcek1 = TextEditingController();
  final tanggalcek = TextEditingController();
  final tinggi = TextEditingController();
  String selectedGrafik = '1';
  final TooltipController _controller = TooltipController();
  bool done = false;
  String? getData;

  @override
  void initState() {
    _controller.onDone(() {
      setState(() {
        done = true;
      });
    });
    super.initState();
    context.read<TumbuhTinggiCubit>().gettumbuhTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4', widget.anak_id);
    context.read<GrafikTinggiCubit>().getGrafikTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4', widget.gender);
    context.read<HasilTinggiCubit>().gethasilTinggi(
        'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
        widget.gender,
        widget.anak_id);
  }

  void deleted(String id) async {
    Uri url_ = Uri.parse(
        'url-backend');
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
          msg: "Kamu berhasil menghapus data Tinggi Badan anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      context.read<TumbuhTinggiCubit>().gettumbuhTinggi(
          'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
          widget.anak_id);
      context.read<HasilTinggiCubit>().gethasilTinggi(
          'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
          widget.gender,
          widget.anak_id);
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void>? getPreferences(BuildContext cs) async {
    Future.delayed(const Duration(milliseconds: 1000), () {
      OverlayTooltipScaffold.of(cs)?.controller.start();
    });
    final get = await SharedPreferences.getInstance();

    getData = get.getString('tumbuh');

    print("HAHAHAi " + getData.toString());
  }

  Future<void> dataTinggi(
      String anak_id, String tinggi, String checked_at) async {
    Uri url = Uri.parse(
        "url-backend");
    var res = await http.post(
      url,
      body: {
        "anak_id": anak_id,
        "tinggi": tinggi,
        "checked_at": checked_at + ' ' + '07:00:00',
      },
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
      },
    );
    Map<String, dynamic> body = jsonDecode(res.body);
    if (res.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Kamu berhasil memperbaharui data Tinggi Badan anak!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 3,
          backgroundColor: 'FF6969'.toColor(),
          textColor: Colors.white,
          fontSize: 16.0);
      BuatDataAnak data = BuatDataAnak.fromJson(body["data"]);
      print(res.statusCode);
    } else {
      throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getPreferences(context),
        builder: (context, snaps) => SingleChildScrollView(
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
                      color: Colors.white,
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
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15)),
                                ),
                                context: context,
                                builder: (context) {
                                  return SingleChildScrollView(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(15)),
                                        color: Colors.white,
                                      ),
                                      // height: MediaQuery.of(context).size.height,
                                      padding: EdgeInsets.only(
                                          top: 16,
                                          right: 16,
                                          left: 16,
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Isi Data Tinggi',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: '323232'.toColor(),
                                            ),
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            'Tanggal Cek',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontSize: 11,
                                              color: '5A5A5A'.toColor(),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          TextField(
                                            controller: tanggalcek1,
                                            decoration: InputDecoration(
                                              suffixIcon: Icon(
                                                Icons.date_range,
                                                size: 20,
                                                color: '8F8F8F'.toColor(),
                                              ),
                                              hintStyle: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: '989797'.toColor(),
                                              ),
                                              hintText: '24 Maret 2023',
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: 'FF6969'.toColor()),
                                              ),
                                              contentPadding: EdgeInsets.only(
                                                  top: 5, left: 10, bottom: 10),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            onTap: () async {
                                              DateTime? pickeddate =
                                                  await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime(1945),
                                                      lastDate: DateTime(2500));

                                              if (pickeddate != null) {
                                                setState(() {
                                                  tanggalcek1.text =
                                                      DateFormat('yyyy-MM-dd')
                                                          .format(pickeddate);
                                                });
                                              }
                                            },
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            'Tinggi Badan (cm)',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontSize: 11,
                                              color: '5A5A5A'.toColor(),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            controller: tinggi,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: 'FF6969'.toColor()),
                                              ),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10, top: 5, bottom: 5),
                                              hintStyle: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: '989797'.toColor(),
                                              ),
                                              hintText: '10',
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 14),
                                          BlocBuilder<BuatdataanakCubit,
                                              BuatdataanakState>(
                                            builder: (context, snapshot) {
                                              if (snapshot
                                                  is BuatdataanakLoaded) {
                                                if (snapshot.dataanak != null) {
                                                  return GestureDetector(
                                                    onTap: () async {
                                                      await dataTinggi(
                                                              snapshot.dataanak!
                                                                  .first.anak_id
                                                                  .toString(),
                                                              tinggi.text,
                                                              tanggalcek1.text)
                                                          .whenComplete(() {
                                                        context
                                                            .read<
                                                                TumbuhTinggiCubit>()
                                                            .gettumbuhTinggi(
                                                                'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
                                                                snapshot
                                                                    .dataanak!
                                                                    .first
                                                                    .anak_id
                                                                    .toString());
                                                        context
                                                            .read<
                                                                HasilTinggiCubit>()
                                                            .gethasilTinggi(
                                                                'Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4',
                                                                snapshot
                                                                    .dataanak!
                                                                    .first
                                                                    .gender!,
                                                                snapshot
                                                                    .dataanak!
                                                                    .first
                                                                    .anak_id!);
                                                        Navigator.of(context)
                                                            .pop();
                                                      });
                                                    },
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            'FF6969'.toColor(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Text(
                                                        'Simpan Data',
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
                                                    ),
                                                  );
                                                } else {
                                                  return SizedBox();
                                                }
                                              } else {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: 'FF6969'.toColor(),
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                          SizedBox(height: 40),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              color: Colors.white,
                              child: Row(
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<HasilTinggiCubit, HasilTinggiState>(
                        builder: (context, state) {
                      if (state is HasilTinggiLoaded) {
                        if (state.hasiltinggi != null) {
                          return BlocBuilder<GrafikTinggiCubit,
                              GrafikTinggiState>(
                            builder: (context, snapshot) {
                              if (snapshot is GrafikTinggiLoaded) {
                                if (snapshot.grafiktinggi != null) {
                                  return (getData == null)
                                      ? OverlayTooltipItem(
                                          displayIndex: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            padding: EdgeInsets.only(
                                                right: 16, top: 16),
                                            child: AspectRatio(
                                              aspectRatio: 15 / 10,
                                              child: LineChart(
                                                LineChartData(
                                                  maxX: 6,
                                                  minX: 0,
                                                  maxY: 75,
                                                  minY: 43,
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
                                                        style:
                                                            BorderStyle.solid,
                                                        color:
                                                            'CFCFCF'.toColor(),
                                                      ),
                                                    ),
                                                  ),
                                                  lineBarsData: [
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!.tigasd
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: '23A128'.toColor(),
                                                      // color: '9E401E'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // 1
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!.duasd
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: 'FCB447'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // 2
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!.satusd
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: '9E401E'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // 3
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!.median
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: '4FA2EE'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // median
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!
                                                          .mintigasd!
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: '9E401E'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // -3
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!
                                                          .minduasd
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: 'FCB447'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // -2
                                                    LineChartBarData(
                                                      spots: snapshot
                                                          .grafiktinggi!
                                                          .minsatusd
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: '23A128'.toColor(),
                                                      // color: '529166'.toColor(),
                                                      barWidth: 1,
                                                      dotData: FlDotData(
                                                          show: false),
                                                    ), // -1
                                                    LineChartBarData(
                                                      spots: state
                                                          .hasiltinggi!.grafik!
                                                          .map((e) => FlSpot(
                                                              e.bulan!
                                                                  .toDouble(),
                                                              e.tinggi!
                                                                      .toDouble() ??
                                                                  0.0))
                                                          .toList(),
                                                      isCurved: true,
                                                      color: 'ED75E8'.toColor(),
                                                      // color: '529166'.toColor(),
                                                      barWidth: 1,
                                                      dotData:
                                                          FlDotData(show: true),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          tooltip: (controller) => Padding(
                                            padding: EdgeInsets.only(right: 15),
                                            child: MTooltipGrafik(
                                              controller: controller,
                                              title: '',
                                            ),
                                          ),
                                        )
                                      : Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: EdgeInsets.only(
                                              right: 16, top: 16),
                                          child: AspectRatio(
                                            aspectRatio: 15 / 10,
                                            child: LineChart(
                                              LineChartData(
                                                maxX: 6,
                                                minX: 0,
                                                maxY: 75,
                                                minY: 43,
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
                                                    spots: snapshot
                                                        .grafiktinggi!.tigasd
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: '9E401E'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // 3
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!.duasd
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: 'FCB447'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // 2
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!.satusd
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: '23A128'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // 1
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!.median
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: '4FA2EE'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // median
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!.minsatusd
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: '23A128'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // -1
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!.minduasd
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: 'FCB447'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // -2
                                                  LineChartBarData(
                                                    spots: snapshot
                                                        .grafiktinggi!
                                                        .mintigasd!
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: '9E401E'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: false),
                                                  ), // -3
                                                  LineChartBarData(
                                                    spots: state
                                                        .hasiltinggi!.grafik!
                                                        .map((e) => FlSpot(
                                                            e.bulan!.toDouble(),
                                                            e.tinggi!
                                                                    .toDouble() ??
                                                                0.0))
                                                        .toList(),
                                                    isCurved: true,
                                                    color: 'ED75E8'.toColor(),
                                                    barWidth: 1,
                                                    dotData:
                                                        FlDotData(show: true),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                } else {
                                  return SizedBox();
                                }
                              } else {
                                return SizedBox();
                              }
                            },
                          );
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return BlocBuilder<GrafikTinggiCubit,
                            GrafikTinggiState>(
                          builder: (context, data) {
                            if (data is GrafikTinggiLoaded) {
                              if (data.grafiktinggi != null) {
                                return Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.only(right: 16),
                                  child: AspectRatio(
                                    aspectRatio: 15 / 10,
                                    child: LineChart(
                                      LineChartData(
                                        maxX: 6,
                                        minX: 0,
                                        maxY: 75,
                                        minY: 43,
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
                                            spots: data.grafiktinggi!.tigasd
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: '9E401E'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // 3
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.duasd
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: 'FCB447'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // 2
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.satusd
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: '23A128'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // 1
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.median
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: '4FA2EE'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // median
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.minsatusd
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: '23A128'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // -1sd
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.minduasd
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: 'FCB447'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // -2sd
                                          LineChartBarData(
                                            spots: data.grafiktinggi!.mintigasd!
                                                .map((e) => FlSpot(
                                                    e.bulan!.toDouble(),
                                                    e.tinggi!.toDouble() ??
                                                        0.0))
                                                .toList(),
                                            isCurved: true,
                                            color: '9E401E'.toColor(),
                                            barWidth: 1,
                                            dotData: FlDotData(show: false),
                                          ), // -3sd
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return SizedBox();
                              }
                            } else {
                              return SizedBox();
                            }
                          },
                        );
                      }
                    }),
                    SizedBox(height: 11),
                    Container(
                      color: Colors.white,
                      // padding: EdgeInsets.only(right: 16, top: 16),
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 12, right: 12, bottom: 12),
                        child: Column(
                          children: [
                            OverlayTooltipItem(
                              displayIndex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: 'FCB447'.toColor(),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: '23A128'.toColor(),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: '4FA2EE'.toColor(),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: '23A128'.toColor(),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: 'FCB447'.toColor(),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                              ),
                              tooltip: (controller) => MTooltipSd(
                                controller: controller,
                                title: '',
                              ),
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
                                              fontWeight:
                                                  (selectedGrafik == '1')
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
                                              fontWeight:
                                                  (selectedGrafik == '2')
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
                                    BlocBuilder<HasilTinggiCubit,
                                            HasilTinggiState>(
                                        builder: (context, snapshot) {
                                      if (snapshot is HasilTinggiLoaded) {
                                        if (snapshot.hasiltinggi != null) {
                                          // final jakarta = tz.getLocation('Indonesia/Jakarta');
                                          // final localizedDt = tz.TZDateTime.from(DateTime.now(), jakarta);

                                          var date = DateTime
                                              .fromMillisecondsSinceEpoch(
                                                  snapshot.hasiltinggi!
                                                          .checked_at! *
                                                      1000);

                                          String tanggal =
                                              DateFormat('dd MMMM yyyy')
                                                  .format(date);

                                          return Text(
                                            tanggal,
                                            // snapshot.hasiltinggi!.checked_at.toString() ?? '',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: '343434'.toColor(),
                                            ),
                                          );
                                        } else {
                                          return SizedBox();
                                        }
                                      } else {
                                        return Text('-');
                                      }
                                    }),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              BlocBuilder<HasilTinggiCubit, HasilTinggiState>(
                  builder: (context, snapshot) {
                if (snapshot is HasilTinggiLoaded) {
                  if (snapshot.hasiltinggi != null) {
                    return (getData == null)
                        ? OverlayTooltipItem(
                            tooltipVerticalPosition:
                                TooltipVerticalPosition.TOP,
                            displayIndex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1, color: 'F0F0F0'.toColor()),
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
                                        snapshot.hasiltinggi!.hasil!.tinggi
                                                    .toString() +
                                                ' ' +
                                                'cm' ??
                                            '',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: '414141'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: snapshot
                                              .hasiltinggi!.hasil!.color!
                                              .toColor(),
                                        ),
                                        padding: EdgeInsets.only(
                                            top: 3,
                                            bottom: 3,
                                            left: 11,
                                            right: 11),
                                        child: Text(
                                          snapshot.hasiltinggi!.hasil!.status
                                                  .toString() ??
                                              '',
                                          // snapshot.hasiltinggi!.hasil!.status.toString() ?? '',
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
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: snapshot
                                          .hasiltinggi!.hasil!.color_catatan!
                                          .toColor(),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Catatan:',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Text(
                                          snapshot.hasiltinggi!.hasil!
                                                  .catatan ??
                                              '',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            tooltip: (controller) => Padding(
                              padding: EdgeInsets.only(right: 15, bottom: 8),
                              child: MTooltipHasilPertumbuhan(
                                controller: controller,
                                title: '',
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1, color: 'F0F0F0'.toColor()),
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
                                      snapshot.hasiltinggi!.hasil!.tinggi
                                                  .toString() +
                                              ' ' +
                                              'cm' ??
                                          '',
                                      style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: '414141'.toColor(),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: snapshot
                                            .hasiltinggi!.hasil!.color!
                                            .toColor(),
                                      ),
                                      padding: EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                          left: 11,
                                          right: 11),
                                      child: Text(
                                        snapshot.hasiltinggi!.hasil!.status
                                                .toString() ??
                                            '',
                                        // snapshot.hasiltinggi!.hasil!.status.toString() ?? '',
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
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: snapshot
                                        .hasiltinggi!.hasil!.color_catatan!
                                        .toColor(),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Catatan:',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        snapshot.hasiltinggi!.hasil!.catatan ??
                                            '',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                  } else {
                    return SizedBox();
                  }
                } else {
                  return Container(
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
                          ],
                        ),
                      ],
                    ),
                  );
                }
              }),
              SizedBox(height: 15),
              BlocBuilder<TumbuhTinggiCubit, TumbuhTinggiState>(
                builder: (context, snapshot) {
                  if (snapshot is TumbuhTinggiLoaded) {
                    if (snapshot.tumbuhtinggi != null) {
                      return (getData == null)
                          ? OverlayTooltipItem(
                              tooltipVerticalPosition:
                                  TooltipVerticalPosition.TOP,
                              displayIndex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: 'F0F0F0'.toColor()),
                                ),
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                            Get.to(riwayatpencatatan(
                                                widget.anak_id));
                                          },
                                          child: Container(
                                            color: Colors.white,
                                            child: Text(
                                              'Lihat Semua',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: 'FF6969'.toColor(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 9),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Tanggal',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            color: '414141'.toColor(),
                                          ),
                                        ),
                                        Text(
                                          'Tinggi Badan (cm)',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 11,
                                            color: '414141'.toColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Column(
                                      children: snapshot.tumbuhtinggi!.map((e) {
                                        DateTime haha =
                                            DateFormat('yyyy-MM-dd hh:mm:ss')
                                                .parse(e.checked_at!);

                                        String date = DateFormat('dd MMMM yyy')
                                            .format(haha);
                                        return Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  date,
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    color: '414141'.toColor(),
                                                  ),
                                                ),
                                                Container(
                                                  width: 102,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        e.tinggi.toString() +
                                                                ' ' +
                                                                'cm' ??
                                                            '',
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: '414141'
                                                              .toColor(),
                                                        ),
                                                      ),
                                                      SizedBox(width: 6),
                                                      GestureDetector(
                                                        onTap: () {
                                                          showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                    'Hapus data tinggi anak',
                                                                    style: GoogleFonts.poppins().copyWith(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  content: Text(
                                                                    'Kamu yakin akan menghapus data tinggi badan anak?',
                                                                    style: GoogleFonts.poppins().copyWith(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.of(context)
                                                                            .pop();
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Tidak',
                                                                        style: GoogleFonts.poppins().copyWith(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: 'FF6969'.toColor()),
                                                                      ),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        deleted(e
                                                                            .id
                                                                            .toString());
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Ya',
                                                                        style: GoogleFonts.poppins().copyWith(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: 'FF6969'.toColor()),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              });
                                                        },
                                                        child: Container(
                                                          color: Colors
                                                              .transparent,
                                                          child: Icon(
                                                            Icons.delete,
                                                            color: 'FF6969'
                                                                .toColor(),
                                                            size: 18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                              tooltip: (controller) => Padding(
                                padding: EdgeInsets.only(right: 15, bottom: 8),
                                child: MTooltipRiwayat(
                                  controller: controller,
                                  title: '',
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1, color: 'F0F0F0'.toColor()),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          Get.to(riwayatpencatatan(
                                              widget.anak_id));
                                        },
                                        child: Container(
                                          color: Colors.white,
                                          child: Text(
                                            'Lihat Semua',
                                            style:
                                                GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: 'FF6969'.toColor(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 9),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tanggal',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          color: '414141'.toColor(),
                                        ),
                                      ),
                                      Text(
                                        'Tinggi Badan (cm)',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          color: '414141'.toColor(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: snapshot.tumbuhtinggi!.map((e) {
                                      DateTime haha =
                                          DateFormat('yyyy-MM-dd hh:mm:ss')
                                              .parse(e.checked_at!);

                                      String date = DateFormat('dd MMMM yyy')
                                          .format(haha);
                                      return Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                date,
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: '414141'.toColor(),
                                                ),
                                              ),
                                              Container(
                                                width: 102,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      e.tinggi.toString() +
                                                              ' ' +
                                                              'cm' ??
                                                          '',
                                                      style:
                                                          GoogleFonts.poppins()
                                                              .copyWith(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            '414141'.toColor(),
                                                      ),
                                                    ),
                                                    SizedBox(width: 6),
                                                    GestureDetector(
                                                      onTap: () {
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                  'Hapus data tinggi anak',
                                                                  style: GoogleFonts.poppins().copyWith(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                content: Text(
                                                                  'Kamu yakin akan menghapus data tinggi badan anak?',
                                                                  style: GoogleFonts.poppins().copyWith(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                    child: Text(
                                                                      'Tidak',
                                                                      style: GoogleFonts.poppins().copyWith(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              'FF6969'.toColor()),
                                                                    ),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      deleted(e
                                                                          .id
                                                                          .toString());
                                                                    },
                                                                    child: Text(
                                                                      'Ya',
                                                                      style: GoogleFonts.poppins().copyWith(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              'FF6969'.toColor()),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            });
                                                      },
                                                      child: Container(
                                                        color:
                                                            Colors.transparent,
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: 'FF6969'
                                                              .toColor(),
                                                          size: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      );
                                    }).toList(),
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
              // SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
