import 'package:flutter/material.dart';

class VerifyForm extends StatelessWidget {
  const VerifyForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 20),
                child: Text("Verify information", style: TextStyle(
                  fontSize: 23,
                  fontFamily: "Roboto-Bold",
                  fontWeight: FontWeight.w800,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address", style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto-Bold",
                        fontWeight: FontWeight.w800
                    ),),
                    Text("Bùi Dương Duy Khang", style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto-Regular",
                    ),),
                    Text("893 Tran Hung Dao street, District 5,", style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto-Regular",
                    ),),
                    Text("Hồ Chí Minh city", style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto-Regular",
                    ),),
                    Text("0933171801", style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto-Regular",
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 40),
                      child: Text("Billing", style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Roboto-Bold",
                          fontWeight: FontWeight.w800
                      ),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10,);
                        },
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("The case for Trump", style: TextStyle(
                                    color: Color(0xff919191),
                                    fontSize: 15,
                                    fontFamily: "Roboto-Regular",
                                  ),),
                                  Text("đ 100000", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: "Roboto-Regular",
                                  ),),
                                ],
                              )
                          );
                        },
                      ),
                    ),
                    Divider(height: 1, thickness: 1, color: Color(0xffD8D8D8),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total", style: TextStyle(
                          color: Color(0xff919191),
                          fontSize: 17,
                          fontFamily: "Roboto-Regular",
                        ),),
                        Text("đ 100000", style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "Roboto-Regular",
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(width: 401, height: 45,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff28A745),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(12)))),
                          child: Text("BUY", style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Roboto-Bold",
                              color: Colors.white),),
                        ),),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}


