class ModelBugis {
  int? id;
  String? bugis;
  String? latin;

  ModelBugis(this.id, this.bugis, this.latin);

  ModelBugis.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bugis = json['bugis'];
    latin = json['latin'];
  }
}
