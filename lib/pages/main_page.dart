import 'package:flutter/material.dart';
import 'package:payment_app/helper/utils.dart';
import 'package:payment_app/pages/payment_page.dart';
import 'package:payment_app/widgets/icon_text_widget.dart';
import 'package:payment_app/widgets/list_item_widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  top: 70,
                  left: 15,
                  child: Text(
                    "My Bills",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage("assets/images/curve.png"),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 50,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet<dynamic>(
                        isScrollControlled: true,
                        isDismissible: false,
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext bc) {
                          return Container(
                            height: MediaQuery.of(context).size.height - 185,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height -
                                        250,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Positioned(
                                  right: 50,
                                  child: Container(
                                    height: 220,
                                    width: 50,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Utils.mainColor,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          child: IconTextWidget(
                                            icon: Icons.cancel_outlined,
                                            bgColor: Utils.mainColor,
                                            title: "",
                                            titleColor: Colors.white,
                                          ),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        IconTextWidget(
                                          icon: Icons.add_circle_outline,
                                          bgColor: Utils.mainColor,
                                          title: "Add",
                                          titleColor: Colors.white,
                                        ),
                                        IconTextWidget(
                                          icon: Icons.history_outlined,
                                          bgColor: Utils.mainColor,
                                          title: "History",
                                          titleColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/images/lines.png"),
                    ),
                    // backgroundColor: Utils.mainColor,
                    maxRadius: 25,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListItemWidget();
                }),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PaymentPage()));
            },
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Utils.mainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Pay All Bill",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
