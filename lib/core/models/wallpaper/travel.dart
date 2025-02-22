class Travel {
  String? status;

  Travel({this.status});

  factory Travel.fromJson(Map<String, dynamic> json) =>
      Travel(status: json['status'] as String?);

  Map<String, dynamic> toJson() => {'status': status};
}
