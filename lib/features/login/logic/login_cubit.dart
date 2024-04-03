import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/routing/api_service.dart';
import '../data/login_model.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());



}
