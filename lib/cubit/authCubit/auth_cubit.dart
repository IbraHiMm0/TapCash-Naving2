import 'package:bloc/bloc.dart';
import 'package:demo/cubit/authCubit/auth_state.dart';
import 'package:demo/models/authModel/WalletModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../dio_helper/DioHelper.dart';
import '../../dio_helper/end_points.dart';

import '../../models/authModel/auth_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  bool isPass=true;
  IconData suffix =Icons.visibility_off_outlined;

  void changePass (){
    isPass = !isPass;
    suffix =isPass? Icons.visibility_off_outlined:Icons.visibility_outlined;
    emit(ChangePassState());
  }


  AuthModel? authModel;


 void PostDataLogin({required String NatinalID,required String PassWoard}){
   emit(LoadingState());
   DioHelper.postData(url:LOGIN,data: {
     "ssid":NatinalID,
     "password":PassWoard
   }).then((value) {
print(NatinalID);
authModel=AuthModel.fromJson(value.data);
     print("suc");
     print(value.data);

     print(authModel?.data?.wallet?.balance);
      balance=authModel?.data?.wallet?.balance ;

print(balance);

     emit(SuccessState(authModel!));


   }).catchError((e){
     emit(ErrorState(e.toString()));
     print(e.toString());
   });
 }

 dynamic balance;
 WalletModel ?walletModel;
 void GetDataWallet(){
   DioHelper.postData(url:'/api/v1/wallet').then((value){
     walletModel=WalletModel.fromJson(value.data);
     print(value.data);
     emit(WalletSuccessState(walletModel!));
   }).catchError((e){
     emit(WalletErrorState(e.toString()));
   });
 }


  void PostRegister({dynamic fName,dynamic lName,dynamic NaId,dynamic E_mail,dynamic Phone,dynamic pass, dynamic cofPss}){
    DioHelper.postData(url:'/api/v1/auth/signup',data: {
      "name":fName,
      "email":E_mail,
      "ssid":NaId,
      "password":pass,
      "confirmPassword":cofPss,
      "phone":Phone,
"role":"child",
      "parent":NaId
    }).then((value){
      authModel=AuthModel.fromJson(value.data);
      print(value.data);
      emit(SignUpSuccessState(authModel!));
    }).catchError((e){
      emit(SignUpErrorState(e.toString()));
    });
  }
  // void PostDataSignUp({dynamic name,dynamic lastnme,dynamic NathId,dynamic E_Mail,dynamic Phone,dynamic pass}){
  //
  //   emit(LoadingState());
  //   DioHelper.postData(url:LOGIN,data: {
  //     "name":NatinalID,
  //     "password":PassWoard
  //   }).then((value) {
  //
  //     print("suc");
  //     print(value.data);
  //     authModel=AuthModel.fromJson(value.data);
  //
  //
  //     emit(SuccessState(authModel!));
  //
  //   }).catchError((e){
  //     emit(ErrorState(e.toString()));
  //     print(e.toString());
  //   });
  // }
}
