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

class SmallMapView extends StatefulWidget {
  SmallMapView({
    Key? key,
    this.height = 184,
    this.width,
  }) : super(key: key);

  double height;
  double? width;
  @override
  _SmallMapViewState createState() => _SmallMapViewState();
}

class _SmallMapViewState extends State<SmallMapView>
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
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
        compassEnabled: false,
        onMapCreated: (c) => _onMapCreated(c),
      ),
    );
  }
}
