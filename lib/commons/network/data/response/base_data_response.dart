abstract class BaseDataResponse {
  String? data;

  BaseDataResponse({this.data});

  BaseDataResponse.fromJson(json) {
    data = json;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["api_result_data"] = data;
    return map;
  }
}
