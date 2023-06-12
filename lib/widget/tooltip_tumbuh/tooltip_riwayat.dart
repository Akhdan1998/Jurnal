part of '../../pages/pages.dart';

class MTooltipRiwayat extends StatefulWidget {
  final TooltipController controller;
  final String title;

  const MTooltipRiwayat(
      {Key? key, required this.controller, required this.title})
      : super(key: key);

  @override
  State<MTooltipRiwayat> createState() => _MTooltipRiwayatState();
}

class _MTooltipRiwayatState extends State<MTooltipRiwayat> {
  Future<void> setPreference() async {
    final tumbuh = await SharedPreferences.getInstance();
    tumbuh.setString('tumbuh', 'ada');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        // alignment: Alignment.topCenter,
        width: size.width * .7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Riwayat pencatatan anak anda akan muncul disini',
              style: GoogleFonts.poppins().copyWith(
                  color: '414141'.toColor(),
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                widget.controller.pause();
                setPreference();
              },
              child: Container(
                color: Colors.white,
                child: Text(
                  'Selesai',
                  style: GoogleFonts.poppins().copyWith(
                      color: '86C3BB'.toColor(),
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
