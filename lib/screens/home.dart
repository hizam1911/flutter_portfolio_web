import 'package:flutter/material.dart';
import 'package:my_personal_web/widgets/home.dart';
import 'package:one_clock/one_clock.dart';

class Home extends StatefulWidget {
  static final String routeName = '/';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    // Calculate icon size as a fraction of the screen width
    double barIconSize = screenSize.width / 20;
    double iconSize = screenSize.width / 25;
    double clockSize = screenSize.width / 450;
    double dynamicIslandSize = screenSize.height / 30;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background content
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset("assets/images/background_wallpaper.jpg", fit: BoxFit.cover,),
          ),
          // Main content
          Center(child: Text('Your Content Here', style: TextStyle(fontSize: 24, color: Colors.white))),


          // Status Bar iPhone
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        constraints: BoxConstraints(
                          maxHeight: 50, // Maximum height
                        ),
                        child: DigitalClock(
                          // textScaleFactor: clockSize,
                            showSeconds: false,
                            isLive:true,
                            digitalClockTextColor: Colors.white,
                            decoration: const BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                            datetime: DateTime.now()),
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                  Flexible(
                    child: Container(
                      height: dynamicIslandSize,
                      constraints: BoxConstraints(
                        minWidth: 10, // Minimum width
                        maxWidth: 100, // Maximum width
                        minHeight: 25,
                        // maxHeight: 30,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Spacer(flex: 1),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.transparent,
                        constraints: BoxConstraints(
                          maxHeight: 50, // Maximum height
                          maxWidth: 50, // Maximum width
                        ),
                        child: Icon(Icons.network_cell, color: Colors.white,),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        color: Colors.transparent,
                        constraints: BoxConstraints(
                          maxHeight: 50, // Maximum height
                          maxWidth: 50, // Maximum width
                        ),
                        child: Icon(Icons.wifi, color: Colors.white,),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        color: Colors.transparent,
                        constraints: BoxConstraints(
                          maxHeight: 50, // Maximum height
                          maxWidth: 50, // Maximum width
                        ),
                        child: Icon(Icons.battery_6_bar, color: Colors.white,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Bottom Bar iPhone
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.3, 0.7, 0.9],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF12171A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 70, // Maximum height
                      maxWidth: 70, // Maximum width
                    ),
                    child: Icon(Icons.home, color: Color(0xFF0A45AD),),
                  ),
                  const SizedBox(width: 20,),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF12171A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 70, // Maximum height
                      maxWidth: 70, // Maximum width
                    ),
                    child: Icon(Icons.verified_user, color: Color(0xFF0A45AD),),
                  ),
                  const SizedBox(width: 20,),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF12171A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 70, // Maximum height
                      maxWidth: 70, // Maximum width
                    ),
                    child: Icon(Icons.settings, color: Color(0xFF0A45AD),),
                  ),
                  const SizedBox(width: 20,),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF12171A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 70, // Maximum height
                      maxWidth: 70, // Maximum width
                    ),
                    child: Icon(Icons.notification_add, color: Color(0xFF0A45AD),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
