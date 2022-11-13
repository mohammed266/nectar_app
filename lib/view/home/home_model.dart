class Product {
  Products? products;
  Product({this.products});
  Product.fromJson(Map<String, dynamic> json) {
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    return data;
  }
}

class Products {
  P1? p1;
  P1? p2;
  Products({this.p1, this.p2});
  Products.fromJson(Map<String, dynamic> json) {
    p1 = json['p1'] != null ? new P1.fromJson(json['p1']) : null;
    p2 = json['p2'] != null ? new P1.fromJson(json['p2']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.p1 != null) {
      data['p1'] = this.p1!.toJson();
    }
    if (this.p2 != null) {
      data['p2'] = this.p2!.toJson();
    }
    return data;
  }
}

class P1 {
  String? description;
  String? image;
  double? price;
  String? title;

  P1({this.description, this.image, this.price, this.title});

  P1.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    image = json['image'];
    price = json['price'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    data['title'] = this.title;
    return data;
  }
}
