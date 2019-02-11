
import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import './first.dart';
import './second.dart';
import './third.dart';
import './fourth.dart';
import './fifth.dart';
import 'package:flutter/services.dart';//package used to make orientation portrait

void main() {
  //SystemChrome used to make orientation Portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
  runApp(MaterialApp(
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => LogoApp(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/second': (context) => Home(),
      '/third':  (context) => Second(),
      '/fourth': (context) => Third(),
      '/fifth':  (context) => Fourth(),
      '/sixth':  (context) => Fifth(),
      '/useraccount':(context) => UserAccount() 
    },
  ));});
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation animation1;
  Animation animation2;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();


    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
 
    animation1 =
        AlignmentTween(begin: Alignment.center, end: Alignment.topCenter)
            .animate(CurvedAnimation(
                parent: animationController,
                curve: Interval(0.4, 1.0, curve: Curves.fastOutSlowIn)));
    animation2 = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear));
    animationController.forward();

    Timer(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context,'/second'));

  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  // var _align = AlignmentTween(begin: Alignment.bottomCenter,end: Alignment.topCenter);
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
          return Scaffold(
            body: Column(
            children: <Widget>[
              // Expanded(
                Container(                  
                  child:AnimatedBuilder(
                  animation: animationController,
                  builder: (BuildContext context,Widget child){
                    return Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Opacity(
                        opacity: animation2.value,
                        child: Text(
                          'Restaurant',
                          style:TextStyle(
                            fontSize:40,
                            fontWeight:FontWeight.w900
                          )),
                      ),
                    );
                  },
                ),
                ),
                
                Container(
                // width: 500.0,
                height: 370.0,
                color: Colors.white,
                  // alignment: _align.evaluate(animation),
                  child: AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget child) {
                  return Container(
                    padding: EdgeInsets.all(40.0),
                    // child: FlutterLogo(size: animation2.value),
                    child: Opacity(
                      opacity: animation2.value,
                      child: Image(
                        image: AssetImage('images/restaurant.png'),
                        width: 180.0,
                        height: 180.0,
                      ),
                    ),
                    color: Colors.white,
                    alignment: animation1.value,
                  );
                },
              )),
              // ),
              // Expanded(
                
                AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget child) {
              return Container(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                          opacity: animation2.value,
                  // child: Padding(
                      // padding: EdgeInsets.only(top: 30.0),
                        
                          child: RaisedButton(
                            elevation: 6,
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(left: 65,right: 65,top: 10,bottom: 10),
                            child: Text(
                              'Google Login',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white 
                              ),
                              ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/second');
                            },
                          ),
                          )
                          // )
                          ),
                          // color: Colors.yellow,
              );
              
                          }
              ),
              // ),
              
              // Expanded(
                AnimatedBuilder(
                animation: animationController,
                builder: (BuildContext context, Widget child) {
              return Container(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Opacity(
                          opacity: animation2.value,
                  child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                        
                          child: RaisedButton(
                            elevation: 6,
                            color: Colors.blueAccent[400],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                            child: Text(
                              'Facebook Login',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                              ),),
                            onPressed: () {},
                          ),
                          )
                          )
                          ),
                          // color: Colors.green,
              );
              
                          }
              ),
              // ),
              ],
          )
          // ),
    );
  }
}

