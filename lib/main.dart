import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Péstaña app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //miapp

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(9), // Creates border
                color: Color(0xff570052)),
            tabs: [
              Tab(icon: Icon(Icons.add_ic_call)),
              Tab(icon: Icon(Icons.add_a_photo)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.add_chart)),
            ],
          ),
          title: Text('Tabs Bianka Garcia '),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.add_ic_call, size: 350),
            Icon(Icons.add_a_photo, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.add_chart, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState State<MyHomePage>
