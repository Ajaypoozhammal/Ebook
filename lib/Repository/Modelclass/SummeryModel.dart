class SummeryModel {
  SummeryModel({
      this.summary,});

  SummeryModel.fromJson(dynamic json) {
    summary = json['summary'];
  }
  String? summary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['summary'] = summary;
    return map;
  }

}