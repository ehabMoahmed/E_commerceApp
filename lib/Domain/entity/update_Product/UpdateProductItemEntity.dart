import 'ProductEntity.dart';

/// count : 3
/// _id : "668450a5ed0dc0016c717d4b"
/// product : {"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e997dc1175abc65ca0a1","title":"Woman Shawl","imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402838276-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428e997dc1175abc65ca0a1"}
/// price : 149

class UpdateProductItemEntity {
  UpdateProductItemEntity({
      this.count, 
      this.id, 
      this.product, 
      this.price,});

  UpdateProductItemEntity.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product = json['product'] != null ? ProductEntity.fromJson(json['product']) : null;
    price = json['price'];
  }
  int? count;
  String? id;
  ProductEntity? product;
  int? price;
UpdateProductItemEntity copyWith({  int? count,
  String? id,
  ProductEntity? product,
  int? price,
}) => UpdateProductItemEntity(  count: count ?? this.count,
  id: id ?? this.id,
  product: product ?? this.product,
  price: price ?? this.price,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['_id'] = id;
    if (product != null) {
      map['product'] = product?.toJson();
    }
    map['price'] = price;
    return map;
  }

}