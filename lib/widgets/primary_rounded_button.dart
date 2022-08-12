import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class PrimaryRoundedButton extends StatelessWidget {

  final Function funtion;
  final String label;
  const PrimaryRoundedButton({
    Key? key,
    required this.funtion,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
                        primary: primary,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      funtion();
                    },
                    child: Text(
                      label,
                      style:
                          bodytext_h1.copyWith(fontWeight: FontWeight.normal),
                    ),
                  );
  }
}
