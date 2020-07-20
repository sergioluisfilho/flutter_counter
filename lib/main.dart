import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contador',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text('Contador'),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/img.jpeg",
            fit: BoxFit.fill,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  "Pessoas: 0",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: FlatButton(
                        child: Text(
                          '+1',
                          style:
                              TextStyle(fontSize: 40, color: Colors.deepPurple),
                        ),
                        onPressed: () {
                          debugPrint('+1');
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: FlatButton(
                      child: Text(
                        '-1',
                        style:
                            TextStyle(fontSize: 40, color: Colors.deepPurple),
                      ),
                      onPressed: () {
                        debugPrint('-1');
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Pode entrar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
