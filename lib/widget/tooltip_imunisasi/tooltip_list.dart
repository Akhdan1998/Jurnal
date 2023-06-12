part of '../../pages/pages.dart';

class MTooltipList extends StatefulWidget {
  final TooltipController controller;
  final String title;

  const MTooltipList({Key? key, required this.controller, required this.title})
      : super(key: key);

  @override
  State<MTooltipList> createState() => _MTooltipListState();
}

class _MTooltipListState extends State<MTooltipList> {
  Future<void> setPreferences() async {
    final simpan = await SharedPreferences.getInstance();
    simpan.setString('listImunisasi', 'ada');
    simpan.setString('imunisasi', 'ada');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        // alignment: Alignment.topCenter,
        width: size.width * 7,
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
              'Catat data imunisasi anak anda disini',
              style: GoogleFonts.poppins().copyWith(
                  color: '414141'.toColor(),
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                widget.controller.pause();
                setPreferences();
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
