import 'package:flutter/material.dart';
import 'package:space_x_viewer/API/SpaceXService.dart';
import 'package:space_x_viewer/Model/Company.dart';
import 'package:space_x_viewer/Model/Crewmate.dart';
import 'package:space_x_viewer/Model/Landpad.dart';
import 'package:space_x_viewer/Model/Launch.dart';
import 'package:space_x_viewer/Model/Launchpad.dart';
import 'package:space_x_viewer/Model/Roadster.dart';
import 'package:space_x_viewer/Model/Rocket.dart';
import 'package:space_x_viewer/historyView.dart';
import 'package:space_x_viewer/spacexinfovue.dart';

final SpaceXService spaceXService = SpaceXService();

void main() async {
  runApp(MyApp());

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
      title: 'SpaceX',
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
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'SpaceX launch', key: Key("MyHomePage"),),
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

  void _historyViewOpen() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HistoryView(title: "History"))
      );
    });
  }

  void _spaceXinfoViewOpen() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SpaceXInfoVue())
      );
    });
  }

  Widget nextLaunchWidget() {
    return FutureBuilder<Launch?>(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none &&
              snapshot.hasData == null) {
            //print('project snapshot data is: ${projectSnap.data}');
            return Container();
          }

          return Card(
            color: Colors.amber,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.flight_takeoff),
                  title: Text(snapshot.data!.name!),
                  subtitle: Text(snapshot.data!.dateLocal!),
                  trailing: Icon(Icons.navigate_next_outlined),
                ),
              ],
            ),
          );
        },
        future: spaceXService.getNextLaunch(),
    );
  }

  Widget upcomingLaunchesWidget() {
    return FutureBuilder<List<Launch>?>(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.none &&
            snapshot.hasData == null) {
          //print('project snapshot data is: ${projectSnap.data}');
          return Container();
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            Launch oneLaunch = snapshot.data![index];
            if (index == 0) {
              // return the header
              return nextLaunchWidget();
            }
            index -= 1;

            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.flight_takeoff),
                  title: Text(oneLaunch.name!),
                  subtitle: Text(oneLaunch.dateLocal!),
                  trailing: Icon(Icons.navigate_next_outlined),
                ),

                // Widget to display the list of project
              ],
            );
          },
        );
      },
      future: spaceXService.getUpcomingLaunches(),
    );
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
        leading: GestureDetector(
          onTap: _spaceXinfoViewOpen,
          child: Icon(
            Icons.info,  // add custom icons also
          ),
        ),
      ),
      body:
          upcomingLaunchesWidget(),



      floatingActionButton: FloatingActionButton(
        onPressed: _historyViewOpen,
        tooltip: 'History',
        child: Icon(Icons.history),
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


