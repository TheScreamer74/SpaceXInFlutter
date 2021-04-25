import 'package:flutter/material.dart';
import 'package:space_x_viewer/API/SpaceXService.dart';

import 'Model/Company.dart';

SpaceXService spaceXService = SpaceXService();

class SpaceXInfoVue extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Détails sur SpaceX"),
        ),
        body: FutureBuilder<Company?>(
          future: spaceXService.getCompany(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Image(image: Image.network("https://logo-marque.com/wp-content/uploads/2020/09/SpaceX-Logo.png", height: 250, width: 250,).image),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(snapshot.data!.name +  "\n" + snapshot.data!.headquarters.address +  "\n" + snapshot.data!.headquarters.city +  "\n" + snapshot.data!.headquarters.state),
                    )
                  ],
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Fondateur : " + snapshot.data!.founder +
                      "\n" +
                      "Fondé en : " + snapshot.data!.founded.toString() +
                      "\n" +
                      "Elle emplois : " + snapshot.data!.employees.toString() + " salariés" +
                      "\n" +
                      "CEO : " + snapshot.data!.ceo +
                      "\n" +
                      "Poids en bourse : " + snapshot.data!.valuation.toString() + "\$"),
                ),


                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(snapshot.data!.summary),
                )
              ],
            );
            } else {
              return Text("Rien trouvé");
            }
          },
        ),
      );
  }

}