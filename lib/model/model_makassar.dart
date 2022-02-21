class ModelMakassar {
  int? id;
  String? mksr;
  String? latin;

  ModelMakassar(this.id, this.mksr, this.latin);

  ModelMakassar.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mksr = json['mksr'];
    latin = json['latin'];
  }
}
