import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'extension.dart';

class WomenSafetyMap extends StatefulWidget {
  @override
  _WomenSafetyMapState createState() => _WomenSafetyMapState();
}

class _WomenSafetyMapState extends State<WomenSafetyMap> {
  LocationData? currentLocation;
  GoogleMapController? mapController;
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    currentLocation = await location.getLocation();
    searchDangerAreasForWomen();
  }

  void searchDangerAreasForWomen() async {
    const String apiUrl =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json';
    const String apiKey = 'AIzaSyA_pncsqwIyZW6viAHPOrdHph3DKCA3sFM';
    const String type = 'point_of_interest';
    const String keyword = 'danger areas for women';
    final String location =
        '${currentLocation?.latitude},${currentLocation?.longitude}';
    const String radius = '5000';

    final url =
        '$apiUrl?type=$type&keyword=$keyword&location=$location&radius=$radius&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['results'];
      final List<Marker> markers = data.map((result) {
        final LatLng position = LatLng(result['geometry']['location']['lat'],
            result['geometry']['location']['lng']);
        return Marker(
          markerId: MarkerId(result['id']),
          position: position,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          infoWindow: InfoWindow(
            title: result['name'],
            snippet: 'Danger Level: ${result['rating'] ?? 'N/A'}',
          ),
        );
      }).toList();

      setState(() {
        this.markers = markers;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Safety Map'),
        backgroundColor: '#47082A'.toColor(),
      ),
      body: currentLocation == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 14.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
              markers: Set.from(markers),
            ),
    );
  }
}
