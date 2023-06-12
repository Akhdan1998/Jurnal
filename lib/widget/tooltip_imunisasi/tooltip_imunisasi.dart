part of '../../pages/pages.dart';

class MTooltipImunisasi extends StatefulWidget {
  final TooltipController controller;
  final String title;

  const MTooltipImunisasi({
    Key? key,
    required this.controller,
    required this.title,
  }) : super(key: key);

  @override
  State<MTooltipImunisasi> createState() => _MTooltipImunisasiState();
}

class _MTooltipImunisasiState extends State<MTooltipImunisasi> {
  // final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late String? data;

  Future<void> setPreference() async {
    final kacuk = await SharedPreferences.getInstance();
    kacuk.setString('imunisasi', 'ada');
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
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
              'Buat data anak terlebih dahulu untuk mengakses fitur',
              style: GoogleFonts.poppins().copyWith(
                  color: '414141'.toColor(),
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {

                    widget.controller.pause();

                    setPreference();
                  },
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      'Lewati',
                      style: GoogleFonts.poppins().copyWith(
                          color: '86C3BB'.toColor(),
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    widget.controller.next();
                  },
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(
                          'Lanjut',
                          style: GoogleFonts.poppins().copyWith(
                              color: 'FF6969'.toColor(),
                              fontSize: 10,
                              fontWeight: FontWeight.w300),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: 'FF6969'.toColor(),
                          size: 13,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
