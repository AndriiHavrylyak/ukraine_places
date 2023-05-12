import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapConstants{
  static const LatLng kMapCenter =
   LatLng(0, 0);
  static const  CameraPosition kInitialPosition =
   CameraPosition(target: kMapCenter, zoom: 13.0, tilt: 0, bearing: 0);
  static const  CameraPosition kInitialPositionZoomOut =
  CameraPosition(target: kMapCenter, zoom: 5.0, tilt: 0, bearing: 0);
}