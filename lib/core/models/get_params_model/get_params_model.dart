class GetParamsModel {
  int? page;
  int? perPage;
  String? query;
  String? orderBy;
  String? orientation;

  GetParamsModel({
    this.query,
    this.page = 1,
    this.perPage = 80,
    this.orderBy = 'latest',
    this.orientation = 'portrait',
  });

  factory GetParamsModel.fromJson(Map<String, dynamic> json) => GetParamsModel(
    query: json['query'],
    page: json['page'],
    perPage: json['per_page'],
    orderBy: json['order_by'],
    orientation: json['orientation'],
  );

  Map<String, dynamic> toJson() => {
    'query': query,
    'page': page,
    'per_page': perPage,
    'order_by': orderBy,
    'orientation': orientation,
  };
}
