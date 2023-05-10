import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider App"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (currentValue < 50)
              ? const Text(
                  "Bhavesh ",
                  style: TextStyle(fontSize: 50),
                )
              :const Text(
                  "prince",
                  style: TextStyle(fontSize: 50),
                ),
          Slider(
            value: currentValue,//value dynamic using varible
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
            },//on cnage method for working slider
            label: currentValue.toString(),//thumb per text batava mate
            min: 0,// using slider min value
            max: 100,// using slider max value
            divisions: 10,// using slider division for max value
            thumbColor: Colors.amber,//thumb color
            inactiveColor: Colors.brown,//thmb pa6i no color
            activeColor: Colors.indigo,//thmb pahela no color
          ),
        ],
      ),
    );
  }
}
