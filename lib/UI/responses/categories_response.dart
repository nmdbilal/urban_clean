// class CategoryResponse {
//   bool? success;
//   int? status;
//   String? message;
//   List<Categories>? categories;
//
//   CategoryResponse({this.success, this.status, this.message, this.categories});
//
//   CategoryResponse.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     status = json['status'];
//     message = json['message'];
//     if (json['categories'] != null) {
//       categories = <Categories>[];
//       json['categories'].forEach((v) {
//         categories!.add(new Categories.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['success'] = this.success;
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.categories != null) {
//       data['categories'] = this.categories!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Categories {
//   int? id;
//   String? title;
//   String? subTitle;
//   String? imageBg;
//   List<SubCategories>? subCategories;
//
//   Categories(
//       {this.id, this.title, this.subTitle, this.imageBg, this.subCategories});
//
//   Categories.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     subTitle = json['sub_title'];
//     imageBg = json['image_bg'];
//     if (json['sub_categories'] != null) {
//       subCategories = <SubCategories>[];
//       json['sub_categories'].forEach((v) {
//         subCategories!.add(new SubCategories.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['sub_title'] = this.subTitle;
//     data['image_bg'] = this.imageBg;
//     if (this.subCategories != null) {
//       data['sub_categories'] =
//           this.subCategories!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class SubCategories {
//   int? subId;
//   String? categoryName;
//
//   SubCategories({this.subId, this.categoryName});
//
//   SubCategories.fromJson(Map<String, dynamic> json) {
//     subId = json['sub_id'];
//     categoryName = json['category_name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['sub_id'] = this.subId;
//     data['category_name'] = this.categoryName;
//     return data;
//   }
// }

class CategoryResponse {
  bool? success;
  int? status;
  String? message;
  List<Categories>? categories;

  CategoryResponse({this.success, this.status, this.message, this.categories});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? title;
  String? subTitle;
  String? imageBg;
  List<SubCategories>? subCategories;

  Categories(
      {this.id, this.title, this.subTitle, this.imageBg, this.subCategories});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['sub_title'];
    imageBg = json['image_bg'];
    if (json['sub_categories'] != null) {
      subCategories = <SubCategories>[];
      json['sub_categories'].forEach((v) {
        subCategories!.add(new SubCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['image_bg'] = this.imageBg;
    if (this.subCategories != null) {
      data['sub_categories'] =
          this.subCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategories {
  int? subId;
  String? categoryName;

  SubCategories({this.subId, this.categoryName});

  SubCategories.fromJson(Map<String, dynamic> json) {
    subId = json['sub_id'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_id'] = this.subId;
    data['category_name'] = this.categoryName;
    return data;
  }
}

