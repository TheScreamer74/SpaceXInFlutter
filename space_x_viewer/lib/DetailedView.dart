import 'package:flutter/material.dart';
import 'package:space_x_viewer/API/SpaceXService.dart';
import 'package:space_x_viewer/Model/Company.dart';
import 'package:space_x_viewer/Model/Crewmate.dart';
import 'package:space_x_viewer/Model/Landpad.dart';
import 'package:space_x_viewer/Model/Launch.dart';
import 'package:space_x_viewer/Model/Launchpad.dart';
import 'package:space_x_viewer/Model/Roadster.dart';
import 'package:space_x_viewer/Model/Rocket.dart';

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
      ),
      body:
      upcomingLaunchesWidget(),


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


