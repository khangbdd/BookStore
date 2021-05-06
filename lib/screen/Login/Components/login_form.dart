import 'package:book_store/constraint/dimen.dart';
import 'package:book_store/constraint/icon.dart';
import 'package:book_store/screen/Login/Components/button_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscurePass = true;
  TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _controller,
            decoration: InputDecoration(
                prefixIcon: iconEmail,
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: textLogin),
                suffixIcon: IconButton(
                  icon: Icon(Icons.autorenew),
                  onPressed: (){
                    //_controller.text = "";
                    _controller.clear();
                  },
                ),
                border: OutlineInputBorder()),
            validator: (String value) {
              if (value.isEmpty) {
                return 'Email is required';
              } else if (!RegExp(
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                  .hasMatch(value)) {
                return 'Unvalid Email';
              }
              return null;
            },
            onSaved: (String value) {
              _email = value;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            validator: (String value) {
              if (value.isEmpty) {
                return "Password is required";
              } else if (value.length < 6) {
                return "Password must longer than 6 character";
              }
              return null;
            },
            onSaved: (String value) {
              _password = value;
            },
            onChanged: (String value) {
              _password = value;
            },
            obscureText: _obscurePass,
            decoration: InputDecoration(
                prefixIcon: iconPassword,
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: textLogin),
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscurePass ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscurePass = !_obscurePass;
                    });
                  },
                ),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          LoginButton(_formKey),
        ],
      ),
    );
  }
}
