part of '../pages/pages.dart';

class pertanyaanTes extends StatefulWidget {
  late final PopupTes? listTes;

  pertanyaanTes(this.listTes);

  @override
  State<pertanyaanTes> createState() => _pertanyaanTesState();
}

class _pertanyaanTesState extends State<pertanyaanTes> {
  bool isChecked = false;
  String SelectedData = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 40,
              width: 18,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                checkColor: Colors.white,
                activeColor: '86C3BB'.toColor(),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Get.to(detailperkembangan(widget.listTes));
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 156,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          child: Text(
                            widget.listTes!.isi ?? '',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '323232'.toColor()),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          child: Text(
                            widget.listTes!.deskripsiTes ?? '',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '7A7A7A'.toColor()),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: 'E2E2E2'.toColor(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
