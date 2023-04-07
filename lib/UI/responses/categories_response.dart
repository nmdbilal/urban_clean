import 'error_response.dart';

class CategoriesResponse {
  bool? success;
  int? status;
  String? message;
  Data? data;
  ErrorResponse? errorResponse;

  CategoriesResponse({this.success, this.status, this.message, this.data,errorResponse});

  CategoriesResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    errorResponse = json['errors'] != null ? ErrorResponse.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if(errorResponse != null){
      data['errors'] = errorResponse!.toJson();
    }
    return data;
  }
}

class Data {
  ProductDetail? productDetail;

  Data({this.productDetail});

  Data.fromJson(Map<String, dynamic> json) {
    productDetail = json['product_detail'] != null
        ? new ProductDetail.fromJson(json['product_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productDetail != null) {
      data['product_detail'] = this.productDetail!.toJson();
    }
    return data;
  }
}

class ProductDetail {
  List<String>? size;
  List<Model>? model;
  String? productName;
  String? productDescription;
  PriceDetail? priceDetail;
  ReviewAndRatings? reviewAndRatings;

  ProductDetail(
      {this.size,
        this.model,
        this.productName,
        this.productDescription,
        this.priceDetail,
        this.reviewAndRatings});

  ProductDetail.fromJson(Map<String, dynamic> json) {
    size = json['size'].cast<String>();
    if (json['model'] != null) {
      model = <Model>[];
      json['model'].forEach((v) {
        model!.add(new Model.fromJson(v));
      });
    }
    productName = json['product_name'];
    productDescription = json['product_description'];
    priceDetail = json['price_detail'] != null
        ? new PriceDetail.fromJson(json['price_detail'])
        : null;
    reviewAndRatings = json['review_and_ratings'] != null
        ? new ReviewAndRatings.fromJson(json['review_and_ratings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    if (this.model != null) {
      data['model'] = this.model!.map((v) => v.toJson()).toList();
    }
    data['product_name'] = this.productName;
    data['product_description'] = this.productDescription;
    if (this.priceDetail != null) {
      data['price_detail'] = this.priceDetail!.toJson();
    }
    if (this.reviewAndRatings != null) {
      data['review_and_ratings'] = this.reviewAndRatings!.toJson();
    }
    return data;
  }
}

class Model {
  int? modelId;
  List<String>? modelImages;

  Model({this.modelId, this.modelImages});

  Model.fromJson(Map<String, dynamic> json) {
    modelId = json['model_id'];
    modelImages = json['model_images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model_id'] = this.modelId;
    data['model_images'] = this.modelImages;
    return data;
  }
}

class PriceDetail {
  int? actualPrice;
  int? discountedPrice;
  String? commission;
  String? currency;

  PriceDetail(
      {this.actualPrice, this.discountedPrice, this.commission, this.currency});

  PriceDetail.fromJson(Map<String, dynamic> json) {
    actualPrice = json['actual_price'];
    discountedPrice = json['discounted_price'];
    commission = json['commission'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actual_price'] = this.actualPrice;
    data['discounted_price'] = this.discountedPrice;
    data['commission'] = this.commission;
    data['currency'] = this.currency;
    return data;
  }
}

class ReviewAndRatings {
  double? avgRating;
  int? ratingCount;
  int? reviewCount;
  List<RecentReviews>? recentReviews;

  ReviewAndRatings(
      {this.avgRating, this.ratingCount, this.reviewCount, this.recentReviews});

  ReviewAndRatings.fromJson(Map<String, dynamic> json) {
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count'];
    reviewCount = json['review_count'];
    if (json['recent_reviews'] != null) {
      recentReviews = <RecentReviews>[];
      json['recent_reviews'].forEach((v) {
        recentReviews!.add(new RecentReviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avg_rating'] = this.avgRating;
    data['rating_count'] = this.ratingCount;
    data['review_count'] = this.reviewCount;
    if (this.recentReviews != null) {
      data['recent_reviews'] =
          this.recentReviews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecentReviews {
  int? userId;
  String? userName;
  double? userRating;
  String? date;
  String? review;

  RecentReviews(
      {this.userId, this.userName, this.userRating, this.date, this.review});

  RecentReviews.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    userRating = json['user_rating'];
    date = json['date'];
    review = json['review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_rating'] = this.userRating;
    data['date'] = this.date;
    data['review'] = this.review;
    return data;
  }
}
//
// class CategoriesResponse {
//   List<Countries>? countries;
//   List<Destinations>? destinations;
//   List<Currencies>? currencies;
//   List<String>? areas;
//
//   CategoriesResponse(
//       {this.countries, this.destinations, this.currencies, this.areas});
//
//   CategoriesResponse.fromJson(Map<String, dynamic> json) {
//     if (json['countries'] != null) {
//       countries = <Countries>[];
//       json['countries'].forEach((v) {
//         countries!.add(new Countries.fromJson(v));
//       });
//     }
//     if (json['destinations'] != null) {
//       destinations = <Destinations>[];
//       json['destinations'].forEach((v) {
//         destinations!.add(new Destinations.fromJson(v));
//       });
//     }
//     if (json['currencies'] != null) {
//       currencies = <Currencies>[];
//       json['currencies'].forEach((v) {
//         currencies!.add(new Currencies.fromJson(v));
//       });
//     }
//     areas = json['areas'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.countries != null) {
//       data['countries'] = this.countries!.map((v) => v.toJson()).toList();
//     }
//     if (this.destinations != null) {
//       data['destinations'] = this.destinations!.map((v) => v.toJson()).toList();
//     }
//     if (this.currencies != null) {
//       data['currencies'] = this.currencies!.map((v) => v.toJson()).toList();
//     }
//     data['areas'] = this.areas;
//     return data;
//   }
// }
//
// class Countries {
//   String? sId;
//   String? countryName;
//   String? isocode;
//   String? phonecode;
//   String? flag;
//   String? currencySymbol;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//   bool? isDeleted;
//
//   Countries(
//       {this.sId,
//         this.countryName,
//         this.isocode,
//         this.phonecode,
//         this.flag,
//         this.currencySymbol,
//         this.createdAt,
//         this.updatedAt,
//         this.iV,
//         this.isDeleted});
//
//   Countries.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     countryName = json['countryName'];
//     isocode = json['isocode'];
//     phonecode = json['phonecode'];
//     flag = json['flag'];
//     currencySymbol = json['currencySymbol'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//     isDeleted = json['isDeleted'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['countryName'] = this.countryName;
//     data['isocode'] = this.isocode;
//     data['phonecode'] = this.phonecode;
//     data['flag'] = this.flag;
//     data['currencySymbol'] = this.currencySymbol;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     data['isDeleted'] = this.isDeleted;
//     return data;
//   }
// }
//
// class Destinations {
//   String? sId;
//   String? country;
//   String? name;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//   bool? isDeleted;
//   String? image;
//
//   Destinations(
//       {this.sId,
//         this.country,
//         this.name,
//         this.createdAt,
//         this.updatedAt,
//         this.iV,
//         this.isDeleted,
//         this.image});
//
//   Destinations.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     country = json['country'];
//     name = json['name'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//     isDeleted = json['isDeleted'];
//     image = json['image'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['country'] = this.country;
//     data['name'] = this.name;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     data['isDeleted'] = this.isDeleted;
//     data['image'] = this.image;
//     return data;
//   }
// }
//
// class Currencies {
//   String? sId;
//   Country? country;
//   String? currencyName;
//   String? currencySymbol;
//   String? isocode;
//   double? conversionRate;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//
//   Currencies(
//       {this.sId,
//         this.country,
//         this.currencyName,
//         this.currencySymbol,
//         this.isocode,
//         this.conversionRate,
//         this.createdAt,
//         this.updatedAt,
//         this.iV});
//
//   Currencies.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     country =
//     json['country'] != null ? new Country.fromJson(json['country']) : null;
//     currencyName = json['currencyName'];
//     currencySymbol = json['currencySymbol'];
//     isocode = json['isocode'];
//     conversionRate = json['conversionRate'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     if (this.country != null) {
//       data['country'] = this.country!.toJson();
//     }
//     data['currencyName'] = this.currencyName;
//     data['currencySymbol'] = this.currencySymbol;
//     data['isocode'] = this.isocode;
//     data['conversionRate'] = this.conversionRate;
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     data['__v'] = this.iV;
//     return data;
//   }
// }
//
// class Country {
//   String? sId;
//   String? countryName;
//   String? flag;
//
//   Country({this.sId, this.countryName, this.flag});
//
//   Country.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     countryName = json['countryName'];
//     flag = json['flag'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['countryName'] = this.countryName;
//     data['flag'] = this.flag;
//     return data;
//   }
// }
