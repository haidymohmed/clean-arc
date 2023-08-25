class MyData {
  bool? ok;
  String? message;
  String? data;

  MyData({this.ok, this.message, this.data});

  MyData.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ok'] = this.ok;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }
}