class Nature {
  String? status;

  Nature({this.status});

  factory Nature.fromJson(Map<String, dynamic> json) =>
      Nature(status: json['status'] as String?);

  Map<String, dynamic> toJson() => {'status': status};
}
