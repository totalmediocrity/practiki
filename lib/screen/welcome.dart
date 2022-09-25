import 'package:flutter/material.dart';
import 'package:practiki/com/my_color.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
      backgroundColor: MyColors.darkcyan,
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 149.0),
          Image.asset(
            "assets/medinow.png",
            width: 184.1,
            height: 30.78,
          ),
          SizedBox(height: 10),
          Text(
            'Meditate With Us!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'Plus Jakarta Sans',
              color: MyColors.milk,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 45.0),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(5, 25, 5, 25),
            elevation: 0,
            onPressed: () {},
            child: Text(
              'Sign in with Apple',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColors.blackText,
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 12.0),
          RaisedButton(
            color: MyColors.lightbl,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(5, 25, 5, 25),
            elevation: 0,
            onPressed: () {},
            child: ButtonTheme(
              height: 50.0,
              minWidth: 342.0,
              child: Text(
                textAlign: TextAlign.center,
                'Continue with Email or Phone',
                style: TextStyle(
                  color: MyColors.blackText,
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Continue With Google',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Plus Jakarta Sans',
              color: MyColors.milk,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 109.0),
          Image.asset(
            "assets/meditethum1.png",
            width: 180.17,
            height: 237.14,
          ),
        ],
      ),
    );
  }
}
