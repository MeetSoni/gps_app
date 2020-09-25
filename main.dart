import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MaterialApp(
    home: MyGoogleMap(),
    theme: ThemeData.dark(),
  ));
}

class MyGoogleMap extends StatefulWidget {
  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  @override
  var cp =
      CameraPosition(target: LatLng(22.239832, 73.087560), zoom: 15, tilt: 10);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
        leading: Icon(Icons.location_on),
      ),
      body: GoogleMap(
        initialCameraPosition: cp,
        mapType: MapType.satellite,
        //onMapCreated: onm,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text("click"),
      ),
    );
  }
}
