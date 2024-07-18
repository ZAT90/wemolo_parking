import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityHelper {
  final Connectivity _connectivity = Connectivity();

  /// Check the current connectivity status.
  Future<bool> isConnected() async {
    final List<ConnectivityResult> connectivityResult =
        await _connectivity.checkConnectivity();
    return _isConnected(connectivityResult);
  }

  /// Listen for connectivity changes.
  Stream<bool> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.map(_isConnected);

  /// Private helper method to convert ConnectivityResult to boolean.
  bool _isConnected(List<ConnectivityResult> result) {
    return result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.mobile);
  }
}
