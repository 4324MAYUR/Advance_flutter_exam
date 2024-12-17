class CovidDataModel {
  final String iso;
  final String name;

  CovidDataModel({
    required this.iso,
    required this.name,
  });

   factory CovidDataModel.fromMap(Map<String, dynamic> map) {
    return CovidDataModel(
      iso: map['iso'],
      name: map['name'],
    );
  }

   Map<String, dynamic> toMap() {
    return {
      'iso': iso,
      'name': name,
    };
  }
}
