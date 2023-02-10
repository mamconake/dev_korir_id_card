import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NafCard(),
    ));

class NafCard extends StatefulWidget {
  const NafCard({super.key});

  @override
  State<NafCard> createState() => _NafCardState();
}

class _NafCardState extends State<NafCard> {
  int devlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 87, 107),
      appBar: AppBar(
        title: Text('DevNaf ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            devlevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.greenAccent[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              //backgroundImage: AssetImage('assets/ig.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.green[400],
          ),
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'DEV KORIR',
            style: TextStyle(
              color: Colors.amber[200],
              letterSpacing: 3.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'CURRENT FLUTTER LEVEL DEVELOPER',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$devlevel',
            style: TextStyle(
              color: Colors.amber[200],
              letterSpacing: 3.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 226, 190, 190),
              ),
              SizedBox(width: 10),
              Text(
                'devkorir7@gmail.com',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
