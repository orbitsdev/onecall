import 'package:flutter/material.dart';
import 'package:onecall/constant/ui.dart';

class VariationQuantityCard extends StatelessWidget {
const VariationQuantityCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height  * 0.01),
          //color: Colors.red,
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Quantity',
                    style: bodytext_h2.copyWith(color: black_75),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: black_12)),
                    child: Row(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(color: black_12, width: 0.5),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove_rounded,
                              color: black_12,
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: Center(
                                child: Text(
                              '4',
                              style: bodytext_h2.copyWith(color: primary),
                            ))),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: black_12, width: 0.5),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add_rounded,
                              color: black_12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}