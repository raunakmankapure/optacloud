class HealthData {
  final int heartRate;
  final int steps;
  final DateTime timestamp;

  HealthData({
    required this.heartRate,
    required this.steps,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
    'heartRate': heartRate,
    'steps': steps,
    'timestamp': timestamp.toIso8601String(),
  };

  factory HealthData.fromJson(Map<String, dynamic> json) => HealthData(
    heartRate: json['heartRate'],
    steps: json['steps'],
    timestamp: DateTime.parse(json['timestamp']),
  );
}