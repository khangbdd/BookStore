import 'package:flutter/material.dart';

class Register_Activity extends StatefulWidget {
  @override
  _Register_ActivityState createState() => _Register_ActivityState();
}

class _Register_ActivityState extends State<Register_Activity> {
  String _name;
  String _email;
  String _password;
  String _confirmPassword;
  bool _check = false;

  final Text _policy = Text(
    'Term and Conditions',
    style: TextStyle(color: Color(0xff0F52BA)),
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _BuildName() {
    return Container(
        width: 340,
        child: TextFormField(
          decoration: InputDecoration(labelText: 'Name'),
          validator: (String value) {
            if (value.isEmpty) {
              return 'Name is required';
            }
            return null;
          },
          onSaved: (String value) {
            _name = value;
          },
        ));
  }

  Widget _BuildEmail() {
    return Container(
        width: 340,
        child: TextFormField(
          decoration: InputDecoration(labelText: 'Email'),
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
        ));
  }

  bool _obscurePass = true;

  Widget _BuildPassword() {
    return Container(
        width: 340,
        child: TextFormField(
          decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                    _obscurePass ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscurePass = !_obscurePass;
                  });
                },
              )),
          obscureText: _obscurePass,
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
        ));
  }

  bool _obscureConfirm = true;

  Widget _BuildConfirmPass() {
    return Container(
        width: 340,
        child: TextFormField(
          decoration: InputDecoration(
              labelText: 'Confirm Password',
              suffixIcon: IconButton(
                icon: Icon(
                    _obscureConfirm ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureConfirm = !_obscureConfirm;
                  });
                },
              )),
          obscureText: _obscureConfirm,
          validator: (String value) {
            if (value.isEmpty) {
              return 'Confirm Password is required';
            } else if (_password != value) return 'Uncorrect Pasword';
            return null;
          },
          onSaved: (String value) {
            _confirmPassword = value;
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            title: Text(
              'Register',
              style: TextStyle(
                  color: Colors.black, fontSize: 24, fontFamily: 'Roboto-Bold'),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 56),
                  _BuildName(),
                  SizedBox(height: 26),
                  _BuildEmail(),
                  SizedBox(height: 26),
                  _BuildPassword(),
                  SizedBox(height: 26),
                  _BuildConfirmPass(),
                  SizedBox(height: 64),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('I Agree to', style: TextStyle(fontSize: 12)),
                    Text(
                      ' Term and Conditions',
                      style: TextStyle(color: Color(0xff0F52BA), fontSize: 12),
                    ),
                    Checkbox(
                        value: _check,
                        onChanged: (bool value) {
                          setState(() {
                            if (value == true)
                              _check = value;
                            else
                              _check = value;
                          });
                        })
                  ]),
                  SizedBox(
                    width: 275,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff00A2FF)),
                          elevation: MaterialStateProperty.all(8),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ))),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Regular'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
