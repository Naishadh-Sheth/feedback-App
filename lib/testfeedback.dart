import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var total = 0.0;
  var sliderValue = 1.0;
  var myFeedback;
  var index = 0;
  List<String> questions = [
    'How about our service ?',
    'How about our food ?',
    'How about our sanitation ?',
    'How about our lighting ?',
    'How about our sounds ?',
    'How about our guests ?',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
          color: Colors.grey[900],
          child: index < questions.length
              ? Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          child: Text(
                            "On a scale of 1 to 5, how do you rate our service?",
                            style: TextStyle(
                              color: Colors.lime,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      child: Align(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(24.0),
                          shadowColor: Color(0x802196F3),
                          child: Container(
                              width: 450.0,
                              height: 500.0,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Text(
                                        questions[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Slider(
                                      min: 1.0,
                                      max: 5.0,
                                      divisions: 4,
                                      value: sliderValue,
                                      activeColor: Colors.green[200],
                                      inactiveColor: Colors.blue,
                                      onChanged: (newValue) {
                                        setState(() {
                                          sliderValue = newValue;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                        child: Text(
                                      "Your Rating: $total",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                              color: Color(0xffffffff)),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            total = total + sliderValue.toInt();
                                            index++;
                                          });
                                        },
                                      ),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ElevatedButton(
                                        child: Text(
                                          'Restart',
                                          style: TextStyle(
                                              color: Color(0xffffffff)),
                                        ),
                                        onPressed: () {
                                          total = 0.0;
                                          sliderValue = 1.0;
                                          index = 0;
                                        },
                                      ),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    20.0)),
                                        color: Color(0xffff520d),
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                              color: Color(0xffffffff)),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                )
              : Text(
                  'Total Score = $total',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                )),
    );
  }
}
