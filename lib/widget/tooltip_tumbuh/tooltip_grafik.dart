part of '../../pages/pages.dart';

class MTooltipGrafik extends StatelessWidget {
  final TooltipController controller;
  final String title;

  const MTooltipGrafik({
    Key? key,
    required this.controller,
    required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 8.0, right: 80),
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
              'Data pertumbuhan anak anda akan ditampilkan pada grafik ini',
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
                    controller.pause();
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
                    controller.next();
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
