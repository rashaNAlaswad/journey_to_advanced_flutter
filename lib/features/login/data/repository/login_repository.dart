import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/login_request_body.dart';
import '../model/login_response.dart';


class LoginRepository {
  final ApiService apiService;

  LoginRepository(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
    try{
      return ApiResult.success(await apiService.login(loginRequestBody));
    }catch(e){
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
