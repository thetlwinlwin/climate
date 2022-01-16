import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'dart:io';

class StatusManager with ChangeNotifier {
  bool _initialized = false;
  bool _isLocationPermitted = false;
  List<String> _latLong = [];
  bool _isOnline = true;
  final Location _location = Location();
  //final Connectivity _connectivity = Connectivity();

  bool get isInitialized => _initialized;
  bool get locationPermit => _isLocationPermitted;
  bool get connectionStatus => _isOnline;
  List<String>? get latLong => _latLong;

  void initializeApp() async {
    await monitoringLocation();
    _isOnline = true;
    // await monitoringConnection();
    _initialized = true;
    notifyListeners();
  }

  Future<void> monitoringLocation() async {
    _isLocationPermitted = await gpsPermissionStatus();
    if (_isLocationPermitted) {
      _location.onLocationChanged.listen((LocationData value) {
        List<String> latLongList = [
          value.latitude.toString(),
          value.longitude.toString(),
        ];
        _latLong = latLongList;
        notifyListeners();
      });
    } else {
      _latLong = [];
      notifyListeners();
    }
  }

  Future<bool> gpsPermissionStatus() async {
    //location.changeSettings(accuracy: LocationAccuracy.powerSave);
    bool isServiceEnabled = await _location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await _location.requestService();
      if (!isServiceEnabled) {
        return false;
      }
    }
    PermissionStatus isAllowed = await _location.hasPermission();
    if (isAllowed == PermissionStatus.denied) {
      isAllowed = await _location.requestPermission();
      if (isAllowed == PermissionStatus.denied ||
          isAllowed == PermissionStatus.deniedForever) {
        return false;
      }
    }
    return true;
  }

  // Future<void> initConnect() async {
  //   try {
  //     var status = await _connectivity.checkConnectivity();
  //     if (status == ConnectivityResult.none) {
  //       _isOnline = false;
  //       notifyListeners();
  //     } else {
  //       _isOnline = true;
  //       notifyListeners();
  //     }
  //   } on PlatformException catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Future<void> monitoringConnection() async {
  //   await initConnect();
  //   _connectivity.onConnectivityChanged.listen((event) async {
  //     if (event == ConnectivityResult.none) {
  //       _isOnline = false;
  //       notifyListeners();
  //     } else {
  //       _isOnline = await _checkInternet();
  //       notifyListeners();
  //     }
  //   });
  // }

  // Future<bool> _checkInternet() async {
  //   late bool goToWeb;
  //   try {
  //     final List<InternetAddress> result =
  //         await InternetAddress.lookup('google.com');
  //     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
  //       goToWeb = true;
  //     }
  //   } on SocketException catch (_) {
  //     goToWeb = false;
  //   }
  //   return goToWeb;
  // }
}

StatusManager statusManager = StatusManager();
