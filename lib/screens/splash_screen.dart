import 'package:flutter/material.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/screens/login_screen.dart';
import 'package:learnium/screens/register_screen.dart';
import 'package:learnium/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "LEARNIUM",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 32.0,
                        ),
                      ),
                      Text(
                        "Your online learning platform.",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "assets/images/learning.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          MyButton(
                            size: size,
                            width: size.width * 0.50,
                            title: "Login",
                            radius: 0,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          MyButton(
                            size: size,
                            width: size.width * 0.49,
                            title: 'Register',
                            radius: 0,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
