part of '../pages.dart';

class listimunisasi extends StatefulWidget {
  ImunisasiGroup imunisasi;
  late final bool isFirst;

  listimunisasi(this.imunisasi, {this.isFirst = false});

  @override
  State<listimunisasi> createState() => _listimunisasiState();
}

class _listimunisasiState extends State<listimunisasi> {
  final TooltipController _controller = TooltipController();
  bool done = false;

  @override
  void initState() {
    super.initState();
    _controller.onDone(() {
      setState(() {
        done = true;
      });
    });
  }

  Future<void>? dancuk(BuildContext cs) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      OverlayTooltipScaffold.of(cs)?.controller.start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dancuk(context),
      builder: (context, snaps) => GestureDetector(
        onTap: () {
          Get.to(imunisasidetail(widget.imunisasi));
        },
        child: (widget.isFirst == true)
            ? Column(
              children: [
                OverlayTooltipItem(
                  displayIndex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(widget.imunisasi.icon ?? '',
                            scale: 1.5),
                        SizedBox(width: 14),
                        Container(
                          // color: Colors.blue,
                          // height: 40,
                          width: MediaQuery.of(context).size.width - 93,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        widget.imunisasi.title ?? '',
                                        maxLines: 2,
                                        style:
                                        GoogleFonts.poppins().copyWith(
                                          fontSize: 12,
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
                                          color:
                                          (widget.imunisasi.is_active ==
                                              true)
                                              ? '86C3BB'.toColor()
                                              : 'C6C6C6'.toColor(),
                                          borderRadius:
                                          BorderRadius.circular(50),
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
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width -
                                        117,
                                    child: Text(
                                      widget.imunisasi.description ?? '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '7A7A7A'.toColor(),
                                      ),
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
                  tooltip: (controller) => MTooltipList(
                    controller: controller,
                    title: '',
                  ),
                ),
                Divider(color: Colors.grey),
              ],
            )
            : Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(widget.imunisasi.icon ?? '', scale: 1.5),
                    SizedBox(width: 14),
                    Container(
                      // color: Colors.blue,
                      // height: 40,
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
                                    widget.imunisasi.title ?? '',
                                    maxLines: 2,
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 12,
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
                                      color: (widget.imunisasi.is_active ==
                                              true)
                                          ? '86C3BB'.toColor()
                                          : 'C6C6C6'.toColor(),
                                      borderRadius:
                                          BorderRadius.circular(50),
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
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 117,
                                child: Text(
                                  widget.imunisasi.description ?? '',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: '7A7A7A'.toColor(),
                                  ),
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
                Divider(color: Colors.grey),
              ],
            ),
      ),
    );
    // OverlayTooltipScaffold(
    //   tooltipAnimationCurve: Curves.linear,
    //   tooltipAnimationDuration: const Duration(milliseconds: 1000),
    //   controller: _controller,
    //   startWhen: (initializedWidgetLength) async {
    //     await Future.delayed(const Duration(milliseconds: 500));
    //     return initializedWidgetLength == 3 && !done;
    //   },
    //   builder: (context) => FutureBuilder(
    //     future: dancuk(context),
    //     builder: (context, snaps) => Container(
    //         child: GestureDetector(
    //           onTap: () {
    //             Get.to(imunisasidetail(widget.imunisasi));
    //           },
    //           child: OverlayTooltipItem(
    //             displayIndex: 2,
    //             tooltip: (controller) => MTooltipListImunisasi(
    //               controller: controller,
    //               title: '',
    //             ),
    //             child: Container(
    //               // height: 70,
    //               color: Colors.white,
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Image.asset(widget.imunisasi.icon ?? '', scale: 1.5),
    //                       SizedBox(width: 14),
    //                       Container(
    //                         // color: Colors.blue,
    //                         // height: 40,
    //                         width: MediaQuery.of(context).size.width - 93,
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                           children: [
    //                             Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 Row(
    //                                   children: [
    //                                     Text(
    //                                       widget.imunisasi.title ?? '',
    //                                       maxLines: 2,
    //                                       style: GoogleFonts.poppins().copyWith(
    //                                         fontSize: 12,
    //                                         fontWeight: FontWeight.bold,
    //                                         color: '323232'.toColor(),
    //                                       ),
    //                                     ),
    //                                     SizedBox(width: 5),
    //                                     Container(
    //                                       alignment: Alignment.topLeft,
    //                                       width: 15,
    //                                       height: 15,
    //                                       padding: EdgeInsets.all(2.5),
    //                                       decoration: BoxDecoration(
    //                                         color:
    //                                         (widget.imunisasi.is_active == true)
    //                                             ? '86C3BB'.toColor()
    //                                             : 'C6C6C6'.toColor(),
    //                                         borderRadius: BorderRadius.circular(50),
    //                                       ),
    //                                       child: Icon(
    //                                         Icons.done_outlined,
    //                                         color: Colors.white,
    //                                         size: 10,
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 SizedBox(height: 5),
    //                                 Container(
    //                                   width: MediaQuery.of(context).size.width - 117,
    //                                   child: Text(
    //                                     widget.imunisasi.description ?? '',
    //                                     style: GoogleFonts.poppins(
    //                                       fontSize: 10,
    //                                       fontWeight: FontWeight.w300,
    //                                       color: '7A7A7A'.toColor(),
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                             Icon(
    //                               Icons.arrow_forward_ios_outlined,
    //                               color: 'E2E2E2'.toColor(),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Divider(color: Colors.grey),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //   ),
    // );
  }
}
