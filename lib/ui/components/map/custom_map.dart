import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cleaner_network_flutter/shared/themes/app_theme.dart';
import 'package:cleaner_network_flutter/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconly/iconly.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({Key? key}) : super(key: key);

  @override
  _CustomMapState createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap>
    with SingleTickerProviderStateMixin {
  Completer<GoogleMapController> mapCompleter = Completer();
  late CameraPosition _initialCameraPosition;
  late GoogleMapController controller;
  Set<Marker> currentLocationMarker = {};

  @override
  void initState() {
    super.initState();

    _setInitialCameraPosition();
  }

  _setInitialCameraPosition() {
    LatLng cameraLocation = LatLng(8.9806, 38.7578);
    _initialCameraPosition = CameraPosition(target: cameraLocation, zoom: 15);
  }

  _onMapCreated(GoogleMapController mpController) async {
    controller = mpController;
    mapCompleter.complete(mpController);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: true,
            compassEnabled: false,
            onMapCreated: (c) => _onMapCreated(c),
          ),
          Positioned(
            top: 180,
            right: 20,
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.grey2,
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(1, 3),
                  ),
                ],
              ),
              child: Icon(IconlyBold.location, color: AppTheme.mainGreen),
            ),
          ),
        ],
      ),
    );
  }
}
