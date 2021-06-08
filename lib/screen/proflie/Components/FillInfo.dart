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
  final TextEditingController birthdayControler = TextEditingController();
  final TextEditingController addressLaneControler = TextEditingController();
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController cityControler = TextEditingController();
  final TextEditingController phoneNumbersControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
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
              "Birthday",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: birthdayControler,
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: emailControler,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Phone Numbers",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            TextField(
              controller: phoneNumbersControler,
              keyboardType: TextInputType.text,
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
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff00A2FF),
                        shape: const RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10)))),
                    child: Container(
                      child: Text(
                        "EDIT",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Roboto-Bold",
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}
