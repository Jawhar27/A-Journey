import 'package:flutter/material.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _greatPlaces;

  List<Place> get greatPlaces {
    return [..._greatPlaces];
  }
}
