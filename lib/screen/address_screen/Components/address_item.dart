import 'package:book_store/Class/AddressCardInfo.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatefulWidget {
  const AddressItem({
    Key key, @required this.addressCardInfo,
  }) : super(key: key);

  final AddressCardInfo addressCardInfo;
  @override
  _AddressItemState createState() => _AddressItemState();
}

class _AddressItemState extends State<AddressItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
          onTap: () {
            setState(() {
              widget.addressCardInfo.isChose = !widget.addressCardInfo.isChose;
            });
          },
          splashColor: Color(0xff00A2FF).withOpacity(0.2),
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: Color(0xffffffff),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.addressCardInfo.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Roboto-Regular"),
                        ),
                        Text(
                          widget.addressCardInfo.phoneNumber,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Roboto-Regular"),
                        ),
                        Text(
                          widget.addressCardInfo.addressLane,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Roboto-Regular"),
                        ),
                        Text(
                          widget.addressCardInfo.district,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Roboto-Regular"),
                        ),
                        Text(
                          widget.addressCardInfo.city,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Roboto-Regular"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50, left: 110),
                      child: Checkbox(
                        hoverColor: Colors.white,
                        shape: CircleBorder( side: BorderSide(color: Color(0xff0F52BA))),
                        value: widget.addressCardInfo.isChose,
                        onChanged: (bool value) {
                          setState(() {
                            widget.addressCardInfo.isChose = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
    );
  }
}