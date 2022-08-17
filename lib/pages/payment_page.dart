import 'package:flutter/material.dart';
import 'package:payment_app/helper/utils.dart';
import 'package:payment_app/widgets/bill_item_widget.dart';
import 'package:payment_app/widgets/icon_text_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/paymentbackground.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            bottom: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage("assets/images/success.png"),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Success !",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Payment is complete for two bills",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        removeBottom: true,
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return BillItemWidget();
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Total Amount",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ 2500",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconTextWidget(
                          icon: Icons.share,
                          bgColor: Utils.mainColor,
                          title: "Share",
                          titleColor: Utils.mainColor,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        IconTextWidget(
                          icon: Icons.print,
                          bgColor: Utils.mainColor,
                          title: "Print",
                          titleColor: Utils.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Utils.mainColor, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                color: Utils.mainColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
