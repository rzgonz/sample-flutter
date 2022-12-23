class BaseRawMessage {
  String? humanMessage;

  BaseRawMessage({this.humanMessage});

  BaseRawMessage.fromJson(json) {
    humanMessage = json["human_message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["human_message"] = humanMessage;
    return map;
  }
}
