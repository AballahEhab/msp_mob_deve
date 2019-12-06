import 'package:flutter/material.dart';
import 'package:msp_mob_dev/profileUi.dart';

class MembersList extends StatefulWidget {
  List<Map> members;
  MembersList({this.members});
  @override
  _MembersListState createState() => _MembersListState();
}

class _MembersListState extends State<MembersList> {
  Map current_member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[50],
      child: new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.members.length,
        itemBuilder: (context, index) {
          current_member = widget.members[index];
          return creat_card(index);
        },
      ),
    );
  }

  Widget creat_card(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.blueGrey[100],
        elevation: 3,
        borderRadius: BorderRadius.circular(24.0),
        shadowColor: Color(0x802196F3),
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.blueGrey[500],
                    backgroundImage:
                        AssetImage('images/${current_member['image']}.jpg'),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: new Column(
                    children: <Widget>[
                      Text(
                        current_member['name'],
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                          fontFamily: 'PTSerif',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        current_member['position'],
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileUi(
                  member_details: widget.members[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
