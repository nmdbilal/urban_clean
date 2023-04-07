import 'dart:convert';
import 'package:dio/dio.dart';
import '../UI/responses/categories_response.dart';
import '../UI/responses/error_response.dart';
import '../UI/responses/login_response.dart';

class ApiProvider{
  late Dio _dio;

  ApiProvider() {
    BaseOptions options = BaseOptions(
        connectTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 15000));
    _dio = Dio(options);
  }
  Future<LoginResponse> processLogin(String? email, String? password) async {
    try {
      Response response = await _dio.post(
          "https://admin-stage.myfitindia.com/api/v1/auth/login",
          data: {
            "phone": email,
            "password": password
          }
      );
      print("login ${response.data}");

      LoginResponse loginResponse =
      LoginResponse.fromJson(json.decode(response.toString()));
        print("message ${loginResponse.message}");


      return loginResponse;
    } catch (error) {
      LoginResponse loginResponse = LoginResponse();

       loginResponse.errorResponse = handleError(error);
      print("erororrrr ${loginResponse.errorResponse!.errors!.first.message}");

      return loginResponse;
    }
  }
  //
  // Future<CategoriesResponse> processHome() async {
  //
  //   try {
  //     Response response = await _dio.get(
  //       // "52.90.154.44:5001/api/getProductDetails"
  //       "https://a.walletbot.online/api/v1/home/initial-data"
  //     );
  //
  //     print("checkk ${response.data}");
  //
  //     CategoriesResponse categoriesResponse = CategoriesResponse.fromJson(json.decode(response.toString()));
  //     // HomeResponse homeResponse =
  //     // HomeResponse.fromJson(json.decode(response.toString()));
  //     // print("llllll ${categoriesResponse.data!.productDetail!.productName}");
  //     return categoriesResponse;
  //   } catch (error) {
  //     CategoriesResponse categoriesResponse = CategoriesResponse();
  //
  //     print(error);
  //     // categoriesResponse.errorResponse = handleError(error);
  //     return categoriesResponse;
  //   }
  // }

  Future<CategoriesResponse> processCategory() async {
    try {
      Response response = await _dio.get(
          "52.90.154.44:5001/api/getProductDetails"
      );
      print("category ${response.data}");


      CategoriesResponse categoriesResponse =
      CategoriesResponse.fromJson(json.decode(response.toString()));
      print("message ${categoriesResponse}");

      return categoriesResponse;
      // return response.data;
    } catch (error) {
      CategoriesResponse categoriesResponse = CategoriesResponse();

      categoriesResponse.errorResponse = handleError(error);
      // print("erororrrr ${categoriesResponse.errorResponse!.errors!.first.message}");

      return categoriesResponse;
    }
  }


  ErrorResponse handleError(Object error) {
    ErrorResponse errorResponse = ErrorResponse();
    Errors errorDescription = Errors();

    if (error is DioError) {
      DioError dioError = error;

      switch (dioError.type) {
        case DioErrorType.cancel:
          errorDescription.code = "0";
          errorDescription.message = "Request Cancelled";
          break;
        case DioErrorType.connectionTimeout:
          errorDescription.code = "522";
          errorDescription.message = "Connection Timeout";
          break;
        case DioErrorType.sendTimeout:
          errorDescription.code = "408";
          errorDescription.message = "Send Timeout";
          break;
        case DioErrorType.receiveTimeout:
          errorDescription.code = "408";
          errorDescription.message = "Receive Timeout";
          break;
        case DioErrorType.badResponse:
          if (error.response != null) {
            errorDescription.code = error.response!.statusCode!.toString();
            errorDescription.message = error.response!.statusCode == 500
                ? "Something went wrong"
                : error.response!.data["errors"][0]["message"];
          } else {
            errorDescription.code = "500";
            errorDescription.message = "Something went wrong";
          }
          break;
        case DioErrorType.unknown:
          errorDescription.code = "500";
          errorDescription.message = "Something went wrong";
          break;
      }
    }
    errorResponse.errors = [];
    errorResponse.errors!.add(errorDescription);
    return errorResponse;
  }
}