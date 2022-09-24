class ProductModel {
  int? id;
  int? user;
  String? brand;
  String? model;
  int? storage;
  String? color;
  String? battery;
  String? screenSize;
  String? camera;
  String? description;
  double? price;
  bool? negotiable;
  String? image1;
  String? image2;
  String? image3;
  String? image4;

  ProductModel(
      {this.id,
      this.user,
      this.brand,
      this.model,
      this.storage,
      this.color,
      this.battery,
      this.screenSize,
      this.camera,
      this.description,
      this.price,
      this.negotiable,
      this.image1,
      this.image2,
      this.image3,
      this.image4});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    brand = json['brand'];
    model = json['model'];
    storage = json['storage'];
    color = json['color'];
    battery = json['battery'];
    screenSize = json['screen_size'];
    camera = json['camera'];
    description = json['description'];
    price = json['price'];
    negotiable = json['negotiable'];
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    image4 = json['image4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['storage'] = this.storage;
    data['color'] = this.color;
    data['battery'] = this.battery;
    data['screen_size'] = this.screenSize;
    data['camera'] = this.camera;
    data['description'] = this.description;
    data['price'] = this.price;
    data['negotiable'] = this.negotiable;
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['image4'] = this.image4;
    return data;
  }
}
