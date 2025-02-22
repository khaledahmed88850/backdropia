class Wallpapers {
  String? status;
  String? approvedOn;

  Wallpapers({this.status, this.approvedOn});

  factory Wallpapers.fromJson(Map<String, dynamic> json) => Wallpapers(
    status: json['status'] as String?,
    approvedOn: json['approved_on'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'approved_on': approvedOn,
  };
}
