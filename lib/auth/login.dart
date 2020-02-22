import 'package:flutter/material.dart';
import 'package:tarombo/auth/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obsecureText = true;
  String _password;

  void _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  void routes() {
    new MaterialApp(
      routes: {
        '/RegisterScreen': (BuildContext context) => RegisterScreen(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 12),
          padding: MediaQuery.of(context).viewPadding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 1.8,
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
                    "Login",
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
                  padding: EdgeInsets.only(bottom: 32, top: 32),
                  child: TextField(
                    controller: email,
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
                    controller: password,
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _toggle,
                        color: Color(0xff424242),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEB8242)),
                      ),
                    ),
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: OutlineButton(
                    borderSide: BorderSide(
                      color: Color(0xffEB8242),
                    ),
                    highlightedBorderColor: Colors.white,
                    onPressed: () {
                      print("ini cotinue");
                    },
                    child: Text(
                      "Lanjutkan tanpa Login",
                      style: TextStyle(
                        color: Color(0xffEB8242),
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
                              builder: (context) => RegisterScreen()),
                        );
                        email.clear();
                        password.clear();
                      },
                      child: Text(
                        "Belum mempunyai akun? Buat sekarang!",
                        style: TextStyle(
                          color: Color(0xffEB8242),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
