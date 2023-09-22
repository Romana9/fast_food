import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  int logButton = 0;

  logButtonIndex(index) {
    logButton = index;
    emit(LogButtonIndex());
  }

  bool isSecure = true;

  isSecureIcon(isSecuree) {
    isSecure = isSecuree;
    emit(IsSecureIcon());
  }

  bool isSecure2 = true;

  isSecureIcon2(isSecuree) {
    isSecure2 = isSecuree;
    emit(IsSecureIcon());
  }

  bool isSecure3 = true;

  isSecureIcon3(isSecuree) {
    isSecure3 = isSecuree;
    emit(IsSecureIcon());
  }

  bool isSearching = false;

  isSearchingFun(isSearchingg) {
    isSearching = isSearchingg;
    emit(IsSearching());
  }

  List<Map> cartList = [
    {
      "image": const AssetImage("assets/img/cartitem1.png"),
      "title": "Fried Rice",
      "subTitle": "Pista House",
      "price": "100 \$",
      "amount": "1",
    },
    {
      "image": const AssetImage("assets/img/cartitem2.png"),
      "title": "Jollof Rice",
      "subTitle": "Suhani’s Stop",
      "price": "150 \$",
      "amount": "2",
    },
    {
      "image": const AssetImage("assets/img/cartitem1.png"),
      "title": "Biryani",
      "subTitle": "Pista House",
      "price": "70 \$",
      "amount": "1",
    },
  ];
  removeCartList() {
    cartList.removeRange(0, cartList.length);
    emit(RemoveCartList());
  }
}
