import 'package:flutter/material.dart';
import 'package:tarombo/auth/register.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width / 12),
        padding: MediaQuery.of(context).viewPadding,
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 24),
              child: Center(
                child: Image.asset(
                  'assets/image/diagram.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome to Tarombo!",
                  style: TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 24,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla urna leo, scelerisque congue ex vitae, pulvinar blandit leo. Sed ut massa sagittis, blandit nunc fringilla, faucibus magna.",
                  style: TextStyle(
                    color: Color(0xFF424242),
                    fontSize: 14,
                    fontFamily: "OpenSans",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 48,
              margin: EdgeInsets.only(top: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: FlatButton(
                color: Color(0xffEB8242),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  "Daftar Sekarang!",
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
          ],
        ),
      ),
    );
  }
}
