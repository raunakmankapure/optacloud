import 'dart:async';
import 'dart:math';

class BluetoothService {
  bool _isConnected = false;
  final _connectionController = StreamController<bool>.broadcast();
  
  Stream<bool> get connectionStream => _connectionController.stream;
  bool get isConnected => _isConnected;

  Stream<int> getHeartRateStream() async* {
    while (_isConnected) {
      await Future.delayed(const Duration(seconds: 2));
      yield 60 + (10 * (1 - Random().nextDouble())).toInt();
    }
  }

  Stream<int> getStepCountStream() async* {
    int steps = 0;
    while (_isConnected) {
      await Future.delayed(const Duration(seconds: 5));
      steps += Random().nextInt(10);
      yield steps;
    }
  }

  Future<void> connect() async {
    await Future.delayed(const Duration(seconds: 1));
    _isConnected = true;
    _connectionController.add(_isConnected);
  }

  Future<void> disconnect() async {
    await Future.delayed(const Duration(seconds: 1));
    _isConnected = false;
    _connectionController.add(_isConnected);
  }

  void dispose() {
    _connectionController.close();
  }
}