import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild.unfocus();
          }
        },
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40, 60, 40, 0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  // Row(
                  //   children: <Widget>[
                  //     Container(
                  //       child: FloatingActionButton(
                  //           elevation: 3,
                  //           backgroundColor: Colors.white,
                  //           shape: PolygonBorder(
                  //               sides: 6, borderRadius: 0.0, rotate: 90),
                  //           onPressed: () {}),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(height: 50.0),
                  Center(
                    child: Image.asset('assets/bookclub logo.png'),
                    // child: Text(
                    //   'HUIEX',
                    //   textAlign: TextAlign.justify,
                    //   style: TextStyle(
                    //       fontSize: 28.0,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.purple[900],
                    //       letterSpacing: 15.0),
                    // ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Text(
                      'Please! login to continue',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        hintText: 'Email'),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: 'Password'),
                  ),
                  SizedBox(height: 40.0),
                  InkWell(
                    child: Container(
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  SizedBox(
                    width: 250.0,
                    height: 40.0,
                    child: RaisedButton.icon(
                      color: Colors.blue[800],
                      onPressed: () {},
                      label: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.white,
                      ),
                      icon: Text(
                        'login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  SizedBox(height: 90.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have account? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "SignUp ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
