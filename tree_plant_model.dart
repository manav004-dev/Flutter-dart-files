class TreePlantResponseModel {
  final dynamic responseCode;
  final String? message;
  final List<TreePlantModel>? treePlant; // Matches controller's expects

  TreePlantResponseModel({
    this.responseCode,
    this.message,
    this.treePlant,
  });

  factory TreePlantResponseModel.fromJson(Map<String, dynamic> json) {
    return TreePlantResponseModel(
      responseCode: json['responseCode'] ?? json['response_code'] ?? json['status'],
      message: json['message']?.toString(),
      treePlant: json['data'] != null
          ? List<TreePlantModel>.from(
        json['data'].map((x) => TreePlantModel.fromJson(x)),
      )
          : null,
    );
  }
}

class TreePlantModel {
  final dynamic id;
  final String? name;
  final String? scientificName;
  final String? image;
  final String? description;
  final String? category;

  TreePlantModel({
    this.id,
    this.name,
    this.scientificName,
    this.image,
    this.description,
    this.category,
  });

  factory TreePlantModel.fromJson(Map<String, dynamic> json) {
    return TreePlantModel(
      id: json['id'] ?? json['plant_id'],
      name: json['name']?.toString() ?? json['plant_name']?.toString(),
      scientificName: json['scientific_name']?.toString(),
      image: json['image']?.toString() ?? json['plant_image']?.toString(),
      description: json['description']?.toString(),
      category: json['category']?.toString(),
    );
  }
}
