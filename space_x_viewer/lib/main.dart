import 'package:flutter/material.dart';
import 'package:space_x_viewer/API/SpaceXService.dart';
import 'package:space_x_viewer/Model/Company.dart';
import 'package:space_x_viewer/Model/Crewmate.dart';
import 'package:space_x_viewer/Model/Landpad.dart';
import 'package:space_x_viewer/Model/Launch.dart';
import 'package:space_x_viewer/Model/Launchpad.dart';
import 'package:space_x_viewer/Model/Roadster.dart';
import 'package:space_x_viewer/Model/Rocket.dart';

void main() async {
  runApp(MyApp());

  final SpaceXService spaceXService = SpaceXService();

  Company? company = await spaceXService.getCompany();
  print(company!.headquarters.city);

  List<Crewmate>? crew = await spaceXService.getCrew();
  print(crew![2].name);

  List<Landpad>? landpads = await spaceXService.getLandpads();
  print(landpads![0].fullName);

  Landpad? landpad = await spaceXService.getSpecificLandpad("5e9e3033383ecb075134e7cd");
  print(landpad!.name);

  List<Launch?>? launches = await spaceXService.getLaunches();
  print(launches![0]!.name);
  
  Launch? launch = await spaceXService.getLaunch("607a37565a906a44023e0866");
  print(launch!.name);

  List<Launch?>? pastLaunches = await spaceXService.getPastLaunches();
  print(pastLaunches![1]!.name);

  List<Launch?>? upcomingLaunches = await spaceXService.getUpcomingLaunches();
  print(upcomingLaunches![0]!.name);

  Launch? latestLaunch = await spaceXService.getLatestLaunch();
  print(latestLaunch!.name);

  Launch? nextLaunch = await spaceXService.getNextLaunch();
  print(nextLaunch!.name);

  List<Launchpad>? launchpads = await spaceXService.getLaunchpads();
  print(launchpads![0].name);

  Launchpad? launchpad = await spaceXService.getSpecificLaunchpad("5e9e4502f509094188566f88");
  print(launchpad!.name);

  Roadster? roadster = await spaceXService.getRoadster();
  print(roadster!.name);

  List<Rocket>? rockets = await spaceXService.getRockets();
  print(rockets![0].name);

  Rocket? rocket = await spaceXService.getSpecificRocket("5e9d0d96eda699382d09d1ee");
  print(rocket!.name);

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', key: Key("MyHomePage"),),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
