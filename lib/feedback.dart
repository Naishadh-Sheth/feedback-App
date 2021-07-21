import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userfeedback;
  var slidervalue = 0.0;
  var q1, q2, q3, q4, q5, q6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Hello Friends! Kindly fill this feedback form so that it helps us to better our service',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Slider(
                    min: 0.0,
                    max: 5.0,
                    divisions: 6,
                    value: slidervalue,
                    activeColor: Colors.green[300],
                    inactiveColor: Colors.brown[400],
                    onChanged: (newValue) {
                      setState(() {
                        slidervalue = newValue;
                        if (slidervalue >= 0.0 && slidervalue <= 1.0) {
                          q1 = Text(
                            'How did you like our service ?',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.0,
                            ),
                          );
                          print(q1);
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
