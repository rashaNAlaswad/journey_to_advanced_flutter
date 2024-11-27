import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import "../models/sign_up_request_body.dart";
import '../models/sign_up_response.dart';

class SignupRepository {
  final ApiService apiService;

  SignupRepository(this.apiService);

  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      return ApiResult.success(await apiService.signup(signUpRequestBody));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
