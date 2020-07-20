import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Contador',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: Center(
                child: Text('Contador'),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "Pessoas: 0",
                    style: TextStyle(
                        color: Colors.deepPurple,
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
                            style: TextStyle(
                                fontSize: 40, color: Colors.deepPurple),
                          ),
                          onPressed: () {},
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
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Pode entrar",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            ))),
  );
}
