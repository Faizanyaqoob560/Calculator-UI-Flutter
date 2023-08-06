import 'package:flutter/material.dart';
import 'Buttons.dart'; // Correct the import statement

void main() => runApp(MyApp());

// ... Rest of the code remains the same ...


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'Ac',
    'del',
    '% ',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '+',
    '3',
    '2',
    '1',
    '-',
    '0',
    '.',
    'ANs',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: buttons
                    .length, // Set the itemCount to the length of the 'buttons' list
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButtons(
                      buttontext: buttons[index],
                      color: Colors.green,
                      textcolor: Colors.white,
                    );
                  } else if (index == 1) {
                    return MyButtons(
                      buttontext: buttons[index],
                      color: Colors.red,
                      textcolor: Colors.white,
                    );
                  } else {
                    return MyButtons(
                      buttontext: buttons[index],
                      color: isoperator(buttons[index])
                          ? Colors.deepPurple
                          : Colors.deepPurple[50],
                      textcolor: isoperator(buttons[index])
                          ? Colors.white
                          : Colors.deepPurple,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isoperator(String x) {
    if (x == '%' || x == '/' || x == '*' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
}
