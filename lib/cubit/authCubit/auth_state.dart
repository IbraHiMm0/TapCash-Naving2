
import 'package:demo/models/authModel/WalletModel.dart';
import 'package:demo/models/authModel/auth_model.dart';

abstract class AuthState{}

class InitialState extends AuthState{}
class LoadingState extends AuthState{}
class SuccessState extends AuthState{
  final AuthModel authModel;
  SuccessState(this.authModel);
}
class ErrorState extends AuthState{
  final String erorr;
  ErrorState(this.erorr);
}
class GetDataWalletState extends AuthState{}
class ChangePassState extends AuthState{}


class WalletInitialState extends AuthState{}
class WalletLoadingState extends AuthState{}
class WalletSuccessState extends AuthState{
  final WalletModel walletModel;
  WalletSuccessState(this.walletModel);
}
class WalletErrorState extends AuthState{
  final String erorr;
  WalletErrorState(this.erorr);
}

class SignUpInitialState extends AuthState{}
class SignUpLoadingState extends AuthState{}
class SignUpSuccessState extends AuthState{
  final AuthModel registerModel;
  SignUpSuccessState(this.registerModel);
}
class SignUpErrorState extends AuthState{
  final String erorr;
  SignUpErrorState(this.erorr);
}