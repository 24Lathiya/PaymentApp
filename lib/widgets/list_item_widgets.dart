import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textSpan = TextSpan(
      text: 'Auto pay on 15 Aug 2022',
      style: TextStyle(color: Colors.green),
    );
    final tp = TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    tp.layout();
    final tpWidth = tp.width;
    // print('===text width===: $tpWidth');
    return Container(
      margin: EdgeInsets.only(right: 20, top: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 3)
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.red, width: 3.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/brand1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "KenGen Power",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Id : 195721365",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Select",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* Text(
                            "Auto pay on 15 Aug 2022",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),Divider(
                            color: Colors.green,
                          ),*/
                    RichText(text: textSpan),
                    Container(
                      width: tpWidth,
                      child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(15, (index) {
                          return Text(
                            "-",
                            style: TextStyle(color: Colors.green),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 1250.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Duo in 7 days",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
