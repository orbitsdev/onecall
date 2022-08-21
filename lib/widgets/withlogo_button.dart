import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:onecall/assistant/assistant.dart';
import 'package:onecall/constant/ui.dart';
import 'package:onecall/helperwidgets/horizontal_space.dart';

class WithlogoButton extends StatelessWidget {

  final Function function;
  final bool hasborder;
  final String label;
  const WithlogoButton({
    Key? key,
    required this.function,
    required this.hasborder,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                Assistant()
                                    .fromImages('cdnlogo.com_google-icon.svg'),
                                width: 24,
                                height: 24,
                              ),
                            ),
                            HorizontalSpace(value: 12),
                            Text(
                              label,
                              style: bodytext_h1.copyWith(
                                  fontWeight: FontWeight.w700),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
  }
}
