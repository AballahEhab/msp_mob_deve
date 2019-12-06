import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileUi extends StatefulWidget {
  Map member_details;
  ProfileUi({Key key, @required this.member_details}) : super();
  @override
  _ProfileUiState createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  ConfettiController _controllerCenterRight;
  ConfettiController _controllerCenterLeft;
  ConfettiController _controllerBottomCenter;

  @override
  void initState() {
    _controllerCenterRight = ConfettiController(duration: Duration(seconds: 2));
    _controllerCenterLeft = ConfettiController(duration: Duration(seconds: 2));
    _controllerBottomCenter =
        ConfettiController(duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    _controllerBottomCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color1 = Colors.blueGrey[900];
    final Color color2 = Colors.blueGrey[200];
    //  final String image = avatars[0];
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[],
            title: new Text(
              'Profile',
              style: new TextStyle(fontSize: 18),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConfettiWidget(
              confettiController: _controllerBottomCenter,
              blastDirection: -pi / 2,
              emissionFrequency: 0.05,
              numberOfParticles: 10,
              maxBlastForce: 50,
              minBlastForce: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Text(
                  widget.member_details['position'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 14,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: double.infinity,
                          margin: const EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 4.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'images/${widget.member_details['image']}.jpg'))))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.member_details['name'],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                  ),
                ),
//                Expanded(
//                  flex: 1,
//                  child: Container(),
//                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'College : ${widget.member_details['college']}',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Joining Date : ${widget.member_details['date']}',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 16.0),
                        margin: const EdgeInsets.only(
                            top: 30, left: 20.0, right: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [color1, color2],
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              alignment: Alignment.centerRight,
                              color: Colors.blueGrey[100],
                              icon: Icon(Icons.lightbulb_outline),
                              onPressed: () {
                                setState(() {
                                  open_dialog('advice');
                                });
                              },
                            ),
                            Spacer(),
                            IconButton(
                              color: Colors.blueGrey[800],
                              icon: Icon(Icons.feedback),
                              onPressed: () {
                                open_dialog('feedback');
                              },
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: FloatingActionButton(
                          child: Image.asset('images/msplogo.jpg'),
                          backgroundColor: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              _controllerBottomCenter.play();
                              _controllerCenterRight.play();
                              _controllerCenterLeft.play();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ConfettiWidget(
              confettiController: _controllerCenterRight,
              blastDirection: pi, // radial value - LEFT
              emissionFrequency: 0.05,
              numberOfParticles: 10,
              shouldLoop: false,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ConfettiWidget(
              confettiController: _controllerCenterLeft,
              blastDirection: 0, // radial value - RIGHT
              emissionFrequency: 0.5,
              numberOfParticles: 1,
            ),
          ),
        ],
      ),
    );
  }

  void open_dialog(String title) {
    setState(() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor: Colors.blueGrey[50],
              title: Center(
                child: Text(
                  title,
                ),
              ),
              content: Text(widget.member_details[title]),
            );
          });
    });
  }
}
