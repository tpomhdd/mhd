
class Products {

  String? name;
  String? description;
  String? category;
  String? originated;
  String? price;
  String? quantity;
  String? location;
  String? productID;

  Products(
      {
        this.name,
        this.description,
        this.category,
        this.originated,
        this.price,
        this.quantity,
        this.location,
        this.productID});

 factory Products.fromJson( json) {
return Products(
    name : json['name'],
    description : json['description'],
    category : json['category'],
originated : json['originated'],
price : json['price'],
quantity : json['quantity'],
productID : json['productID'],
location : json['location'],

);
  }

/*
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['description'] = this.description;
    data['category'] = this.category;
    data['originated'] = this.originated;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['location'] = this.location;
    data['productID'] = this.productID;
    return data;
  }
*/
}