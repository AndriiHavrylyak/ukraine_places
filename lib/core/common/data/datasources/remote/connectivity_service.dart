import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  ConnectivityService() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  final _connectionStatusController = StreamController<bool>.broadcast();

  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    final hasConnection = result != ConnectivityResult.none;
    _connectionStatusController.add(hasConnection);
  }

  Future<void> dispose() async {
    await _connectivitySubscription.cancel();
    await _connectionStatusController.close();
  }
}
