import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:mobility_app/shared/services/check_permissions.dart';
import 'package:mobility_app/shared/utils/app_files.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  CameraPosition _initialLocation = const CameraPosition(
    target: LatLng(-30.061593351850355, -51.16830749839041),
    zoom: 14.4746,
  );

  late final icon;
  Set<Marker> makers = {};

  Future<void> setCustomMarker() async {
    icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(24, 24)), AppImages.pinMap);
  }

  moveCamera() async {
    GoogleMapController googleMapController = await _controller.future;
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(_initialLocation));
  }

  listenerLocation() async {
    GeolocatorPlatform geolocator = GeolocatorPlatform.instance;

    geolocator.getPositionStream().listen((Position position) async {
      Marker markerUser = Marker(
          markerId: const MarkerId('userMarker'),
          position: LatLng(position.latitude, position.longitude),
          infoWindow: const InfoWindow(title: 'Minha localização'),
          icon: await BitmapDescriptor.fromAssetImage(
              const ImageConfiguration(size: Size(64, 64)), AppImages.pinMap));
      setState(() {
        makers.add(markerUser);
        _initialLocation = CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 17,
        );
        moveCamera();
      });
    });
  }

  initUserPosition() async {
    Position position = await CheckPermissionsLocation.determinePosition();
    setState(() {
      _initialLocation = CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 17,
      );
      moveCamera();
    });
  }

  _onMapCreated(GoogleMapController googleMapController) {
    _controller.complete(googleMapController);
  }

  @override
  void initState() {
    // setCustomMarker();
    initUserPosition();
    listenerLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initialLocation,
        onMapCreated: _onMapCreated,
        markers: makers,
        //myLocationEnabled: true,
      ),
    );
  }
}
