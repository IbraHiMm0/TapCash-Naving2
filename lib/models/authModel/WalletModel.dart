class WalletModel {
  String? sId;
  int? balance;
  String? currency;
  Owner? owner;
  String? createdAt;
  String? updatedAt;
  int? iV;


  WalletModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    balance = json['balance'];
    currency = json['currency'];
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

}

class Owner {
  String? sId;
  String? name;
  String? email;
  String? ssid;
  String? phone;
  String? password;
  String? role;
  List<String>? children;
  List<String>? transactions;
  List<String>? visa;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? wallet;



  Owner.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    ssid = json['ssid'];
    phone = json['phone'];
    password = json['password'];
    role = json['role'];
    children = json['children'].cast<String>();
    transactions = json['transactions'].cast<String>();
    visa = json['visa'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    wallet = json['wallet'];
  }


}