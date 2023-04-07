import 'error_response.dart';

class LoginResponse {
  int? httpCode;
  String? message;
  Data? data;
  ErrorResponse? errorResponse;

  LoginResponse({this.httpCode, this.message, this.data, errorResponse});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    httpCode = json['http_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    errorResponse = json['errors'] != null ? ErrorResponse.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['http_code'] = this.httpCode;
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
  int? id;
  String? name;
  String? fName;
  String? lName;
  String? phone;
  String? image;
  String? email;
  Null? emailVerifiedAt;
  String? dateOfBirth;
  String? gender;
  int? height;
  int? weight;
  String? createdAt;
  String? updatedAt;
  Null? streetAddress;
  Null? country;
  Null? state;
  Null? city;
  Null? zip;
  Null? houseNo;
  Null? apartmentNo;
  Null? cmFirebaseToken;
  int? isActive;
  Null? paymentCardLastFour;
  Null? paymentCardBrand;
  Null? paymentCardFawryToken;
  Null? loginMedium;
  Null? socialId;
  int? isPhoneVerified;
  String? temporaryToken;
  int? isEmailVerified;
  int? trainerCommission;
  String? token;

  Data(
      {this.id,
        this.name,
        this.fName,
        this.lName,
        this.phone,
        this.image,
        this.email,
        this.emailVerifiedAt,
        this.dateOfBirth,
        this.gender,
        this.height,
        this.weight,
        this.createdAt,
        this.updatedAt,
        this.streetAddress,
        this.country,
        this.state,
        this.city,
        this.zip,
        this.houseNo,
        this.apartmentNo,
        this.cmFirebaseToken,
        this.isActive,
        this.paymentCardLastFour,
        this.paymentCardBrand,
        this.paymentCardFawryToken,
        this.loginMedium,
        this.socialId,
        this.isPhoneVerified,
        this.temporaryToken,
        this.isEmailVerified,
        this.trainerCommission,
        this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    image = json['image'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    height = json['height'];
    weight = json['weight'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    streetAddress = json['street_address'];
    country = json['country'];
    state = json['state'];
    city = json['city'];
    zip = json['zip'];
    houseNo = json['house_no'];
    apartmentNo = json['apartment_no'];
    cmFirebaseToken = json['cm_firebase_token'];
    isActive = json['is_active'];
    paymentCardLastFour = json['payment_card_last_four'];
    paymentCardBrand = json['payment_card_brand'];
    paymentCardFawryToken = json['payment_card_fawry_token'];
    loginMedium = json['login_medium'];
    socialId = json['social_id'];
    isPhoneVerified = json['is_phone_verified'];
    temporaryToken = json['temporary_token'];
    isEmailVerified = json['is_email_verified'];
    trainerCommission = json['trainer_commission'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['street_address'] = this.streetAddress;
    data['country'] = this.country;
    data['state'] = this.state;
    data['city'] = this.city;
    data['zip'] = this.zip;
    data['house_no'] = this.houseNo;
    data['apartment_no'] = this.apartmentNo;
    data['cm_firebase_token'] = this.cmFirebaseToken;
    data['is_active'] = this.isActive;
    data['payment_card_last_four'] = this.paymentCardLastFour;
    data['payment_card_brand'] = this.paymentCardBrand;
    data['payment_card_fawry_token'] = this.paymentCardFawryToken;
    data['login_medium'] = this.loginMedium;
    data['social_id'] = this.socialId;
    data['is_phone_verified'] = this.isPhoneVerified;
    data['temporary_token'] = this.temporaryToken;
    data['is_email_verified'] = this.isEmailVerified;
    data['trainer_commission'] = this.trainerCommission;
    data['token'] = this.token;
    return data;
  }
}