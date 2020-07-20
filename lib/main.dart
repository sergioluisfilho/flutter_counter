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
  int _people = 0;
  // ignore: non_constant_identifier_names
  String info_Text = "Pode entrar";
  int _max = 10;

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people <= 0) {
        _people = 0;
        info_Text = "O estabelecimento está vazio";
      } else {
        info_Text = 'Pode entrar';
      }

      if (_people >= _max) {
        _people = _max;
        info_Text = "Lotado";
      }
    });
  }

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
                  "Pessoas: $_people",
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
                          _changePeople(1);
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
                        _changePeople(-1);
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  info_Text,
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
