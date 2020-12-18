import './screens/add_place_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/place_list_screen.dart';
import './providers/greatPlaces.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'A Journey',
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
        home: PlaceListScreen(),
      ),
    );
  }
}
