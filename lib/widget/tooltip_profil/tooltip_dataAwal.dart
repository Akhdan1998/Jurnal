part of '../../pages/pages.dart';

class MTooltipDataAwal extends StatefulWidget {
  final TooltipController controller;
  final String title;

  const MTooltipDataAwal({
    Key? key,
    required this.controller,
    required this.title,
  }) : super(key: key);

  @override
  State<MTooltipDataAwal> createState() => _MTooltipDataAwalState();
}

class _MTooltipDataAwalState extends State<MTooltipDataAwal> {
  Future<void> setPreference() async {
    final profil = await SharedPreferences.getInstance();
    profil.setString('profil', 'ada');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 112),
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
              'Menampilkan data pertumbuhan awal saat anak Anda lahir',
              style: GoogleFonts.poppins().copyWith(
                  color: '414141'.toColor(),
                  fontSize: 13,
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
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
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
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: 'FF6969'.toColor(),
                          size: 14,
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
