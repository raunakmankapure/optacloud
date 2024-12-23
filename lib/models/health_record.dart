import 'package:sqflite/sqflite.dart';

class HealthRecord {
  final int? id;
  final int heartRate;
  final int steps;
  final DateTime timestamp;

  HealthRecord({
    this.id,
    required this.heartRate,
    required this.steps,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'heartRate': heartRate,
      'steps': steps,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory HealthRecord.fromMap(Map<String, dynamic> map) {
    return HealthRecord(
      id: map['id'],
      heartRate: map['heartRate'],
      steps: map['steps'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}
