import 'package:flutter/material.dart';
import 'package:tarombo/auth/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _obsecureText = true;
  String _password;
  bool isChecked = false;

  void _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 12),
          // margin: MediaQuery.of(context).viewPadding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 2,
                  ),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffEB8242),
                        width: 6,
                      ),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Register",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff424242),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Nama Depan",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 32),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Nama Belakang",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 32, top: 32),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 32),
                  child: TextField(
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _toggle,
                        color: Color(0xff424242),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      hintText: "Konfirmasi Password",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _toggle,
                        color: Color(0xff424242),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            // checkColor: Colors.red,
                            activeColor: Color(0xffEB8242),
                            value: isChecked,
                            onChanged: (bool value) {
                              setState(
                                () {
                                  isChecked = value;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Saya setuju dengan Syarat & Ketentuan"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: FlatButton(
                    color: Color(0xffEB8242),
                    onPressed: () {
                      print("test");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 12),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Saya sudah mempunyai akun",
                      style: TextStyle(
                        color: Color(0xffEB8242),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
