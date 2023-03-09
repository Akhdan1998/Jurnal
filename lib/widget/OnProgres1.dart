part of '../pages/pages.dart';

class onprogres1 extends StatefulWidget {
  @override
  State<onprogres1> createState() => _onprogres1State();
}

class _onprogres1State extends State<onprogres1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/vaksinhepatitisb1.png', scale: 1.5),
            SizedBox(width: 14),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 93,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'On Progres',
                            style: GoogleFonts.poppins().copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor(),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 15,
                            height: 15,
                            padding: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              color: '86C3BB'.toColor(),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.done_outlined,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'On Progres',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: '7A7A7A'.toColor(),
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
          ],
        ),
      ),
    );
  }
}
