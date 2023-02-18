part of '../responses.dart';

/// Card API: please check https://www.omise.co/cards-api
class Card {
  String? object;
  String? id;
  bool? livemode;
  String? location;
  String? createdAt;
  bool? deleted;
  String? street1;
  String? street2;
  String? city;
  String? state;
  String? postalCode;
  String? country;
  String? phoneNumber;
  String? financing;
  String? bank;
  String? firstDigits;
  String? lastDigits;
  String? brand;
  int? expirationMonth;
  int? expirationYear;
  String? fingerprint;
  String? name;
  @Deprecated(
      "This attribute is deprecated. Please check https://www.omise.co/cards-api")
  bool? securityCodeCheck;

  Card(
      {this.object,
      this.id,
      this.livemode,
      this.location,
      this.createdAt,
      this.deleted,
      this.street1,
      this.street2,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.phoneNumber,
      this.financing,
      this.bank,
      this.firstDigits,
      this.lastDigits,
      this.brand,
      this.expirationMonth,
      this.expirationYear,
      this.fingerprint,
      this.name,
      this.securityCodeCheck});

  Card.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    livemode = json['livemode'];
    location = json['location'];
    createdAt = json['created_at'];
    deleted = json['deleted'];
    street1 = json['street1'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postal_code'];
    country = json['country'];
    phoneNumber = json['phone_number'];
    financing = json['financing'];
    bank = json['bank'];
    firstDigits = json['first_digits'];
    lastDigits = json['last_digits'];
    brand = json['brand'];
    expirationMonth = json['expiration_month'];
    expirationYear = json['expiration_year'];
    fingerprint = json['fingerprint'];
    name = json['name'];
    // ignore: deprecated_member_use_from_same_package
    securityCodeCheck = json['security_code_check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['object'] = object;
    data['id'] = id;
    data['livemode'] = livemode;
    data['location'] = location;
    data['created_at'] = createdAt;
    data['deleted'] = deleted;
    data['street1'] = street1;
    data['street2'] = street2;
    data['city'] = city;
    data['state'] = state;
    data['postal_code'] = postalCode;
    data['country'] = country;
    data['phone_number'] = phoneNumber;
    data['financing'] = financing;
    data['bank'] = bank;
    data['first_digits'] = firstDigits;
    data['last_digits'] = lastDigits;
    data['brand'] = brand;
    data['expiration_month'] = expirationMonth;
    data['expiration_year'] = expirationYear;
    data['fingerprint'] = fingerprint;
    data['name'] = name;
    // ignore: deprecated_member_use_from_same_package
    data['security_code_check'] = securityCodeCheck;
    return data;
  }
}
