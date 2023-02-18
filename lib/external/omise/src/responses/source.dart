part of '../responses.dart';

/// Source API: please check https://www.omise.co/sources-api
class Source {
  String? object;
  String? id;
  bool? livemode;
  String? location;
  String? createdAt;
  String? type;
  String? flow;
  int? amount;
  String? currency;
  String? mobileNumber;
  String? phoneNumber;
  String? references;
  String? name;
  String? email;
  String? barcode;
  String? storeId;
  String? storeName;
  String? terminalId;
  String? installmentTerm;
  String? zeroInterestInstallments;
  String? scannableCode;

  Source(
      {this.object,
      this.id,
      this.livemode,
      this.location,
      this.createdAt,
      this.type,
      this.flow,
      this.amount,
      this.currency,
      this.mobileNumber,
      this.phoneNumber,
      this.references,
      this.name,
      this.email,
      this.barcode,
      this.storeId,
      this.storeName,
      this.terminalId,
      this.installmentTerm,
      this.zeroInterestInstallments,
      this.scannableCode});

  Source.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    livemode = json['livemode'];
    location = json['location'];
    createdAt = json['created_at'];
    type = json['type'];
    flow = json['flow'];
    amount = json['amount'];
    currency = json['currency'];
    mobileNumber = json['mobile_number'];
    phoneNumber = json['phone_number'];
    references = json['references'];
    name = json['name'];
    email = json['email'];
    barcode = json['barcode'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    terminalId = json['terminal_id'];
    installmentTerm = json['installment_term'];
    zeroInterestInstallments = json['zero_interest_installments'];
    scannableCode = json['scannable_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['object'] = object;
    data['id'] = id;
    data['livemode'] = livemode;
    data['location'] = location;
    data['created_at'] = createdAt;
    data['type'] = type;
    data['flow'] = flow;
    data['amount'] = amount;
    data['currency'] = currency;
    data['mobile_number'] = mobileNumber;
    data['phone_number'] = phoneNumber;
    data['references'] = references;
    data['name'] = name;
    data['email'] = email;
    data['barcode'] = barcode;
    data['store_id'] = storeId;
    data['store_name'] = storeName;
    data['terminal_id'] = terminalId;
    data['installment_term'] = installmentTerm;
    data['zero_interest_installments'] = zeroInterestInstallments;
    data['scannable_code'] = scannableCode;
    return data;
  }
}
