import 'package:flutter/material.dart';

class FillInfo extends StatefulWidget {
  const FillInfo({
    Key key,
  }) : super(key: key);

  @override
  _FillInfoState createState() => _FillInfoState();
}

class _FillInfoState extends State<FillInfo> {

  final TextEditingController nameControler = TextEditingController();
  final TextEditingController phoneNumberControler = TextEditingController();
  final TextEditingController addressLaneControler = TextEditingController();
  final TextEditingController districtControler = TextEditingController();
  final TextEditingController cityControler = TextEditingController();
  final TextEditingController postalCodeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {

    nameControler.text ="Bùi Dương Duy Khang"; // this is how to set and get text in TextField.

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: nameControler,
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10),
            Text(
              "Phone Numbers",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: phoneNumberControler,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Address Lane",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: addressLaneControler,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "District",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: districtControler,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "City",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: cityControler,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Postal Code",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: postalCodeControler,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFFFFF),
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xffDC3545)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10)))),
                        child: Container(
                          child: Text(
                            "DELETE",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffFF0000),
                                fontFamily: "Roboto-Bold",
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    ),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff28A745),
                            shape: const RoundedRectangleBorder(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10)))),
                        child: Container(
                          child: Text(
                            "ADD",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Roboto-Bold",
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    ),
               ]),
              ),
          ],
        ));
  }
}
