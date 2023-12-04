

import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingServiceActiveController extends GetxController{
  Completer<GoogleMapController> googleMapcontroller = Completer();

  static final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _getUserLocation();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _getUserLocation() async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final GoogleMapController controller = await googleMapcontroller.future;
    CameraPosition _kLake = CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 19.151926040649414);
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}