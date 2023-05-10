class AuthModel {
  dynamic message;
  Data? data;
  dynamic token;



  AuthModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }


}

class Data {
  dynamic userId;
  dynamic name;
  dynamic email;
  dynamic role;
  Wallet ?wallet;
  dynamic ssid;
  dynamic password;
  dynamic phone;
  // List<null>? children;
  // List<null>? transactions;



  Data.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    wallet =
    json['wallet'] != null ? new Wallet.fromJson(json['wallet']) : null;
    ssid = json['ssid'];
    password = json['password'];
    phone = json['phone'];
    // if (json['children'] != null) {
    //   children = <Null>[];
    //   json['children'].forEach((v) {
    //     children!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['transactions'] != null) {
    //   transactions = <Null>[];
    //   json['transactions'].forEach((v) {
    //     transactions!.add(new .fromJson(v));
    //   });
    // }
  }


}
class Wallet {
  dynamic sId;
  int? balance;
  dynamic currency;
  dynamic owner;
  dynamic createdAt;
  dynamic updatedAt;
  int? iV;



  Wallet.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    balance = json['balance'];
    currency = json['currency'];
    owner = json['owner'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }


}

class Children {
  dynamic sId;
  dynamic name;
  dynamic email;
  dynamic ssid;
  dynamic phone;
  dynamic password;
 dynamic role;
  List<String>? children;
  List<Null>? transactions;
  List<Null>? visa;
  String? createdAt;
  String? updatedAt;
  int? iV;
  dynamic wallet;



  Children.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    ssid = json['ssid'];
    phone = json['phone'];
    password = json['password'];
    role = json['role'];
    children = json['children'].cast<String>();
    // if (json['transactions'] != null) {
    //   transactions = <Null>[];
    //   json['transactions'].forEach((v) {
    //     transactions!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['visa'] != null) {
    //   visa = <Null>[];
    //   json['visa'].forEach((v) {
    //     visa!.add(new Null.fromJson(v));
    //   });
    // }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    wallet = json['wallet'];
  }


}