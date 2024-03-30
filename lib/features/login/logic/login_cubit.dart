import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_clinic_team13/features/login/data/login_model.dart';
import '../../../core/routing/api_service.dart';
import 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel ? loginModel;

  void userLogin({
    required String email,
    required String password,
  }){
    emit(LoginLoadingState());
    ApiService.post(
        endPoint: '/auth/patient/login',
        data: {
          'email':email,
          'password':password,
        }
    ).then((value) {
      print(value);
      loginModel = LoginModel.fromJson(value);
      emit(LoginSuccessState(loginModel!));
    }
    ).catchError((error){
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}
